Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3001'
      resource(
        '*',
        headers: :any,
        expose: ['access-token', 'expiry', 'token-type',"Authorization"],
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
      )
    end
end
  