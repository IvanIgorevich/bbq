class ChangeColumnUserIdToNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :comments, :user_id, null: true
  end
end
