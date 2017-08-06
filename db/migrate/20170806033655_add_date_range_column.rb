class AddDateRangeColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :reserved_dates, :range_date, :string
  end
end
