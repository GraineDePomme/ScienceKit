import Foundation
import Numerics

public extension Double {
    func rounded(toPlaces places: Int) -> Double {
        guard self != 0 else { return 0 }
    
        let d: Double = ceil(Double.log10(abs(self)))
        let power: Int = places - Int(d)
        let magnitude: Double = Double.pow(10.0, Double(power))
    
        return (self * magnitude).rounded() / magnitude
    }
}

public extension Float32 {
    func rounded(toPlaces places: Int) -> Float32 {
        guard self != 0 else { return 0 }
    
        let d: Float32 = ceil(Float32.log10(abs(self)))
        let power: Int = places - Int(d)
        let magnitude: Float32 = Float32.pow(10.0, Float32(power))
    
        return (self * magnitude).rounded() / magnitude
    }
}

public extension Float16 {
    func rounded(toPlaces places: Int) -> Float16 {
        guard self != 0 else { return 0 }
    
        let d: Float16 = ceil(Float16.log10(abs(self)))
        let power: Int = places - Int(d)
        let magnitude: Float16 = Float16.pow(10.0, Float16(power))
    
        return (self * magnitude).rounded() / magnitude
    }
}


public func hypot<ℝ: Real>(_ x: ℝ, _ y: ℝ, _ z: ℝ = ℝ.zero) -> ℝ {
    let x: ℝ = abs(x)
    let y: ℝ = abs(y)
    let z: ℝ = abs(z)

    let w: ℝ = .maximum(x, .maximum(y, z))

    if w == 0 { 
        return 0 
    } else {
        let result: ℝ = {
            let a: ℝ = (x / w) * (x / w)
            let b: ℝ = (y / w) * (y / w)
            let c: ℝ = (z / w) * (z / w)
            return w * .sqrt(a + b + c)
        }()

        return result
    }
}