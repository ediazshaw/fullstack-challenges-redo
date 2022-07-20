MORSE_CODE = {
  a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.', f: '..-.',
  g: '--.', h: '....', i: '..', j: '.---', k: '-.-', l: '.-..',
  m: '--', n: '-.', o: '---', p: '.--.', q: '--.-', r: '.-.', s: '...',
  t: '-', u: '..-', v: '...-', w: '.--', x: '-..-', y: '-.--', z: '--..'
}

def encode(text)
  # TODO: write a method which returns the morse sentence for the given text
  # NOTE: you may want to extract a `encode_word` method
  encoded = []
  text.downcase.chars.each do |c|
    if c == " "
      encoded << "|"
    elsif c.match?(/[A-Za-z]/)
      encoded << MORSE_CODE[c.to_sym]
    end
  end
  almost_morse = encoded.join(" ")
  almost_morse.gsub(/\s\|\s/, "|")
end

# p encode("hello, world'")
