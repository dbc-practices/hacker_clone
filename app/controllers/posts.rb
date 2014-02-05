get '/posts/:id/comment' do
  @post = Post.find(params[:id])
  erb :comment
end

post '/posts/:id/comment' do
  author_id = session[:user_id]
  post_id = params[:id]
  content = params[:comment]
  Comment.create(content: content,
                 post_id: post_id,
                 author_id: author_id)
  redirect to "posts/#{post_id}"
end

get '/posts/new' do
  erb :new_post
end

post '/posts/create' do
  title = params[:title]
  url = params[:url]
  creator_id = session[:user_id]
  post = Post.create( title: title,
                      url: url,
                      creator_id: creator_id)
  redirect to "/posts/#{post.id}"
end

get '/posts/:id' do
  id = params[:id]
  @post = Post.find(id)
  @comments = @post.comments
  erb :show_post
end
