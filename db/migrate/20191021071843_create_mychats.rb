class CreateMychats < ActiveRecord::Migration[5.2]
  def change
    create_table :mychats do |t|
      t.text :message
      t.string :username

      t.timestamps
    end
  end
end
