import Foundation

public struct Calculus {

    public enum DerivationMethod {
        case forwardDerivative
        case centralDerivative
        case backwardDerivative
    }

    public enum IntegrationMethod {
        case trapezoidalIntegration
    }

    public static func derivative(of f: (Double) -> Double, at x: Double, h: Double = 1e-5, using method: DerivationMethod = .centralDerivative) -> Double {
        switch method {
        case .forwardDerivative:
            return forwardDerivative(of: f, at: x, h: h)
        case .centralDerivative:
            return centralDerivative(of: f, at: x, h: h)
        case .backwardDerivative:
            return backwardDerivative(of: f, at: x, h: h)
        }
    }

    public static func integral(of f: (Double) -> Double, between a: Double, and b: Double, using method: IntegrationMethod = .trapezoidalIntegration, n: Int = 100) -> Double {
        switch method {
            case .trapezoidalIntegration:
                return trapezoidalIntegration(of: f, between: a, and: b, n: n)
        }
    }

    public static func integral(of y: [Double], against x: [Double], using method: IntegrationMethod = .trapezoidalIntegration) -> Double {
        switch method {
            case .trapezoidalIntegration:
                return trapezoidalIntegration(of: y, against: x)
        }
    }

}