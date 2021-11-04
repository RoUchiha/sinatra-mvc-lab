class PigLatinizer

    def piglatinize(text)
        text.split(" ").map { |w| piglatinize_word(w)}.join(" ")
    end

    def vowel(letter)
        letter.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if vowel(word[0]) 
            word + "way"
        else
            first_vowel = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..first_vowel-1)
            word_remains = word.slice(first_vowel..word.length)
            word_remains + consonants + "ay"
        end
    end
    

end