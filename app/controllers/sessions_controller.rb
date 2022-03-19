class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to(controller: 'sessions',
      action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

#redirects to the login page if :name is nil (FAILED - 1)
#redirects to login page if :name is empty (FAILED - 2)
#sets session[:name] if :name was given
#redirects to "/" if logged in

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end
  #leaves session[:name] nil if it was not set
  #clears session[:name] if it was set 
end
