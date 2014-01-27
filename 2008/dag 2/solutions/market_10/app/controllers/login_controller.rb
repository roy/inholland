class LoginController < ApplicationController
  def index
  end
  
  def login
    if person = Person.authenticate(params[:email], params[:password])
      session[:login] = person.id
      flash[:notice] = "Hello again #{person.firstname}!"
      redirect_to :controller => 'welcome'
    else
      flash.now[:notice] = "Email or password incorrect"
      render :action => 'index'
    end
  end
  
  def logout
    session[:login] = nil
    redirect_to :controller => "welcome"
  end

end
