module MorseCodeDecoder
  MORSE_CODE_DICT = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
    '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I',
    '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }.freeze

  def self.decode_char(morse_char)
    MORSE_CODE_DICT.key(morse_char)
  end

  def self.decode_word(morse_word)
    morse_word.split.map { |char| decode_char(char) }.join
  end

  def self.decode_message(morse_message)
    words = morse_message.split('   ') # Words are separated by 3 spaces
    decoded_words = words.map { |word| decode_word(word) }
    decoded_words.join(' ')
  end
end

puts MorseCodeDecoder.decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
