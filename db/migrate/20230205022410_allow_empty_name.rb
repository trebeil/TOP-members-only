class AllowEmptyName < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:users, :name, true)
  end
end
