class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	def post_hash(post)
  	{
      id: post.id,
  		title: post.title,
  		author: post.author,
  		link: post.link,
  		description: post.description,
      created_at: post.created_at.strftime("%d/%m/%Y")
  	}	    
	end

end
