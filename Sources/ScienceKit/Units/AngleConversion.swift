import Foundation

public enum AngleUnit {
    case degree
    case radian
    case gradian
    case turn
}

public extension Double {

    func convert(from originUnit: AngleUnit, to targetUnit: AngleUnit) -> Double {
        var result: Double = self

        // We first convert the value in turns
        switch originUnit {
            case .degree:
                result = result / 360
            case .radian: 
                result = result / (2 * Double.pi)
            case .gradian:
                result = result / 400
            case .turn:
                result = result * 1
        }

        // Then we convert it in the unit we want
        switch targetUnit {
            case .degree:
                result = result * 360
            case .radian: 
                result = result * (2 * Double.pi)
            case .gradian:
                result = result * 400
            case .turn:
                result = result * 1
        }

        return result
    }

}