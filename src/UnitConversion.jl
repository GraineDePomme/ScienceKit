@enum Length begin
    Meters
    Nanometers
end

function convert(value::Float64; from::Length, exponent::Float64 = 1.0, to::Length)
    base_unit = from
    target_unit = to

    result = value

    # First we convert the value in meters ...
    if base_unit == Meters
        result = result * 1
    elseif base_unit == Nanometers
        result = result * 10e-9 ^ exponent
    end

    # ... then we convert it in the unit we really want
    if base_unit == Meters
        result = result / 1
    elseif base_unit == Nanometers
        result = result / 10e-9 ^ exponent
    end

    return result
end