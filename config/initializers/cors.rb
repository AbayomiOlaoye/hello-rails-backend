Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # This is the URL of the frontend app that will be making requests to our API
    origins "http://localhost:3001"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
