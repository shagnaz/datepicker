class AddIsActiveToDatepickers < ActiveRecord::Migration
  def change
    add_column :trppdhdrs, :is_active, :boolean
  end
end
