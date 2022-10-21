require 'bundler'
Bundler.require  # lancer dans le terminal $ bundle install

$:.unshift File.expand_path("./../lib", __FILE__)

# -> plus besoin de préciser le path exact grâce à $:.unshift File.....
# par exemple require 'scrapper' suffira


# MyClass.new.perform