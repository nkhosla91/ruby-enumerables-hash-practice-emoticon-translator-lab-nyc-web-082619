# require modules here
require 'yaml'
require 'pry'

def load_library(emoticons)
  data = YAML.load_file(emoticons)
  
  hash = {'get_emoticon' => {}, 'get_meaning' => {}}
  
  data.each do |word, innerhash|
    #binding.pry
     hash['get_meaning'][innerhash[1]] = word
     hash['get_emoticon'][innerhash[0]] = data[word][1]
  end
  #binding.pry
  hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end