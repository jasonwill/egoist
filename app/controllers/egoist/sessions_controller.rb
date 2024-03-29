module Egoist
  module SessionsController
    
    def create
      user = User.find_by_uid(params[:uid])
      if !user
      # Instantiate a new user record
        user = User.create!(:uid => ['uid'], 
                          :first_name => omniauth['extra']['first_name'],
                          :last_name => omniauth['extra']['last_name'])
      end

      session[:user_id] = omniauth

    #  flash[:notice] = "Successfully logged in"
    #  redirect_to root_path
    #end

    # Omniauth failure callback
    #def failure
    #  flash[:notice] = params[:message]
    #  redirect_to root_path
    #end

    # logout - Clear our rack session BUT essentially redirect to the provider
    # to clean up the Devise session from there too !
    #def destroy
    #  session[:user_id] = nil

    #  flash[:notice] = 'You have successfully signed out!'
    #  redirect_to "#{CUSTOM_PROVIDER_URL}/users/sign_out"
    #end
  end
end