class RemoveUserFromResponses < ActiveRecord::Migration[6.0]
  def change
    if foreign_key_exists?(:responses, :use)
      remove_foreign_key :responses, :use
    end
  end
end
