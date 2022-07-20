require_relative 'encoder'
def decode(morse_text)
  # TODO: Decode the morse text you just got!
  final_array = []
  sentence = []
  array_of_arrays = morse_text.split.map do |elem|
    if elem.include?("|")
      elem.gsub(/\|/, " | ").split
    else
      elem
    end
  end
  array_of_arrays.each do |elem|
    if elem.instance_of?(Array)
      elem.each do |subelem|
        final_array << subelem
      end
    else
      final_array << elem
    end
  end
  final_array.each do |c|
    if c == "|"
      sentence << " "
    else
      sentence << MORSE_CODE.key(c).to_s.upcase
    end
  end
  sentence.join
end
p decode(".... ..|--. ..- -.-- ...")
