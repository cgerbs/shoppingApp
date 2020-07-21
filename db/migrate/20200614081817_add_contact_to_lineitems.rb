class AddContactToLineitems < ActiveRecord::Migration[6.0]
  def change
    add_reference :lineitems, :contact, foreign_key: true
  end
end
