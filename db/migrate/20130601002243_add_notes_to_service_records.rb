class AddNotesToServiceRecords < ActiveRecord::Migration
  def change
    add_column :service_records, :notes, :text
  end
end
