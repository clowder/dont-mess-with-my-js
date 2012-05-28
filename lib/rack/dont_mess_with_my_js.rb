module Rack
  class DontMessWithMyJs
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body = @app.call(env)

      headers['Cache-Control'] = "no-transform; #{ headers['Cache-Control'] }"

      [status, headers, body]
    end
  end
end

