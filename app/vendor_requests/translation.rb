class Translation
    def self.convert_text(source, target, text)
       res = HTTParty.get("https://www.googleapis.com/language/translate/v2?key=AIzaSyDkZgKOp9wJl6ALYbUo_x6yX-6iU2YFIYU&source=#{source}&target=#{target}&q=#{text}")
       return res.body
    end
end