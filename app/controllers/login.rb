get '/login' do
  erb :login
end

post '/login' do
  username = params[:username]
  password = params[:password]
  user = User.find_by(username: username, password: password)
  if user
    session[:user_id] = user.id
    redirect to "/users/#{user.id}"
  else
    redirect to "/login"
  end
end

get '/logout' do
  session.delete(:user_id)
  redirect to '/'
end

post '/signup' do
  username = params[:username]
  password = params[:password]
  user = User.create(username: username, password: password)
  if user.valid?
    redirect to "/users/#{user.id}"
  else
    redirect to "/"
  end
end
