class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :entities, :users_id, :author_id
  end
end
