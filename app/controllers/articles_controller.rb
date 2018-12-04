class ArticlesController < ApplicationController
 def   show
    @articles = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @articles = Article.new
  end


  private

  def article_params
    params.require(:Article).permit(:title, :body,)
  end

end
