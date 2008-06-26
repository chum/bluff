class HomeController < ApplicationController
  include AuthenticatedSystem
  
  before_filter :login_required, :except => "index"
  
  def index
    render :text => "hello"
  end
  
  def data
    render :text => "data"
  end
end
