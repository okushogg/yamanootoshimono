class Admin::MountainNamesController < ApplicationController
  def show
    session[:prefecture][:mountain_id] = MountainName.
    @mountain_name = MountainName.find([:mountain_id])
  end

  def edit
  end
end
