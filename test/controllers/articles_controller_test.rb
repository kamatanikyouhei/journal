require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

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
    params.require(:item).permit(:title, :body,)
  end

end
