class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  respond_to :html

  before_filter :authenticate_user!

  def index
    @articles = Article.all
    respond_with(@articles)
  end

  def show
    respond_with(@article)
  end

  def new
    @article = Article.new
    respond_with(@article)
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    @article.save
    respond_with(@article)
  end

  def update
    @article.update(article_params)
    respond_with(@article)
  end

  def destroy
    @article.destroy
    respond_with(@article)
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:publishable, :video, :part1, :quiz1, :q1answer, :q1wrong1, :q1wrong2, :part2, :quiz2, :q2answer, :q2wrong1, :q2wrong2, :part3, :quiz3, :q3answer, :q3wrong1, :q3wrong2)
    end
end
