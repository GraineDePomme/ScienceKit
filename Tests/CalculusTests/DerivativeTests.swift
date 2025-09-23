import Testing
import Foundation
@testable import ScienceKit


// Testing a polynonial function

@Test("Forward derivative of x^2 when x = 3") func forwardDerivativePolynomial() async throws {
    let f = { (x: Double) in x * x }
    let x: Double = 3
    let result: Double = Calculus.derivative(of: f, at: x, using: .forwardDerivative)
    let expectedResult: Double = 6
    #expect(abs(result - expectedResult) < 1e-5)
}

@Test("Central derivative of x^2 when x = 3") func centralDerivativePolynomial() async throws {
    let f = { (x: Double) in x * x }
    let x: Double = 3
    let result: Double = Calculus.derivative(of: f, at: x, using: .centralDerivative)
    let expectedResult: Double = 6
    #expect(abs(result - expectedResult) < 1e-5)
}

@Test("Backward derivative of x^2 when x = 3") func backwardDerivativePolynomial() async throws {
    let f = { (x: Double) in x * x }
    let x: Double = 3
    let result: Double = Calculus.derivative(of: f, at: x, using: .backwardDerivative)
    let expectedResult: Double = 6
    #expect(abs(result - expectedResult) < 1e-5)
}

// Testing a trigonometric function

@Test("Forward derivative of sin(x) when x = pi/4") func forwardDerivativeTrigonometric() async throws {
    func f(x: Double) -> Double { return sin(x) }
    let x: Double = Double.pi / 4
    let result: Double = Calculus.derivative(of: f, at: x, using: .forwardDerivative)
    let expectedResult: Double = cos(Double.pi / 4)
    #expect(abs(result - expectedResult) < 1e-5)
}

@Test("Central derivative of sin(x) when x = pi/4") func centralDerivativeTrigonometric() async throws {
    func f(x: Double) -> Double { return sin(x) }
    let x: Double = Double.pi / 4
    let result: Double = Calculus.derivative(of: f, at: x, using: .centralDerivative)
    let expectedResult: Double = cos(Double.pi / 4)
    #expect(abs(result - expectedResult) < 1e-5)
}

@Test("Backward derivative of sin(x) when x = pi/4") func backwardDerivativeTrigonometric() async throws {
    func f(x: Double) -> Double { return sin(x) }
    let x: Double = Double.pi / 4
    let result: Double = Calculus.derivative(of: f, at: x, using: .backwardDerivative)
    let expectedResult: Double = cos(Double.pi / 4)
    #expect(abs(result - expectedResult) < 1e-5)
}

// Testing an exponential function

@Test("Forward derivative of exp(x) when x=0") func forwardDerivativeExponential() async throws {
    let f = { (x: Double) in exp(x) }
    let x: Double = 0
    let result: Double = Calculus.derivative(of: f, at: x, using: .forwardDerivative)
    let expectedResult: Double = 1
    #expect(abs(result - expectedResult) < 1e-5)
}

@Test("Central derivative of exp(x) when x=0") func centralDerivativeExponential() async throws {
    let f = { (x: Double) in exp(x) }
    let x: Double = 0
    let result: Double = Calculus.derivative(of: f, at: x, using: .centralDerivative)
    let expectedResult: Double = 1
    #expect(abs(result - expectedResult) < 1e-5)
}

@Test("Backward derivative of exp(x) when x=0") func backwardDerivativeExponential() async throws {
    let f = { (x: Double) in exp(x) }
    let x: Double = 0
    let result: Double = Calculus.derivative(of: f, at: x, using: .backwardDerivative)
    let expectedResult: Double = 1
    #expect(abs(result - expectedResult) < 1e-5)
}

// Testing some edge cases

@Test("Central derivative of a constant function") func centralDerivativeConstant() async throws {
    let f = { (x: Double) in 5.0 }
    let x: Double = 10
    let result: Double = Calculus.derivative(of: f, at: x, using: .centralDerivative)
    let expectedResult: Double = 0
    #expect(abs(result - expectedResult) < 1e-5)
}

@Test("Central derivative near zero for x^3") func centralDerivativenearZero() async throws {
    let f = { (x: Double) in x * x * x }
    let x: Double = 1e-8
    let result: Double = Calculus.derivative(of: f, at: x, using: .centralDerivative)
    let expectedResult: Double = 0
    #expect(abs(result - expectedResult) < 1e-5)
}

