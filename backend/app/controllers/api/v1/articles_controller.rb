class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.all()
    render json:articles, status: 200
  end

  def show
    article = Article.find_by(id:params[:id])

    if article
      render json:article , status: 200
    else
      render json: { error: "Article not found!"}
    end
  end
end
