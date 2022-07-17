def colorful?(number)
  # TODO: return true if the number is colorful, false otherwise
  products_middle = []
  final_product = 1
  digits = number.to_s.chars.map do |digit|
    digit.to_i
  end
  digits.each_with_index do |_digit, index|
    products_middle << (digits[index] * digits[index + 1]) if index != digits.size - 1
  end
  digits.each do |digit|
    final_product = final_product * digit
  end
  results = digits + products_middle + final_product.to_s.split
  results.uniq == results
end
p colorful?(236)
