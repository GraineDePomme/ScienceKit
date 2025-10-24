import Foundation

public enum DistanceUnit {
    case meter
    case kilometer
}

public extension Double {

    func convert(from originUnit: DistanceUnit, to targetUnit: DistanceUnit) -> Double {
        var result: Double = self

        // We first convert the value in meters
        switch originUnit {
            case .meter:
                result = result * 1
            case .kilometer:
                result = result * 1000
        }

        // Then we convert it in the unit we want
        switch targetUnit {
            case .meter:
                result = result * 1
            case .kilometer:
                result = result / 1000
        }

        return result
    }

}