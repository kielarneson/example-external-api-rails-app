Rails.application.routes.draw do
  get "/articles" => "articles#index"

  get "/auth/github/callback" => "github#authorize"
  get "/github_profile" => "github#profile"
end
