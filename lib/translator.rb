# require modules here
require 'yaml'

def load_library(emoticons)
  data = YAML.load_file(emoticons)
  
  emoticons_lib = {:get_emoticon => {}, :get_meaning => {}}
  
  data.each do |word, set|
     emoticons_lib[get_]meaning
    
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end