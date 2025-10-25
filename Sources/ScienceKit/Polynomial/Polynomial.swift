import Foundation

public struct Polynomial {

    public var coefficients: [Double]

    public init(_ coefficients: [Double]) {
        self.coefficients = coefficients
    }

    public var degree: Int {
        coefficients.count - 1
    }

    public func evaluate(at x: Double) -> Double {
        var result: Double = 0.0
        var power: Double = 1.0
        for coefficient in coefficients {
            result += coefficient * power
            power *= x
        }
        return result
    }

    public func derivative() -> Polynomial {
        guard coefficients.count > 1 else {
            return Polynomial([0.0]) // derivative of constant = 0
        }
        let derivedCoeffs = coefficients.enumerated().dropFirst().map { (i, coeff) in
            Double(i) * coeff
        }
        return Polynomial(derivedCoeffs)
    }

    public func integral(constant: Double = 0.0) -> Polynomial {
        var integratedCoeffs = [constant]
        integratedCoeffs += coefficients.enumerated().map { (i, coeff) in
            coeff / Double(i + 1)
        }
        return Polynomial(integratedCoeffs)
    }

    public func roots() -> [Double] {
        switch degree {
        case 1:
            // ax + b = 0 → x = -b / a
            let a: Double = coefficients[1]
            let b: Double = coefficients[0]
            guard a != 0 else { return [] }
            return [-b / a]
            
        case 2:
            // ax² + bx + c = 0
            let a: Double = coefficients[2]
            let b: Double = coefficients[1]
            let c: Double = coefficients[0]
            guard a != 0 else { return Polynomial([b, c]).roots() }
            
            let discriminant: Double = b * b - 4 * a * c
            if discriminant < 0 { return [] }
            if discriminant == 0 {
                return [-b / (2 * a)]
            } else {
                let sqrtD: Double = sqrt(discriminant)
                return [(-b + sqrtD) / (2 * a), (-b - sqrtD) / (2 * a)]
            }
            
        case 3:
            // Cubic: ax³ + bx² + cx + d = 0
            let a: Double = coefficients[3]
            let b: Double = coefficients[2]
            let c: Double = coefficients[1]
            let d: Double = coefficients[0]
            guard a != 0 else { return Polynomial([b, c, d]).roots() }
            
            // Normalize coefficients
            let A: Double = b / a
            let B: Double = c / a
            let C: Double = d / a
            
            // Depressed cubic: t³ + p t + q = 0
            let p: Double = B - A * A / 3.0
            let q: Double = 2 * pow(A, 3) / 27.0 - A * B / 3.0 + C
            
            let discriminant: Double = pow(q / 2, 2) + pow(p / 3, 3)
            
            if discriminant > 0 {
                // One real root
                let sqrtD: Double = sqrt(discriminant)
                let u: Double = cbrt(-q / 2 + sqrtD)
                let v: Double = cbrt(-q / 2 - sqrtD)
                let t: Double = u + v
                return [t - A / 3]
            } else if discriminant == 0 {
                // Multiple roots
                let u: Double = cbrt(-q / 2)
                let t1: Double = 2 * u - A / 3
                let t2: Double = -u - A / 3
                return [t1, t2]
            } else {
                // Three real roots
                let r: Double = sqrt(-pow(p, 3) / 27)
                let phi: Double = acos(-q / (2 * r))
                let t1: Double = 2 * sqrt(-p / 3) * cos(phi / 3) - A / 3
                let t2: Double = 2 * sqrt(-p / 3) * cos((phi + 2 * .pi) / 3) - A / 3
                let t3: Double = 2 * sqrt(-p / 3) * cos((phi + 4 * .pi) / 3) - A / 3
                return [t1, t2, t3]
            }
            
        default:
            // Degrees higher than 3 not supported analytically
            return []
        }
    }

}