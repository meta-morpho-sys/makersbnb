# Server
class MakersBnB < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  register Sinatra::Flash

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end

    # Uncomment the method below when space_id has been stored in session on post /spaces route
    # def current_space
    #   @current_space ||= Space.get(session[:space_id])
    # end
  end

  get '/' do
    redirect '/users/new'
  end
end
