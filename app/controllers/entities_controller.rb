class EntitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group

  def new 
  end

  def create
  end
end
