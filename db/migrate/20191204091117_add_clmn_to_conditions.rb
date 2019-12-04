class AddClmnToConditions < ActiveRecord::Migration[5.2]
  def change
    add_column :conditions, :title, :string
  end
end
