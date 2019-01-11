class PostsController < ApplicationController
  def index
    @posts = Post.all
  end


  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @category = Category.all
  end

  def create 
    
    @post = Post.new(post_params)
    

    if @post.save 
      redirect_to posts_path, :notice =>  "Your posts have been saved"
      
    else
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
    
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to post_path, :notice => "The post has been updated"

    else
      render "Edit"
    end
  end


  def destroy
    @post = Post.find(params[:id])
    @post.delete
    redirect_to posts_path, :notice => "The post has been Deleted"

  end


  private 
  def post_params
    params.require(:post).permit(:title, :body, :category_id, :author_id)
  end

end
