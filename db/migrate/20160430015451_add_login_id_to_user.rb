class AddLoginIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :login_id, :string
  end
end
