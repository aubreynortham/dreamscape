class CreateDreams < ActiveRecord::Migration[5.0]
  def change
    create_table :dreams do |t|
      t.string :title
      # good use of text AR datatype
      t.text :entry

      t.timestamps
    end
  end
end
