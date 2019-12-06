class AddTopicIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :topic, foreign_key: true
  end
end
