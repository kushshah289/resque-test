require "rubygems"
require "resque"
require "rake"
require "./word_analyzer"
require "resque/tasks"
require "resque/scheduler/tasks"
require "resque/scheduler"
require "resque/scheduler/delaying_extensions"


idea = ARGV
puts "Analyzing your idea: #{idea.join(" ")}"
idea.each do |word|
  puts "Asking for a job to analyze: #{word}"
  Resque.enqueue(WordAnalyzer, word)
  # This is where we would enqueue something

  #hello
  #
  #
  #
  #
  ahlsd;akd;laskd ADDUSERR
  slkdjalksdja ADDUSERR
  jshdlashdljjasjdlkajdlkasjdlka ADDUSERR

  master
  masterm LIST LIST
  # => LIST
  # => LIST LIST LIST
  #heeloooo kushhhh
  kasdkljasldjalskdjakjds
  #
  #code this bad boii
  #
  #
  #
  #
  #
  #
  #

end
