require "octokit"
require "dotenv"
require "erb"

Dotenv.load

ERB_FILE = "./ghe-stats.erb"
YAML_FILE = "./orgs.yaml"

client = Octokit::Client.new(:login => ENV["LOGIN"], :password => ENV["PASSWORD"])
user = client.user
p user

erb = ERB.new IO.read ERB_FILE
result = erb.result
p result