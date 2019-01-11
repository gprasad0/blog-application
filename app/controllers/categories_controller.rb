class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def edit
  end

  def new
  end 

  def show
    @category = Category.find(params[:id])
    @title = @category.name
    @posts = @category.posts
  end

  private 
  def category_params
    params.require(:category).permit(:name)
  end
end
