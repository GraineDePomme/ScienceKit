import Foundation

public enum TimeUnit {
    case day
    case sideralDay
    case hour
    case minute
    case second
}

public extension Double {

    func convert(from originUnit: TimeUnit, to targetUnit: TimeUnit) -> Double {
        var result: Double = self

        // We first convert the value in seconds
        switch originUnit {
            case .day:
                result = result * 86400
            case .sideralDay: 
                result = result * 86164.0905
            case .hour:
                result = result * 3600
            case .minute:
                result = result * 60
            case .second:
                result = result * 1
        }

        // Then we convert it in the unit we want
        switch targetUnit {
            case .day:
                result = result / 86400
            case .sideralDay: 
                result = result / 86164.0905
            case .hour:
                result = result / 3600
            case .minute:
                result = result / 60
            case .second:
                result = result * 1
        }

        return result
    }

}