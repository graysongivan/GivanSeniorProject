class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def home
    @title = 'home'
    @stores = Store.all
    @store_options = @stores.map{ |u| [ u.name, u.id ] }
  end
end
