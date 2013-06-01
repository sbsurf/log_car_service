class AddMileageToServiceRecords < ActiveRecord::Migration
  def change
    add_column :service_records, :mileage, :int
  end
end
