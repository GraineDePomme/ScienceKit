import Foundation
import Numerics

extension Double {
    func rounded(toPlaces places: Int) -> Double {
        let multiplier: Double = .pow(10.0, Double(places))
        return (self * multiplier).rounded() / multiplier
    }
}

extension Float32 {
    func rounded(toPlaces places: Int) -> Float32 {
        let multiplier: Float32 = .pow(10.0, Float32(places))
        return (self * multiplier).rounded() / multiplier
    }
}

extension Float16 {
    func rounded(toPlaces places: Int) -> Float16 {
        let multiplier: Float16 = .pow(10.0, Float16(places))
        return (self * multiplier).rounded() / multiplier
    }
}