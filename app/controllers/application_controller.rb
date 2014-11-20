class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	def post_hash(post)
  	{
  		title: post.title,
  		author: post.author,
  		link: post.link,
  		description: post.description
  	}	    
	end

end
