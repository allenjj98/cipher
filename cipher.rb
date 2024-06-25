# puts "String: "
# original_string = gets.chomp

# puts "Shift factor: "
# shift_factor = gets.chomp


class Cipher
    def shift_string(string, shift_num)
    string_array = string.downcase.split("")

    string_ascii = string_array.map do |letter|
        if letter.ord == 32
            letter = 32
        elsif letter.ord.between?(33, 64)
            letter = letter.ord
        elsif letter.ord + shift_num.to_i > 122
            wrap_length = letter.ord + shift_num.to_i - 122
            letter = 97 + (wrap_length - 1)
        else
            letter.ord + shift_num.to_i
        end
    end
    string_ascii.map { |number| number.chr}.join("")
    end
    
end
