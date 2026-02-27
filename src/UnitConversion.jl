module UnitConversion

export Length, convert

@enum Length begin
    Kilometers
    Meters
    Millimeters
    Micrometers
    Nanometers
    Picometers
end

function convert(value::Number; from::Length, exponent::Number, to::Length)
    base_unit = from
    target_unit = to

    # We first convert the value in meters
    value_in_meters = begin
        if base_unit == Length.Kilometers
            value * 1000 ^ exponent
        elseif base_unit == Length.Meters
            value
        elseif base_unit == Millimeters
            value / 1000 ^ exponent
        elseif base_unit == Micrometers
            value / 1.0e-6 ^ exponent
        elseif base_unit == Nanometers
            value / 1.0e-9 ^ exponent
        else
            value / 1.0e-12 ^ exponent
        end
    end

    # Then we convert it in the unit we want
    result = begin
        if base_unit == Length.Kilometers
            value_in_meters / 1000 ^ exponent
        elseif base_unit == Length.Meters
            value_in_meters
        elseif base_unit == Millimeters
            value_in_meters * 1000 ^ exponent
        elseif base_unit == Micrometers
            value_in_meters * 1.0e-6 ^ exponent
        elseif base_unit == Nanometers
            value_in_meters * 1.0e-9 ^ exponent
        else
            value_in_meters * 1.0e-12 ^ exponent
        end
    end

    return result
end




end