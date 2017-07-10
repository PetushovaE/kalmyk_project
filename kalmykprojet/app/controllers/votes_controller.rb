class VotesController < ApplicationController

	# def create
	# 	@vote = current_user.votes.build(vote_params)
	# 	if @vote.save
	# 		flash[:success] = 'You voted!'
	# 		render "articles/show"
	# 	end
	# end

	# def destroy
	# 	@vote = Vote.find_by(id: params[:id])
	# 	@vote.delete
	# 	render "articles/show", notice: 'Your vote removed'
	# end

	# private

	# def vote_params
	# 	params.require(:vote).permit(:article_id, :user_id)
	# end
end
