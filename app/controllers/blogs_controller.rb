class BlogsController < ApplicationController
  def index
    @blogs = Blogs.all
  end

  def show
  end

  def new
    @blogs = Blogs.new
  end

  def create
    blog = Blogs.new(blogs_params)
    blog.save
    redirect_to blogs_path
  end

  def edit
  end

  private
  def blog_params
   params.require(:blog).permit(:title, :category, :body)
  end
end
