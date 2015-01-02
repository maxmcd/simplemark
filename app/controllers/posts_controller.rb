class PostsController < ApplicationController
    def new
        @textarea_placeholder = 
            "# Simplemark\n\n" + 
            "Welcome to simplemark"
    end

    def show
        @post = Post.find(params[:id].to_i(36))
        @html = $markdown.render(@post.body)
    end

    def create
        @post = Post.create(post_params)
        redirect_to "/#{@post.string_id}"
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
end
