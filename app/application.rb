class Application

  @@items = []

  def call(env)

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match "/items/"
      item_name = req.path.split("/items/").last


    end

  end

  def handle_search(item)
    @@items.include?(item)
  end

end
