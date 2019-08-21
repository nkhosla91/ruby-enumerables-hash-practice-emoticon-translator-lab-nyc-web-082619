# require modules here
require 'yaml'

def load_library(emoticons)
  data = YAML.load_file(emoticons)
  
  hash = {:get_emoticon => {}, :get_meaning => {}}
  
  data.each do |word, set|
     hash[:get_meaning] = word
     hash[:get_emoticon] = set
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end