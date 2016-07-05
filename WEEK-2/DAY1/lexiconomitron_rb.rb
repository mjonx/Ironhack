class Lexiconomitron
  def eat_t(word)
    word.split('').select do |char|
      char.downcase != 't'
    end.join
  end

  def shazam(words)
    words.map!(&:reverse)
    [words.first, words.last].map { |word| eat_t(word) }
  end

  def oompa_loompa(words)
    words.select { |word| word.size <= 3 }.map { |word| eat_t(word) }
  end
end
