import Foundation
import Numerics

public enum TimeUnit {
    case second
    case minute
    case hour
}

public extension Double {
    func convert(from unitOfOrigin: TimeUnit, to targetUnit: TimeUnit) -> Double {
        
        var result: Double = self

        // We first convert the angle in minutes
        result = switch unitOfOrigin {
            case .second:
                result / 60
            case .minute:
                result
            case .hour:
                result * 60
        }

        // Then we convert it in the unit we really want
        result = switch targetUnit {
            case .second:
                result * 60
            case .minute:
                result
            case .hour:
                result / 60
        }

        return result
    }
}

public extension Float32 {
    func convert(from unitOfOrigin: TimeUnit, to targetUnit: TimeUnit) -> Float32 {
        
        var result: Float32 = self

        // We first convert the angle in minutes
        result = switch unitOfOrigin {
            case .second:
                result / 60
            case .minute:
                result
            case .hour:
                result * 60
        }

        // Then we convert it in the unit we really want
        result = switch targetUnit {
            case .second:
                result * 60
            case .minute:
                result
            case .hour:
                result / 60
        }

        return result
    }
}

public extension Float16 {
    func convert(from unitOfOrigin: TimeUnit, to targetUnit: TimeUnit) -> Float16 {
        
        var result: Float16 = self

        // We first convert the angle in minutes
        result = switch unitOfOrigin {
            case .second:
                result / 60
            case .minute:
                result
            case .hour:
                result * 60
        }

        // Then we convert it in the unit we really want
        result = switch targetUnit {
            case .second:
                result * 60
            case .minute:
                result
            case .hour:
                result / 60
        }

        return result
    }
}