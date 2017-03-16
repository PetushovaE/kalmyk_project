class CommentsController < ApplicationController
  before_action :set_article
  # before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = @article.comments #has_many associations
    
    respond_to do |format|
      format.html {render 'index.html', :layout => false}
      format.js {render 'index.js', :layout => false}
    end
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def new
    @article = Article.find(id: params[:id])
    @comment = Comment.new
  end

  def create
    # @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    # @comment = Comment.create(comment_params)
    # @comment.user = current_user
      if @comment.save
      redirect_to 'create.js', :layout => false
    else
      render "articles/show"
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @article = Article.find(params["comment"][:article_id])
    @comment = @article.comments.find_by(id: params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_article
      @article = Article.find(params[:article_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end
    def comment_data
      @comment = Article.find(params[:id])
      render json: comment.to_json(only: [:content, :id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      # params.fetch(:comment, {})
      params.require(:comment).permit(:content, :user_id, :article_id)
    end
end
