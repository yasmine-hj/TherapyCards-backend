class DropTableUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :users
    drop_table :responses

  end
end
