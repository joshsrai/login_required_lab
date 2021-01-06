class SessionsController < ApplicationController
    def new
    end
  
    def create
      if params[:name] == nil || params[:name] == ""
        redirect_to login_path
      else
        session[:name] = params[:name]
        redirect_to root_path
      end
    end
  
    def destroy
        session.delete :name
        redirect_to root_path
    end
  
    # Build out the SessionsController.
    # got the code from the sessions lab
  end