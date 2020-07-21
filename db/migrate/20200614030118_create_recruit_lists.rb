class CreateRecruitLists < ActiveRecord::Migration[6.0]
  def change
    create_table :recruit_lists do |t|

      t.timestamps
    end
  end
end
