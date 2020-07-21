class RecruiterController < ApplicationController
  include CurrentList
  before_action :set_list
  def index
    @players = Player.order(:rating)
  end
end
