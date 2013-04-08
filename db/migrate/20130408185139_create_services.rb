class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :service_use
      t.string :service_definition
      t.integer :hostgroup_id

      t.timestamps
    end
  end
end
