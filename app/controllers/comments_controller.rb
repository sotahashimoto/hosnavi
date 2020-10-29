class CommentsController < ApplicationController
  before_action :today_events

  def show
    @hospital = Hospital.find(params[:hospital_id])
    @comment = Comment.new
    @comments = @hospital.comments
  end

  def create
    @hospital = Hospital.find(params[:hospital_id])
    @comments = @hospital.comments
    @comment = current_member.comments.new(comment_params)
    @comment.hospital_id = @hospital.id
    if @comment.save
      @comment = Comment.new
    else
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :score)
  end
end
