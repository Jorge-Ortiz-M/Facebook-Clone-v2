class AddAproveToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :approve, :boolean, default: false
  end
end
