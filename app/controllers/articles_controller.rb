# app/controllers/articles_controller
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
end
