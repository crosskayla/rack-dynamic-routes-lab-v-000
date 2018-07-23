class Application

  @@items = []

  def call(env)

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match "/items/"
      item_name = req.path.split("/items/").last
      item = @@items.find{|i| i.name == item_name}

      if item
        resp.write item.price
      else
        resp.write "Item not found"
      end

    else
      resp.write "Path not found"
      resp.status = 404
    end

  end

end
