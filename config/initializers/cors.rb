Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "example.com", "localhost:5173", "when-the-f1-frontend.onrender.com"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end
