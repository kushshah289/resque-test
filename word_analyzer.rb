require "resque/tasks"
require "resque/scheduler/tasks"
require "resque/scheduler"
require "resque/scheduler/delaying_extensions"

class WordAnalyzer
	@queue = "word_analysis"
	def self.perform(word)
		#puts "about to do heavy duty analysis on #{word}"
		#puts "node test2_json.js --url=#{word}"
		#var xyz = `node test2_json.js --url=#{word}`
		#xyz = JSON.parse(xyz)
		#sleep 3
		#puts xyz.to_s
		#sleep 3
		#puts xyz.class
		#puts "finished with analysis on #{word}"
		Statuscode::getstatus(word)
		Resque.enqueue_at( Time.now + 60 ,self, word)
		#Resque.enqueue_in( 60 ,self, word)
	end
end

class Statuscode
	def self.getstatus(word)
		#puts "--"+word+"--"
		xyz = `node test2_json.js --url=#{word}`
		#xyz = `curl --silent https://whispering-taiga-38681.herokuapp.com/temp_check?url=#{word}`
		xyz = JSON.parse(xyz)
		puts xyz['url'].to_s + "---" + xyz['status'].to_s

	end
end

