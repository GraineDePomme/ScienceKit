import Foundation

public extension Double {

    /// The standard acceleration of gravitation : m . s^-2
    static let standardGravityAcceleration: Double = 9.806_65

    /// The Newtonian constant of gravitation : m^3 kg^-1 s^-2
    static let newtonianGravitationalConstant: Double = 6.674_30e-11

    /// The mass of the Earth : kg
    static let earthMass: Double = 5.9736e24

    /// The volumetric mean radius of the Earth : m
    static let earthRadius: Double = 6371e3

    /// The speed of light in vacuum : m s^-1
    static let speedOfLight: Double = 299_792_458

    /// The Planck constant : H Hz^-1
    static let planckConstant: Double = 6.626_070_15e-34

    /// The Planck constant over 2π : J s
    static let reducedPlanckConstant: Double = planckConstant / Double.tau

    /// The mass of an electron : kg
    static let electronMass: Double = 9.109_383_7139e-31

    /// The mass of the Sun : kg
    static let sunMass: Double = 1.9891e30

}