class AddUsersToDreams < ActiveRecord::Migration[5.0]
  def change
    add_reference :dreams, :user, foreign_key: true
  end
end
