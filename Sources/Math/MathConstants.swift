
struct MathConstant {

    // The base of exponential
    static let e: Double = 2.718_281_828_459_045_235_360_287_471_35

    // The base-2 logarithm of e, log2(e)
    static let log2e: Double = 1.442_695_040_888_963_407_359_924_681_00

    // The base-10 logarithm of e, log10(e)
    static let log10e: Double = 0.434_294_481_903_251_827_651_128_918_92

    // The square root of 2
    static let sqrt2: Double = 1.414_213_562_373_095_048_801_688_724_21

    // The square root of 1/2
    static let sqrt1_2: Double = 0.707_106_781_186_547_524_400_844_362_10

    // The square root of 3
    static let sqrt3: Double = 1.732_050_807_568_877_293_527_446_341_51

    // Tau, or two times pi
    static let tau: Double = 6.283_185_307_179_586_476_925_286_766_55

    // Pi divided by two
    static let pi_2: Double = 1.570_796_326_794_896_619_231_321_691_64

    // Pi divided by 4
    static let pi_4: Double = 0.785_398_163_397_448_309_615_660_845_82

    // The square root of pi
    static let sqrtPi: Double = 1.772_453_850_905_516_027_298_167_483_34

    // Two divided by the square root of pi
    static let two_SqrtPi: Double = 1.128_379_167_095_512_573_896_158_903_12

    // The reciprocal of pi
    static let one_pi: Double = 0.318_309_886_183_790_671_537_767_526_75

    // twice the reciprocal of pi
    static let two_pi: Double = 0.636_619_772_367_581_343_075_535_053_49

    // The natural logarithm of 10, ln(10)
    static let ln10: Double = 2.302_585_092_994_045_684_017_991_454_68

    // The natural logarithm of 2, ln(2)
    static let ln2: Double = 0.693_147_180_559_945_309_417_232_121_46

    // The natural logarithm of pi, ln(pi)
    static let lnPi: Double = 1.144_729_885_849_400_174_143_427_351_35

    // Euler's constant
    static let euler: Double = 0.577_215_664_901_532_860_606_512_090_08

}


/// Extending the Double type to include the mathematical constants defined above. 
public extension Double {

    static let e: Double = Double(MathConstant.e)
    static let log2e: Double = Double(MathConstant.log2e)
    static let log10e: Double = Double(MathConstant.log10e)
    static let sqrt2: Double = Double(MathConstant.sqrt2)
    static let sqrt1_2: Double = Double(MathConstant.sqrt1_2)
    static let sqrt3: Double = Double(MathConstant.sqrt3)
    static let tau: Double = Double(MathConstant.tau)
    static let pi_2: Double = Double(MathConstant.pi_2)
    static let pi_4: Double = Double(MathConstant.pi_4)
    static let sqrtPi: Double = Double(MathConstant.sqrtPi)
    static let two_SqrtPi: Double = Double(MathConstant.two_SqrtPi)
    static let one_pi: Double = Double(MathConstant.one_pi)
    static let two_pi: Double = Double(MathConstant.two_pi)
    static let ln10: Double = Double(MathConstant.ln10)
    static let ln2: Double = Double(MathConstant.ln2)
    static let lnPi: Double = Double(MathConstant.lnPi)
    static let euler: Double = Double(MathConstant.euler)
    
}

/// Extending the Float32 type to include the mathematical constants defined above. 
public extension Float32 {

    static let e: Float32 = Float32(MathConstant.e)
    static let log2e: Float32 = Float32(MathConstant.log2e)
    static let log10e: Float32 = Float32(MathConstant.log10e)
    static let sqrt2: Float32 = Float32(MathConstant.sqrt2)
    static let sqrt1_2: Float32 = Float32(MathConstant.sqrt1_2)
    static let sqrt3: Float32 = Float32(MathConstant.sqrt3)
    static let tau: Float32 = Float32(MathConstant.tau)
    static let pi_2: Float32 = Float32(MathConstant.pi_2)
    static let pi_4: Float32 = Float32(MathConstant.pi_4)
    static let sqrtPi: Float32 = Float32(MathConstant.sqrtPi)
    static let two_SqrtPi: Float32 = Float32(MathConstant.two_SqrtPi)
    static let one_pi: Float32 = Float32(MathConstant.one_pi)
    static let two_pi: Float32 = Float32(MathConstant.two_pi)
    static let ln10: Float32 = Float32(MathConstant.ln10)
    static let ln2: Float32 = Float32(MathConstant.ln2)
    static let lnPi: Float32 = Float32(MathConstant.lnPi)
    static let euler: Float32 = Float32(MathConstant.euler)
    
}

/// Extending the Float16 type to include the mathematical constants defined above. 
public extension Float16 {

    static let e: Float16 = Float16(MathConstant.e)
    static let log2e: Float16 = Float16(MathConstant.log2e)
    static let log10e: Float16 = Float16(MathConstant.log10e)
    static let sqrt2: Float16 = Float16(MathConstant.sqrt2)
    static let sqrt1_2: Float16 = Float16(MathConstant.sqrt1_2)
    static let sqrt3: Float16 = Float16(MathConstant.sqrt3)
    static let tau: Float16 = Float16(MathConstant.tau)
    static let pi_2: Float16 = Float16(MathConstant.pi_2)
    static let pi_4: Float16 = Float16(MathConstant.pi_4)
    static let sqrtPi: Float16 = Float16(MathConstant.sqrtPi)
    static let two_SqrtPi: Float16 = Float16(MathConstant.two_SqrtPi)
    static let one_pi: Float16 = Float16(MathConstant.one_pi)
    static let two_pi: Float16 = Float16(MathConstant.two_pi)
    static let ln10: Float16 = Float16(MathConstant.ln10)
    static let ln2: Float16 = Float16(MathConstant.ln2)
    static let lnPi: Float16 = Float16(MathConstant.lnPi)
    static let euler: Float16 = Float16(MathConstant.euler)
    
}