class ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=Apple&from=2021-10-18&sortBy=popularity&apiKey=#{Rails.application.credentials[:news_api_key]}")
    articles = response.parse["articles"]
    render json: articles
  end
end
