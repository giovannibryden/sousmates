class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:success] = "Fuck yeah!"
      redirect_to :back
    else
      flash[:notice] = "Ah shit..."
      redirect_to :back
    end
  end
 
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id, :email, :name)
  end
end
