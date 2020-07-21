module  CurrentList
  extend ActiveSupport::Concern

  def set_list
    @list = List.find(session[:list_id])
  rescue ActiveRecord::RecordNotFound
    @list = List.create()
    session[:list_id] = @list.id
  end
end