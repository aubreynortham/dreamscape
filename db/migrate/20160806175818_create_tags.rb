class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.references :dream, index: true, foreign_key: true
      t.references :classification, index: true, foreign_key: true

      t.timestamps
    end
  end
end
