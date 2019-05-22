require 'pry'

def reformat_languages(languages)
  new_hash = {}
  arr_js = languages.keys

  languages.each do |style, lang_hash|
    arr = []

    #arr << style
    lang_hash.each do |lang, attr_hash|
      if lang == ":javascript"
        attr_hash[:style] = arr_js
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
