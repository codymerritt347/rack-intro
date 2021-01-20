require 'rack'

# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_text = "This is me, adding to Rack."
my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, [my_text]]
end

run my_server