import Foundation
import Numerics

public enum DistanceUnit {
    case meter
    case kilometer
}

public extension Double {
    func convert(from unitOfOrigin: DistanceUnit, to targetUnit: DistanceUnit) -> Double {
        
        var result: Double = self

        // We first convert the angle in m
        result = switch unitOfOrigin {
            case .meter:
                result
            case .kilometer:
                result * 1000
        }

        // Then we convert it in the unit we really want
        result = switch targetUnit {
            case .meter:
                result
            case .kilometer:
                result / 1000
        }

        return result
    }
}

public extension Float32 {
    func convert(from unitOfOrigin: DistanceUnit, to targetUnit: DistanceUnit) -> Float32 {
        
        var result: Float32 = self

        // We first convert the angle in m
        result = switch unitOfOrigin {
            case .meter:
                result
            case .kilometer:
                result * 1000
        }

        // Then we convert it in the unit we really want
        result = switch targetUnit {
            case .meter:
                result
            case .kilometer:
                result / 1000
        }

        return result
    }
}

public extension Float16 {
    func convert(from unitOfOrigin: DistanceUnit, to targetUnit: DistanceUnit) -> Float16 {
        
        var result: Float16 = self

        // We first convert the angle in m
        result = switch unitOfOrigin {
            case .meter:
                result
            case .kilometer:
                result * 1000
        }

        // Then we convert it in the unit we really want
        result = switch targetUnit {
            case .meter:
                result
            case .kilometer:
                result / 1000
        }

        return result
    }
}