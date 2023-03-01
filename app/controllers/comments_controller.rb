class CommentsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      @comment.audit_comment = "Comment added"
      @comment.save
      redirect_to @project, notice: "Comment added successfully"
    else
      render 'projects/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end

