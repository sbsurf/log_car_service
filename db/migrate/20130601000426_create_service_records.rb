class CreateServiceRecords < ActiveRecord::Migration
  def change
    create_table :service_records do |t|
      t.integer :service_type_id

      t.timestamps
    end
  end
end
