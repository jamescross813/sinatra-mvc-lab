class PigLatinizer

    attr_reader :text

    def initialize(text_input)
        # binding.pry
        @text = text_input
    end

    def split_word
        binding.pry
        @split_text = text.split(" ")
    end

    def translate
        @split_text.collect do |text|
            if text.match(/^[aeiou]/i)
                "#{@text}way"
            else
                parts = @text.split(/([aeiou].*)/)
                "#{parts[1]}#{parts[0]}ay"
            end
        end
    
    end
end