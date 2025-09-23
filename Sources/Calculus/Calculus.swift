import Foundation

public struct Calculus {

    public enum DerivationMethod {
        case forwardDerivative
        case centralDerivative
        case backwardDerivative
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

}