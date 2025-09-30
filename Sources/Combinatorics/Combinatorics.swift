import Foundation
import Numerics

public func factorial(of n: Int) -> Int {
    if n < 0 {
        fatalError("Factorial of a negative number is not defined!")
    }

    return (1...max(1, n)).reduce(1, *)
}