class UsersController < ApplicationController < Devise::RegistrationsController

  def index
   @users = User.all
  end

  devise_for :members, :controllers => { :registrations => 'memberships' }

end
