module Egoist
  module ApplicationControllerDecorator
    def say_hi()
      'hello'
    end
  
  #def login_required
  #   if !current_user
  #     respond_to do |format|
  #       format.html  { 
  #         redirect_to '/auth/ego_id'
  #       }
  #       format.json {
  #         render :json => { 'error' => 'Access Denied' }.to_json
  #       }
  #     end
  #   endas
  # end

  #def current_user
  #   return nil unless session[:user_id]
  #   @current_user ||= User.find_by_uid(session[:user_id]['uid'])
  # end
  end
   
end