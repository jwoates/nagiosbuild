class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.string :command_description
      t.string :command_check

      t.timestamps
    end
    add_column :services, :command_id, :integer
  end
  
end
