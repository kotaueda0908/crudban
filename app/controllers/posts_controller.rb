class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to("/home/index")
    else
      render("posts/new")
    end
  end

    def update
      @post = Post.find(params[:id])
       if @post.update(post_params)
         redirect_to("/home/index")
       else
         render 'edit'
       end
    end

    def show
      @post = Post.find(params[:id])
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to("/home/index")
    end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_my_thread
    @post = Post.find(params[:id])
  end

end
