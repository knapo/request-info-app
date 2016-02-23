require File.expand_path('../boot', __FILE__)

app = proc do |env|
  info = "<html><body><code>#{CGI::escapeHTML(env.inspect)}</code></body></html>"
  [ 200, {'Content-Type' => 'text/html'}, [info]]
end

run app
