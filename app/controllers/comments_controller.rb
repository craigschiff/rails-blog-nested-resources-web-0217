class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.post = Post.find(params[:comment][:post_id])
    if @comment.save
      redirect_to post_path(@comment.post)
    else
      erb :'posts/show'
    end
  end

    private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
