class AdminController < ApplicationController
  def index
    @total_contacts = Contact.count

    # @total_players = Player.count
  end
end
