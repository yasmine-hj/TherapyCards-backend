class CreateResponseTable < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :response
      t.belongs_to :card, foreign_key: true

      t.timestamps

    end
  end
end
