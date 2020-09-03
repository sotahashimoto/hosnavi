class CommentsController < ApplicationController
  def create
    @hospital = Hospital.find(params[:hospital_id])
    @comment = current_member.comments.new(comment_params)
    @comment.hospital_id = @hospital.id
    @comment.save
    redirect_back(fallback_location: root_path)
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
