class CommentsController < ApplicationController
  def show
    @hospital = Hospital.find(params[:hospital_id])
    @comment = Comment.new
    @comments = @hospital.comments
  end

  def create
    @hospital = Hospital.find(params[:hospital_id])
    @comment = current_member.comments.new(comment_params)
    @comment.hospital_id = @hospital.id
    if @comment.save
      @comment = Comment.new
      @comments = @hospital.comments
    else
      flash[:danger] = '空白で投稿はできません'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
