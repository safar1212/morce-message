def morse_code(char)
  code = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
    'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }
  code.key(char)
end

def decode_word(word)
  array = word.split
  english = []
  array.each { |letter| english.insert(english.length, morse_code(letter)) }
  english.join
end

def decode_msg(msg)
  array = msg.split('   ')
  english = []
  array.each { |word| english.insert(english.length, decode_word(word)) }
  english.join(' ')
end

puts morse_code('.-')

puts decode_word('-- -.--   -. .- -- .')

puts decode_msg('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
