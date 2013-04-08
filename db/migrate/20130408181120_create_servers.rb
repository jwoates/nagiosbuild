class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :server_use
      t.string :server_name
      t.string :server_alias
      t.string :server_address
      t.integer :hostgroup_id

      t.timestamps
    end
  end
end
