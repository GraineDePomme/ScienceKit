import Foundation

public struct vector2D {

    public var x: Double
    public var y: Double

    public var r: Double
    public var theta: Double

    public init(x: Double, y: Double) {
        self.x = x
        self.y = y
        self.r = sqrt(x*x + y*y)
        self.theta = atan2(self.y, self.x)
    }

    public init(r: Double, theta: Double) {
        self.r = r
        self.theta = theta
        self.x = r * cos(theta)
        self.y = r * sin(theta)
    }

}