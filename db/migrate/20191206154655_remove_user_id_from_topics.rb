class RemoveUserIdFromTopics < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :user_id, :string
  end
end
