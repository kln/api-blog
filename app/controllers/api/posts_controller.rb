module API
  class PostsController < ApplicationController
    def index
      posts = Post.select("title, to_char(created_at,'DD/MM/YYYY') as created_at, id").order(created_at: :desc)
      render json: { posts: posts }
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