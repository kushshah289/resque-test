 require 'resque_scheduler'

 
 Resque.schedule = YAML.load_file('your_response_scheduler.yml')