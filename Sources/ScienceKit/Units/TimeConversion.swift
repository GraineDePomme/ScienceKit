import Foundation

public enum TimeUnit {
    case Day
    case SideralDay
    case Hour
    case Minute
    case Second
}

public extension Double {

    func convert(from originUnit: TimeUnit, to targetUnit: TimeUnit) -> Double {
        var result: Double = self

        // We first convert the value in seconds
        switch originUnit {
            case .Day:
                result = result * 86400
            case .SideralDay: 
                result = result * 86164.0905
            case .Hour:
                result = result * 3600
            case .Minute:
                result = result * 60
            case .Second:
                result = result * 1
        }

        // Then we convert it in the unit we want
        switch originUnit {
            case .Day:
                result = result / 86400
            case .SideralDay: 
                result = result / 86164.0905
            case .Hour:
                result = result / 3600
            case .Minute:
                result = result / 60
            case .Second:
                result = result / 1
        }

        return result
    }

}