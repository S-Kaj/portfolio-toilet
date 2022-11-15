class AddIndexToToiletsToiletName < ActiveRecord::Migration[6.1]
  def change
    add_index :toilets, :toilet_name, unique: true
  end
end
