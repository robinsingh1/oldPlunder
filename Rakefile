# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'rubygems'
require 'bundler'
Bundler.require

require 'bubble-wrap/location'
require 'bubble-wrap/http'
#require 'map-kit-wrapper'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'plunder'
  app.version = "0.1"
  app.pods do
     pod "PaperFold-pod", :git => "https://github.com/yestoall/PaperFold-pod.git"
  end
end
