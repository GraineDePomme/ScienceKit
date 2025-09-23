import Foundation

public extension Calculus {

    static func forwardDerivative(of f: (Double) -> Double, at x: Double, h: Double = 1e-5) -> Double {
        return (f(x + h) - f(x)) / h
    }

    static func centralDerivative(of f: (Double) -> Double, at x: Double, h: Double = 1e-5) -> Double {
        return (f(x + h) - f(x - h)) / (2 * h)
    }

    static func backwardDerivative(of f: (Double) -> Double, at x: Double, h: Double = 1e-5) -> Double {
        return (f(x) - f(x - h)) / h
    }

}