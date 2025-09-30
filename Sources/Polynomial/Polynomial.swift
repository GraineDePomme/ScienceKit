import Foundation
import Numerics


public struct Polynomial<ℝ: Real> {

  /// Coefficients in ascending order:
  /// [a0, a1, a2, ...] means a0 + a1*x + a2*x^2 + ...
  var coefficients: [ℝ]
  var degree: Int

  private var _realRoots: [ℝ]
  private var realRootsAreUpToDate: Bool

  public var realRoots: [ℝ] {
    mutating get {
      if !realRootsAreUpToDate {
        switch degree {
        case 0:
            // Constant polynomial: either no roots or infinite (handled as none here)
            _realRoots = []
            return _realRoots
            
        case 1:
            // Linear: ax + b = 0
            let a: ℝ = coefficients[1]
            let b: ℝ = coefficients[0]
            _realRoots = a == 0 ? [] : [-b / a]
            realRootsAreUpToDate = true
            return _realRoots
            
        case 2:
            // Quadratic: ax^2 + bx + c = 0
            let a: ℝ = coefficients[2]
            let b: ℝ = coefficients[1]
            let c: ℝ = coefficients[0]
            let disc: ℝ = b*b - 4*a*c
            if disc < 0 { return [] }
            if disc == 0 { return [-b / (2*a)] }
            let sqrtDisc: ℝ = sqrt(disc)
            _realRoots = [(-b + sqrtDisc) / (2*a), (-b - sqrtDisc) / (2*a)]
            realRootsAreUpToDate = true
            return _realRoots
            
        default:
            // Higher degrees not supported here
            _realRoots = []
            realRootsAreUpToDate = true
            return _realRoots
        }
      } else {
        return _realRoots
      }
    }
  }

  public init(_ coefficients: [ℝ]) {
    // Trim trailing zeros to avoid wrong degree
    var trimmedCoefficients = coefficients
    while trimmedCoefficients.last == 0 && trimmedCoefficients.count > 1 {
            trimmedCoefficients.removeLast()
    }
    self.coefficients = trimmedCoefficients
    self.degree = trimmedCoefficients.count - 1
    self._realRoots = []
    self.realRootsAreUpToDate = false
  }

  /// Normal evaluation method
  public func evaluate(at x: ℝ) -> ℝ {
    coefficients.enumerated().reduce(ℝ.zero) { sum, term in
        let (power, coeff) = term
        return sum + coeff * ℝ.pow(x, power)
    }
  }

  /// Makes the polynomial callable like a function
  public func callAsFunction(_ x: ℝ) -> ℝ {
    return evaluate(at: x)
  }

  /// Overload of the + operator to add two polynomials.
  /// Returns another polynomial without modifying the two others.
  public static func + (lhs: Polynomial, rhs: Polynomial) -> Polynomial {
    let maxCount = max(lhs.coefficients.count, rhs.coefficients.count)
    var newCoeffs = [ℝ](repeating: ℝ.zero, count: maxCount)

    for i in 0..<lhs.coefficients.count {
      newCoeffs[i] += lhs.coefficients[i]
    }

    for i in 0..<rhs.coefficients.count {
      newCoeffs[i] += rhs.coefficients[i]
    }

    return Polynomial(newCoeffs)
  }

  /// Mutating addition of two polynomials: modifies self by adding another polynomial
  public mutating func add(_ other: Polynomial) {
    let maxCount = max(self.coefficients.count, other.coefficients.count)
    if self.coefficients.count < maxCount {
      self.coefficients += [ℝ](repeating: ℝ.zero, count: maxCount - self.coefficients.count)
    }

    for i in 0..<other.coefficients.count {
      self.coefficients[i] += other.coefficients[i]
    }

    // Update degree after modification
    while self.coefficients.last == 0 && self.coefficients.count > 1 {
      self.coefficients.removeLast()
    }
    self.degree = self.coefficients.count - 1
  }


  /// Overload of the - operator to add two polynomials.
  /// Returns another polynomial without modifying the two others.
  public static func - (lhs: Polynomial, rhs: Polynomial) -> Polynomial {
    let maxCount = max(lhs.coefficients.count, rhs.coefficients.count)
    var newCoeffs = [ℝ](repeating: ℝ.zero, count: maxCount)

    for i in 0..<lhs.coefficients.count {
      newCoeffs[i] += lhs.coefficients[i]
    }

    for i in 0..<rhs.coefficients.count {
      newCoeffs[i] -= rhs.coefficients[i]
    }

    return Polynomial(newCoeffs)
  }


  /// Mutating sbustraction of two polynomials: modifies self by adding another polynomial
  public mutating func substract(_ other: Polynomial) {
    let maxCount = max(self.coefficients.count, other.coefficients.count)
    if self.coefficients.count < maxCount {
      self.coefficients += [ℝ](repeating: ℝ.zero, count: maxCount - self.coefficients.count)
    }

    for i in 0..<other.coefficients.count {
      self.coefficients[i] -= other.coefficients[i]
    }

    // Update degree after modification
    while self.coefficients.last == 0 && self.coefficients.count > 1 {
      self.coefficients.removeLast()
    }
    self.degree = self.coefficients.count - 1
  }

  /// Overload of the * operator to add two polynomials.
  /// Returns another polynomial without modifying the two others.
  public static func * (lhs: Polynomial, rhs: Polynomial) -> Polynomial {
    let newDegree = lhs.degree + rhs.degree
    var newCoeffs = [ℝ](repeating: ℝ.zero, count: newDegree + 1)

    for i in 0...lhs.degree {
        for j in 0...rhs.degree {
            newCoeffs[i + j] += lhs.coefficients[i] * rhs.coefficients[j]
        }
    }

    return Polynomial(newCoeffs)
  }

  /// Mutating multiplication of two polynomials: modifies self by adding another polynomial
  public mutating func multiply(by other: Polynomial) {
    let newDegree = self.degree + other.degree
    var newCoeffs = [ℝ](repeating: ℝ.zero, count: newDegree + 1)

    for i in 0...self.degree {
        for j in 0...other.degree {
            newCoeffs[i + j] += self.coefficients[i] * other.coefficients[j]
        }
    }

    self.coefficients = newCoeffs

    // Trim trailing zeros and update degree
    while self.coefficients.last == 0 && self.coefficients.count > 1 {
        self.coefficients.removeLast()
    }
    self.degree = self.coefficients.count - 1
  }

  /// Non-mutating derivative: returns a new polynomial
  public func derivative() -> Polynomial {
    guard degree > 0 else { return Polynomial([ℝ.zero]) }

    var newCoeffs = [ℝ](repeating: ℝ.zero, count: degree)
    for i in 1...degree {
      newCoeffs[i - 1] = ℝ(i) * coefficients[i]
    }
    return Polynomial(newCoeffs)
  }


  /// Mutating derivative: modifies self in place
  public mutating func differentiate() {
    if degree == 0 {
      self.coefficients = [ℝ.zero]
      self.degree = 0
      return
    }

    var newCoeffs = [ℝ](repeating: ℝ.zero, count: degree)
    for i in 1...degree {
      newCoeffs[i - 1] = ℝ(i) * coefficients[i]
    }
    self.coefficients = newCoeffs
    self.degree = newCoeffs.count - 1
  }


  /// Mutating integral (indefinite) with optional constant of integration
  public mutating func integrate(constant: ℝ = ℝ.zero) {
    // New coefficients array has one more element than original
    let newCoeffs = [constant] + coefficients.enumerated().map { (i, c) in
      c / ℝ(i + 1)
    }
    self.coefficients = newCoeffs
    self.degree = newCoeffs.count - 1
  }

  /// Non-mutating integral (indefinite) with optional constant of integration
  public func integral(constant: ℝ = ℝ.zero) -> Polynomial {
    let newCoeffs = [constant] + coefficients.enumerated().map { (i, c) in
      c / ℝ(i + 1)
    }
    return Polynomial(newCoeffs)
  }


  // Getting the real roots of our polynomial



  /// Returns a human-readable string of the polynomial
  public func print() -> String {
    if coefficients.allSatisfy({ $0 == 0 }) {
      return "0"
    }

    var terms: [String] = []

    for (i, coeff) in coefficients.enumerated().reversed() {
      if coeff == 0 { continue }

      let absCoeff = abs(coeff)
      let sign = coeff >= 0 ? "+" : "-"

      var term = ""
      if i == 0 {
        term = "\(absCoeff)"
      } else if i == 1 {
        term = absCoeff == 1 ? "x" : "\(absCoeff)x"
      } else {
        term = absCoeff == 1 ? "x^\(i)" : "\(absCoeff)x^\(i)"
      }

      terms.append((terms.isEmpty && sign == "+") ? term : " \(sign) \(term)")
    }

    return terms.joined()
  }

}