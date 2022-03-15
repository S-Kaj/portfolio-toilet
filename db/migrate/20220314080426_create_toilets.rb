class CreateToilets < ActiveRecord::Migration[6.1]
  def change
    create_table :toilets do |t|
      t.string :toilet_name, null:false
      t.float :latitude, null: false
      t.float :longtitude, null: false
      t.boolean :multipurpose
      t.integer :m_urinal
      t.integer :m_room
      t.boolean :m_washlet
      t.integer :w_room
      t.boolean :w_washlet
      t.time :open_time
      t.time :close_time
      t.string :remark
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
