module Sinatra
  def self.included(klass)
   # puts "Mock Sinatra has been included"
  end

  def run(path)
    if paths.has_key?(path)
      paths[path].call
    else
      raise StandardError.new("No route for #{path}")
    end
  end

  def paths
    @paths ||= {}
  end

  def get(path, &block)
   # puts "Defining a GET request for #{path}"
    paths[path] = block
  end

end

include Sinatra