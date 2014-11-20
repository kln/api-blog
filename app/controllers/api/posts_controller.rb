module API
  class PostsController < ApplicationController
    def index
      posts = Post.order(created_at: :desc).all
      render json: { posts: posts.map { |p| post_hash(p) } }
    end

    def show
      if post = Post.find_by_id(params[:id])
       	render json: post_hash(post)
      else
        render json: { error: "Não encontramos nenhum post com id #{params[:id]}" }
      end
    end

  end
end