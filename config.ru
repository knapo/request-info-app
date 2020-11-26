require File.expand_path('../boot', __FILE__)

app = proc do |env|
  req = Rack::Request.new(env)
  LOGGER.info("Request ip: #{req.ip}")
  LOGGER.info(req.inspect)
  if req.post?
    LOGGER.info("Body:")
    LOGGER.info(req.body.read)
  end
  [ 200, {'Content-Type' => 'application/json'}, [env.to_json]]
end

run app
