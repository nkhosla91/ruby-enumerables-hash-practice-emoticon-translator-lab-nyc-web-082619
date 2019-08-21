# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  data = YAML.load_file(file)
  
  hash = {'get_emoticon' => {}, 'get_meaning' => {}}
  
  data.each do |word, innerhash|
    #binding.pry
     hash['get_meaning'][innerhash[1]] = word
     hash['get_emoticon'][innerhash[0]] = data[word][1]
  end
  #binding.pry
  hash
end

def get_japanese_emoticon(file, emoticon)
  hash = load_library(file)
  answer = hash['get_emoticon'][emoticon]
  if answer == nil
    answer = "Sorry, that emoticon was not found"
  else
    answer
  end
  answer
end

def get_english_meaning(file, emoticon)
  hash = load_library(file)
  answer = hash['get_meaning'][emoticon]
  if answer == nil
    answer = "Sorry, that emoticon was not found"
  else
    answer
  end
  answer
end