class AddPicToNewspapers < ActiveRecord::Migration[7.1]
  def change
    add_column :newspapers, :pic, :string
  end
end
