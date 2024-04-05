class CreateNews < ActiveRecord::Migration[7.1]
  def change
    create_table :news do |t|
      t.integer :newspaper_id
      t.string :title
      t.text :content
      t.string :pic

      t.timestamps
    end
  end
end
