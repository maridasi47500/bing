class AddSubtitleToNews < ActiveRecord::Migration[7.1]
  def change
    add_column :news, :subtitle, :string
  end
end
