require 'rails_helper'

describe 'Posts API' do
  let(:url) { 'http://api.localhost.com' }
  before do
  	@posts = FactoryGirl.create_list(:post, 2)
  end

  describe 'GET #index' do
	  it 'should list all posts' do
	  	get "#{url}/posts"
	    expect(response).to be_success
	    expect(json['posts'].count).to eq(2) 
	  end
	end
  
  describe 'GET #show' do
  	let(:post) { @posts.last }

	  it 'should list a post' do
	  	get "#{url}/posts/#{post.id}"
	  	expect(response).to be_success
	    expect(json['title']).to eq(post.title)
	  end

	  it 'should return a error' do
	  	get "#{url}/posts/100"
	  	expect(response).to be_success
	  	expect(json).to include('error')
	    expect(json['error']).to eq("Não encontramos nenhum post com id 100")
	  end
	end

end
