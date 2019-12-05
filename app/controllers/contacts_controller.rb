class ContactsController < ApplicationController

  get "/contacts" do
    if logged_in?
      @user= current_user
      @contacts= @user.contacts
      erb :'contacts/index'
    else
      redirect to '/'
    end
  end

  get "/contacts/new" do
    if logged_in?
      erb :'contacts/new'
    else
      redirect to '/'
    end
  end

  post "/contacts" do
    params.to_s
  end

  get "/contacts/:id" do

  end

  get "/contacts/:id/edit" do

  end

  patch "/contacts/:id" do

  end

  delete "/contacts/:id/delete" do

  end



end
