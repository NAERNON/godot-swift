
extension Double {
    public func isApproximatelyEqual(to other: Double) -> Bool {
        _isEqualApprox(a: self, b: other)
    }
    
    public var isApproximatelyZero: Bool {
        _isZeroApprox(self)
    }
    
    public var stepDecimals: Int {
        _stepDecimals(self)
    }
    
    public func cubicInterpolated(to other: Double, pre: Double, post: Double, weight: Double) -> Double {
        _cubicInterpolate(from: self, to: other, pre: pre, post: post, weight: weight)
    }
    
    public func cubicInterpolatedAngle(to other: Double, pre: Double, post: Double, weight: Double) -> Double {
        _cubicInterpolateAngle(from: self, to: other, pre: pre, post: post, weight: weight)
    }
    
    public func cubicInterpolatedInTime(to other: Double, pre: Double, post: Double, weight: Double, toT: Double, preT: Double, postT: Double) -> Double {
        _cubicInterpolateInTime(from: self, to: other, pre: pre, post: post, weight: weight, toT: toT, preT: preT, postT: postT)
    }
    
    public func cubicInterpolatedAngleInTime(to other: Double, pre: Double, post: Double, weight: Double, toT: Double, preT: Double, postT: Double) -> Double {
        _cubicInterpolateAngleInTime(from: self, to: other, pre: pre, post: post, weight: weight, toT: toT, preT: preT, postT: postT)
    }
    
    public func bezierInterpolated(control1: Double, control2: Double, end: Double, t: Double) -> Double {
        _bezierInterpolate(start: self, control1: control1, control2: control2, end: end, t: t)
    }
    
    public func bezierDerivatived(control1: Double, control2: Double, end: Double, t: Double) -> Double {
        _bezierDerivative(start: self, control1: control1, control2: control2, end: end, t: t)
    }
    
    public func remap(istart: Double, istop: Double, ostart: Double, ostop: Double) -> Double {
        _remap(value: self, istart: istart, istop: istop, ostart: ostart, ostop: ostop)
    }
    
    public func smoothstep(to other: Double, x: Double) -> Double {
        _smoothstep(from: self, to: other, x: x)
    }
    
    public func move(toward other: Double, delta: Double) -> Double {
        _moveToward(from: self, to: other, delta: delta)
    }
    
    public var degToRad: Double {
        _degToRad(deg: self)
    }
    
    public var radToDeg: Double {
        _radToDeg(rad: self)
    }
    
    public var linearToDB: Double {
        _linearToDb(lin: self)
    }
    
    public var dbToLinear: Double {
        _dbToLinear(db: self)
    }
}
