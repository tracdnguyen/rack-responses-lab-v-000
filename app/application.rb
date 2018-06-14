class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.new

    if time.hour < 12 && time.min < 1 && time.sec < 1
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
