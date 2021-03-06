class ArticlesController < ApplicationController
  # before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    if params[:user_id]
      @articles = Article.find(params[:user_id]).articles
    else
      @articles = Article.order(created_at: :asc).page(params[:page])
    end
  end

  def show
    @article = Article.find_by(id: params[:id])
    # @comment = Comment.new
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @article.to_json(only: [:title, :body, :id]) }
    end
  end

  def new
    @article = Article.new(user_id: current_user.id)
    @article.comments.build()
  end

  def edit
    @article = Article.find_by(id: params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @article = Article.find_by(id: params[:article_params])
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def body
    article = Article.find(params[:id])
    render json: article
    # render json: ArticleSerializer.serialize(article)
  end

  def article_data
      article = Article.find(params[:id])
      render json: article_params.to_json
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      # params.fetch(:article, {})
      # params.require(:article).permit(:id, :title, :body, :comment)
    
      params.require(:article).permit(:id, :title, :body, subject_ids:[], subjects_attributes: [:name])
    end
end

