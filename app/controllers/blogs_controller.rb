class BlogsController < ApplicationController
    before_action :set_blog, only: [:edit, :update, :show, :destroy]
  
  def index
    @blogs = Blog.includes(:student).order(tittle: :asc)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:success] = "Blog successfully created"
      redirect_to blogs_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
  end
  
  def edit
  end

  def update
      if @blog.update(blog_params)
        flash[:success] = "Blog was successfully updated"
        redirect_to blog_path(@blog)
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  def destroy  
    @blog.destroy
      flash[:success] = 'Blog was successfully deleted.'
      redirect_to blog_path
  end
  
  
  

  private 
  def blog_params
    params.require(:student).permit(:title, :content, :student_id)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
