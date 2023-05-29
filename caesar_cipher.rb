def caesar_cipher(string, shift)
  
  alpha_arr = ('a'..'z').to_a 
  string_arr = string.chars

  trans_arr = string_arr.map do |char|
    if char.match(/[a-zA-Z]/)
      is_upcase = check_case(char)

      char_index = alpha_arr.index(char.downcase)
      shifted_index = check_index(char_index, shift)

      shifted_char = alpha_arr[shifted_index]
      trans_char = is_upcase ? shifted_char.upcase : shifted_char
    else 
      char
    end
  end

  trans_arr.join()
end

def check_case(char)
  is_upcase = char == char.upcase ? true : false
end

def check_index(index, shift)
  shifted_index = index + shift

  idx = shifted_index > 26 ? shifted_index - 26 : shifted_index
end



