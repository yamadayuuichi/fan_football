class RemoveUserIdIdFromTopics < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :user_id_id, :bigint
  end
end
