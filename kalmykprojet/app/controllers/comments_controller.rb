class CommentsController < ApplicationController
  before_action :set_article
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = @article.comments #has_many associations
    # render :layout => false
    # render :json => @comments
    respond_to do |format|
      format.html {render 'index.html', :layout => false}
      format.js {render 'index.js', :layout => false}
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  # def show
  #   @comment = Comment.find_by(id: params[:id])
  # end

  # GET /comments/new
  # def new
  #   @article = Article.find_by(id: params[:id])
  #   @comment = Comment.new
  # end

  # GET /comments/1/edit
  # def edit
  # end

  # POST /comments
  # POST /comments.json
  def create
    @comment = @article.comments.build(comment_params)
    # respond_to do |format|
      if @comment.save
      #   format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
      #   format.json { render :show, status: :created, location: @comment }
      # else
      #   format.html { render :new }
      #   format.json { render json: @comment.errors, status: :unprocessable_entity }
      # end
      render 'create.js', :layout => false
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
    @article = Article.find_by(id: params[:id])
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      # params.fetch(:comment, {})
      params.require(:comment).permit(:content, :user_id, :article_id)
    end
end
