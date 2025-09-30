import Foundation
import Numerics

public extension Calculus {

    static func trapezoidalIntegration(of f: (Double) -> Double, between a: Double, and b: Double, n: Int = 100) -> Double {
        let h: Double = (b - a) / Double(n)
        var result: Double = (f(a) + f(b)) / 2
        for k in 1..<n {
            result += f(a + Double(k) * h)
        }
        return h * result
    }

    static func trapezoidalIntegration(of y: [Double], against x: [Double]) -> Double {
        let n: Int = min(x.count, y.count)
        var result: Double = 0.0
        for i in 0..<n {
            let dx: Double = x[i+1] - x[i]
            result += 0.5 * dx * ( y[i] + y[i+1] )
        }
        return result
    }

}