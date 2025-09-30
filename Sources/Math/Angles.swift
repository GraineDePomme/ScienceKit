import Foundation
import Numerics

public enum AngleUnit {
    case turn
    case degree
    case radian
    case grad
    case arcminute
    case arcsecond
    case milliradian
}

public extension Double {
    func convertAngle(from unitOfOrigin: AngleUnit, to targetUnit: AngleUnit) -> Double {

        var result: Double = self

        // We first convert the angle in turns
        result = switch unitOfOrigin {
            case .turn:
                result
            case .degree:
                result / 360
            case .radian:
                result / Double.tau
            case .grad:
                result / 400
            case .arcminute:
                result / 21600
            case .arcsecond:
                result / 1_296_000
            case .milliradian:
                result / (1000 * Double.tau)
        }

        // Then we convert it in the unit we really want
        result = switch targetUnit {
            case .turn:
                result
            case .degree:
                result * 360
            case .radian:
                result * Double.tau
            case .grad:
                result * 400
            case .arcminute:
                result * 21600
            case .arcsecond:
                result * 1_296_000
            case .milliradian:
                result * 1000 * Double.tau
        }

        return result
    }
}


public extension Float32 {
    func convertAngle(from unitOfOrigin: AngleUnit, to targetUnit: AngleUnit) -> Float32 {

        var result: Float32 = self

        // We first convert the angle in turns
        result = switch unitOfOrigin {
            case .turn:
                result
            case .degree:
                result / 360
            case .radian:
                result / Float32.tau
            case .grad:
                result / 400
            case .arcminute:
                result / 21600
            case .arcsecond:
                result / 1_296_000
            case .milliradian:
                result / (1000 * Float32.tau)
        }

        // Then we convert it in the unit we really want
        result = switch targetUnit {
            case .turn:
                result
            case .degree:
                result * 360
            case .radian:
                result * Float32.tau
            case .grad:
                result * 400
            case .arcminute:
                result * 21600
            case .arcsecond:
                result * 1_296_000
            case .milliradian:
                result * 1000 * Float32.tau
        }

        return result
    }
}


public extension Float16 {
    func convertAngle(from unitOfOrigin: AngleUnit, to targetUnit: AngleUnit) -> Float16 {

        var result: Float16 = self

        // We first convert the angle in grad
        result = switch unitOfOrigin {
            case .turn:
                result * 400
            case .degree:
                result * 1.111
            case .radian:
                result * 63.66
            case .grad:
                result
            case .arcminute:
                result * 0.01852
            case .arcsecond:
                result * 3.086e-4
            case .milliradian:
                result * 0.06366
        }

        // Then we convert it in the unit we really want
        result = switch targetUnit {
            case .turn:
                result / 400
            case .degree:
                result / 1.111
            case .radian:
                result / 63.66
            case .grad:
                result
            case .arcminute:
                result / 0.01852
            case .arcsecond:
                result / 3.086e-4
            case .milliradian:
                result / 0.06366
        }

        return result
    }
}