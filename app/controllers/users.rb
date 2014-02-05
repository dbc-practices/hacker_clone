get '/users/:id' do
  id = params[:id]
  @user = User.find(id)
  @posts = @user.posts
  @comments = @user.comments
  erb :user
end

get '/users/:id/posts' do
  id = params[:id]
  @user = User.find(id)
  @posts = @user.posts
  erb :user_posts
end

get '/users/:id/comments' do
  id = params[:id]
  @user = User.find(id)
  @comments = @user.comments
  erb :user_comments
end
