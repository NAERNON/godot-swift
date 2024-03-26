import SwiftSyntax

extension File {
    final class SyntaxRewriter: SwiftSyntax.SyntaxRewriter {
        private var isRoot = true
        
        override func visit(_ node: FunctionDeclSyntax) -> DeclSyntax {
            var node = node
            node.signature = visit(node.signature)
            
            var attributes = node.attributes
            
            var attributeIndex = attributes.startIndex
            while attributeIndex < attributes.endIndex {
                let newAttribute = attributes[attributeIndex]
                    .with(\.trailingTrivia, .newline)
                attributes[attributeIndex] = newAttribute
                
                attributeIndex = attributes.index(after: attributeIndex)
            }
            
            node.attributes = attributes
            
            return DeclSyntax(node)
        }
        
        override func visit(_ node: FunctionParameterClauseSyntax) -> FunctionParameterClauseSyntax {
            var result = node
            
            let parameters = node.parameters
            if !parameters.isEmpty {
                var parameterIndex = parameters.startIndex
                while parameterIndex < parameters.endIndex {
                    let newParameter = parameters[parameterIndex]
                        .with(\.leadingTrivia, .newline)
                    result.parameters[parameterIndex] = newParameter
                    
                    parameterIndex = parameters.index(after: parameterIndex)
                }
                
                result.rightParen.leadingTrivia = .newline
            }
            
            return result
        }
        
        override func visit(_ node: MemberBlockItemListSyntax) -> MemberBlockItemListSyntax {
            var result = node
            
            var index = result.startIndex
            while index != result.endIndex {
                var member = visit(result[index])
                
                if index != result.startIndex,
                   !member.decl.is(EnumCaseDeclSyntax.self)
                {
                    member = member
                        .with(\.leadingTrivia, .newlines(2))
                }
                
                result[index] = member
                index = result.index(after: index)
            }
            
            return result
        }
        
        override func visit(_ node: CodeBlockItemListSyntax) -> CodeBlockItemListSyntax {
            let isRoot = self.isRoot
            self.isRoot = false
            
            var result = node
            
            var index = result.startIndex
            while index != result.endIndex {
                var codeBlock = visit(result[index])
                
                if isRoot,
                   index != result.startIndex
                {
                    codeBlock = codeBlock
                        .with(\.leadingTrivia, .newlines(2))
                }
                
                result[index] = codeBlock
                index = result.index(after: index)
            }
            
            return result
        }
    }
}
