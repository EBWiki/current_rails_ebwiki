class UpdateCaseAddAttributes < ActiveRecord::Migration[7.1]
  def change
    add_column :cases, :state_id, :integer
  end
end
