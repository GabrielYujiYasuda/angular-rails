class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.all()
    render json:articles, status: 200
  end
end
