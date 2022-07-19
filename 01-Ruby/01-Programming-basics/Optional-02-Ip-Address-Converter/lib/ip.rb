def complete_binary(num, size)
  num.unshift(0) while num.size < size
  num
end

def convert_to_binary(integer, size)
  num = integer.to_s(2).chars.map { |digit| digit.to_i }
  complete_binary(num, size)
end

def ip_to_num(ip_address)
  # TODO: return the number version of the `ip_address` string
  binaries = []
  sum = 0
  splitted = ip_address.split(".")
  splitted.each do |number|
    binaries += convert_to_binary(number.to_i, 8)
  end
  binaries.reverse.each_with_index do |element, index|
    sum += (2**index) if element == 1
  end
  sum
end

def num_to_ip(number)
  # TODO: return the string IP address from the `number`
  almost_ip = []
  convert_to_binary(number, 32).each_slice(8).to_a.each do |string|
    almost_ip << string.join.to_i(2)
  end
  almost_ip.join(".")
end

# p convert_to_binary(37)
# p ip_to_num("192.168.0.1")
# p num_to_ip(631271850)
