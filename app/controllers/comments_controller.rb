class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to controller: "recommends", action: "show", id: "#{@comment.recommend.id}" }
        format.json
      end
    else
      render controller: "recommends", action: "show", id: "#{@comment.recommend.id}"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id, recommend_id: params[:recommend_id])
  end
end
