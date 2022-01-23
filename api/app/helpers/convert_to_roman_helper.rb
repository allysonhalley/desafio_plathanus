module ConvertToRomanHelper

    def convert_to_roman(arabic)
        @roman_algorisms = Array.new
        convert_algorism(arabic).join
    end

    private

    def convert_algorism(arabic)
        iterator = 1
        arabic.to_s.reverse.split('').each do |algorism|
            case iterator
            when 1
                units_algorism(algorism)
            when 2
                thens_algorism(algorism)
            when 3
                hundreds_algorism(algorism)
            else
                thousands_algorism(algorism)
            end
            iterator += 1
        end
        @roman_algorisms

    end

    def units_algorism(arabic_unit)        
        arabic_unit.to_s.reverse.split('').each do |algorism|
            if algorism.to_i < 10 && algorism.to_i > 0
             case algorism.to_i
             when 1
                 @roman_algorisms.push("I")
             when 2
                 @roman_algorisms.push("II")
             when 3
                 @roman_algorisms.push("III")            
             when 4
                 @roman_algorisms.push("IV")
             when 5
                 @roman_algorisms.push("V")
             when 6
                 @roman_algorisms.push("VI")
             when 7
                 @roman_algorisms.push("VII")
             when 8
                 @roman_algorisms.push("VIII")
             when 9
                 @roman_algorisms.push("IX")
             end
            end
         end   
         @roman_algorisms
    end

    def thens_algorism(arabic_unit)        
        arabic_unit.to_s.reverse.split('').each do |algorism|
            if algorism.to_i < 10 && algorism.to_i > 0
             case algorism.to_i
             when 1
                 @roman_algorisms.unshift("X")
             when 2
                 @roman_algorisms.unshift("XX")
             when 3
                 @roman_algorisms.unshift("XXX")
             when 4
                 @roman_algorisms.unshift("XL")
             when 5
                 @roman_algorisms.unshift("L")
             when 6
                 @roman_algorisms.unshift("LX")
             when 7
                 @roman_algorisms.unshift("LXX")
             when 8
                 @roman_algorisms.unshift("LXXX")
             when 9
                 @roman_algorisms.unshift("XC")
             end
            end
         end   
         @roman_algorisms
    end

    def hundreds_algorism(arabic_unit)        
        arabic_unit.to_s.reverse.split('').each do |algorism|
            if algorism.to_i < 10 && algorism.to_i > 0
             case algorism.to_i
             when 1
                 @roman_algorisms.unshift("C")
             when 2
                 @roman_algorisms.unshift("CC")
             when 3
                 @roman_algorisms.unshift("CCC")
             when 4
                 @roman_algorisms.unshift("CD")
             when 5
                 @roman_algorisms.unshift("D")
             when 6
                 @roman_algorisms.unshift("DC")
             when 7
                 @roman_algorisms.unshift("DCC")
             when 8
                 @roman_algorisms.unshift("DCCC")
             when 9
                 @roman_algorisms.unshift("CM")
             end
            end
         end   
         @roman_algorisms
    end

    def thousands_algorism(arabic_unit)        
        arabic_unit.to_s.reverse.split('').each do |algorism|
            if algorism.to_i < 10 && algorism.to_i > 0
             case algorism.to_i
             when 1
                 @roman_algorisms.unshift("M")
             when 2
                 @roman_algorisms.unshift("MM")
             when 3
                 @roman_algorisms.unshift("MMM")
             when 4
                 @roman_algorisms.unshift("IV-")
             when 5
                 @roman_algorisms.unshift("V-")
             when 6
                 @roman_algorisms.unshift("VI-")
             when 7
                 @roman_algorisms.unshift("VII-")
             when 8
                 @roman_algorisms.unshift("VIII-")
             when 9
                 @roman_algorisms.unshift("IX-")
             end
            end
         end   
         @roman_algorisms
    end
end