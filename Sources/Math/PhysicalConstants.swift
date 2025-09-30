
struct PhysicalConstants {

    // The speed of light in vacuum : m s^-1
    static let speedOfLight: Double = 299_792_458

    // The newtonian constant of gravitation (G) : m^3 kg^-1 s^-2
    static let newtonianGravitationalConstant: Double = 6.674_30e-11

    // The planck constant : J Hz^-1
    static let planckConstant: Double = 6.626_070_15e-34

    // The reduced planck constant : J s
    static let reducedPlanckConstant: Double = 1.054_571_817_646_1563e-34

    // The elementary charge : C
    static let elementaryCharge: Double = 1.602_176_634e-19

    // The Boltzmann constant : J K^-1
    static let boltzmannConstant: Double = 1.380_649e-23

    // The Avogadro constant : mol^-1
    static let avogadroConstant: Double = 6.022_140_76e23

    // The molar gas constant : J mol^-1 K^-1
    static let molarGasConstant: Double = 8.314_462_618_153_24

    // The mass of one electron : kg
    static let electronMass: Double = 9.109_383_7139e-31

    // The mass of one proton : kg
    static let protonMass: Double = 1.672_621_925_95e-27

    // The mass of one neutron : kg
    static let neutronMass: Double = 1.674_927_500_56e-27

    // The vacuum electric permittivity : F m^-1
    static let vacuumPermittivity: Double = 8.854_187_8188e-12

    // The vacuum magnetic permeability : N A^-2
    static let vacuumPermeability: Double = 1.256_637_061_27e-6

    // The Rydberg constant : m^-1
    static let rydbergConstant: Double = 10_973_731.568_157

    // The standard acceleration fo gravitation on Earth : m s^-2
    static let standardGravityAcceleration: Double = 9.806_65

    // The mass of the sun : kg
    static let sunMass: Double = 1_989_100e24

    // The Coulomb's constant, 1 / 4 * pi * e0 : m F^-1
    static let coulombConstant: Double = 8.987_551_7862e9

}


/// Extending the Double type to include the physical constants defined above. 
public extension Double {

    static let speedOfLight: Double = Double(PhysicalConstants.speedOfLight)
    static let newtonianGravitationalConstant: Double = Double(PhysicalConstants.newtonianGravitationalConstant)
    static let planckConstant: Double = Double(PhysicalConstants.planckConstant)
    static let reducedPlanckConstant: Double = Double(PhysicalConstants.reducedPlanckConstant)
    static let elementaryCharge: Double = Double(PhysicalConstants.elementaryCharge)
    static let boltzmannConstant: Double = Double(PhysicalConstants.boltzmannConstant)
    static let avogadroConstant: Double = Double(PhysicalConstants.avogadroConstant)
    static let molarGasConstant: Double = Double(PhysicalConstants.molarGasConstant)
    static let electronMass: Double = Double(PhysicalConstants.electronMass)
    static let protonMass: Double = Double(PhysicalConstants.protonMass)
    static let neutronMass: Double = Double(PhysicalConstants.neutronMass)
    static let vacuumPermittivity: Double = Double(PhysicalConstants.vacuumPermittivity)
    static let vacuumPermeability: Double = Double(PhysicalConstants.vacuumPermeability)
    static let rydbergConstant: Double = Double(PhysicalConstants.rydbergConstant)
    static let standardGravityAcceleration: Double = Double(PhysicalConstants.standardGravityAcceleration)
    static let sunMass: Double = Double(PhysicalConstants.sunMass)
    static let coulombConstant: Double = Double(PhysicalConstants.sunMass)
    
}

/// Extending the Float32 type to include the physical constants defined above. 
public extension Float32 {

    static let speedOfLight: Float32 = Float32(PhysicalConstants.speedOfLight)
    static let newtonianGravitationalConstant: Float32 = Float32(PhysicalConstants.newtonianGravitationalConstant)
    static let planckConstant: Float32 = Float32(PhysicalConstants.planckConstant)
    static let reducedPlanckConstant: Float32 = Float32(PhysicalConstants.reducedPlanckConstant)
    static let elementaryCharge: Float32 = Float32(PhysicalConstants.elementaryCharge)
    static let boltzmannConstant: Float32 = Float32(PhysicalConstants.boltzmannConstant)
    static let avogadroConstant: Float32 = Float32(PhysicalConstants.avogadroConstant)
    static let molarGasConstant: Float32 = Float32(PhysicalConstants.molarGasConstant)
    static let electronMass: Float32 = Float32(PhysicalConstants.electronMass)
    static let protonMass: Float32 = Float32(PhysicalConstants.protonMass)
    static let neutronMass: Float32 = Float32(PhysicalConstants.neutronMass)
    static let vacuumPermittivity: Float32 = Float32(PhysicalConstants.vacuumPermittivity)
    static let vacuumPermeability: Float32 = Float32(PhysicalConstants.vacuumPermeability)
    static let rydbergConstant: Float32 = Float32(PhysicalConstants.rydbergConstant)
    static let standardGravityAcceleration: Float32 = Float32(PhysicalConstants.standardGravityAcceleration)
    static let sunMass: Float32 = Float32(PhysicalConstants.sunMass)
    static let coulombConstant: Float32 = Float32(PhysicalConstants.sunMass)
    
}

/// Extending the Float16 type to include the physical constants defined above. 
public extension Float16 {

    static let speedOfLight: Float16 = Float16(PhysicalConstants.speedOfLight)
    static let newtonianGravitationalConstant: Float16 = Float16(PhysicalConstants.newtonianGravitationalConstant)
    static let planckConstant: Float16 = Float16(PhysicalConstants.planckConstant)
    static let reducedPlanckConstant: Float16 = Float16(PhysicalConstants.reducedPlanckConstant)
    static let elementaryCharge: Float16 = Float16(PhysicalConstants.elementaryCharge)
    static let boltzmannConstant: Float16 = Float16(PhysicalConstants.boltzmannConstant)
    static let avogadroConstant: Float16 = Float16(PhysicalConstants.avogadroConstant)
    static let molarGasConstant: Float16 = Float16(PhysicalConstants.molarGasConstant)
    static let electronMass: Float16 = Float16(PhysicalConstants.electronMass)
    static let protonMass: Float16 = Float16(PhysicalConstants.protonMass)
    static let neutronMass: Float16 = Float16(PhysicalConstants.neutronMass)
    static let vacuumPermittivity: Float16 = Float16(PhysicalConstants.vacuumPermittivity)
    static let vacuumPermeability: Float16 = Float16(PhysicalConstants.vacuumPermeability)
    static let rydbergConstant: Float16 = Float16(PhysicalConstants.rydbergConstant)
    static let standardGravityAcceleration: Float16 = Float16(PhysicalConstants.standardGravityAcceleration)
    static let coulombConstant: Float16 = Float16(PhysicalConstants.sunMass)
    
}