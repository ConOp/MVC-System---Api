class PostsController < ApplicationController
before_action :redirect_if_not_signed_in, only: [:new]
  def show
    @post = Post.find(params[:id])
  end

  def new
    @branch = params[:branch]
    @categories = Category.where(branch: @branch)
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save 
      redirect_to post_path(@post) 
    else
      redirect_to root_path
    end
  end

 def post_params
   params.require(:post).permit(:content, :title, :category_id)
                        .merge(user_id: current_user.id)
 end

end