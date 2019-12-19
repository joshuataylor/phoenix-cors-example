defmodule CorsExampleWeb.CORS do
  use Corsica.Router,
    origins: ["https://example.com"],
    max_age: 86_400,
    log: [rejected: :debug, invalid: :debug, accepted: :debug]

  resource("/api/posts", origins: "https://example.com")
  resource("/*")
end
