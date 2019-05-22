require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, lang_hash|
    arr = []
    arr << style
    lang_hash.each do |lang, attr_hash|
      if lang == ":javascript"
        attr_hash[:style] = languages.keys
        new_hash[lang] = attr_hash
      elsif languages[style].include?(lang)
        attr_hash[:style] = arr.uniq
        new_hash[lang] = attr_hash
      end
      
    end
  end

  return new_hash
end
