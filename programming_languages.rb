require 'pry'

def reformat_languages(languages)
  new_hash = {}
  arr_js = []

  languages.each do |style, lang_hash|
    arr = []

    #arr << style
    lang_hash.each do |lang, attr_hash|
      if lang == ":javascript"
        arr_js << style
        attr_hash[:style] = languages.keys
        new_hash[lang] = attr_hash
      else #if languages[style].include?(lang)
        arr << style
        attr_hash[:style] = arr.uniq
        new_hash[lang] = attr_hash
      end

    end
  end

  return new_hash
end
