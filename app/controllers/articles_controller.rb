class ArticlesController < ApplicationController

  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(task_params)
    @article.save
    redirect_to article_path(@article)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def task_params
    params.require(:article).permit(:title, :content)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end
