class HomeController < ApplicationController
  before_action :forbid_user_login, {only: [:top]}

  def top
  end
  def about
  end
end
