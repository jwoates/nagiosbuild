class CreateHostgroups < ActiveRecord::Migration
  def change
    create_table :hostgroups do |t|
      t.string :host_name
      t.string :host_alias

      t.timestamps
    end
  end
end
