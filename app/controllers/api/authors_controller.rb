class Api::AuthorsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "12345", only: :show_premium
  def index
    authors = Author.all
    render json: authors, status: 200
  end

  def high_rank
    authors = Author.where("rank > 0")
    render json: authors, status: 200
  end

  def show
    author = Author.where("id = ?", params[:id])
    if author != []
      articles = Article.where("author_id = ?", params[:id])
      render json: {
        author: author,
        articles: articles
      }, status: 200      
    else
      render json: {
        error: "author not found"
      },  status: 404
    end
  end

  def show_premium
    author = Author.where("id = ?", params[:id])
    if author != []
      if params[:only_premium] and params[:only_premium] == "true"
        articles = Article.where("author_id = ? and premium = true", params[:id])
        render json: {
          author: author,
          articles: articles
        }, status: 200      
      else
        articles = Article.where("author_id = ?", params[:id])
        render json: {
          author: author,
          articles: articles
        }, status: 200     
      end
    else
      render json: {
        error: "author not found"
      },  status: 404
    end
  end
end
