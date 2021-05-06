class PigLatinizer

    attr_accessor :word

    def piglatinize(words)
        pig(words)
    end

   

    def pig(words)
        
        @split_text = words.split(" ")
        @split_text.collect do |text|
            
            if text.match(/^[aeiou]/i)
               
                  "#{text}way"
               
            else
                parts = text.split(/([aeiou].*)/)
                
                "#{parts[1]}#{parts[0]}ay"
            end
            end.join(" ")
            
    end
end