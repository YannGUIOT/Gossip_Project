require 'bundler'
Bundler.require  # lancer dans le terminal $ bundle install

$:.unshift File.expand_path("./../lib", __FILE__)

require 'router'
require 'controller'
require 'view'
require 'gossip'

Router.new.perform