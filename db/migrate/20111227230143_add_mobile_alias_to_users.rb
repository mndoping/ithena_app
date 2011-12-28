class AddMobileAliasToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mobile_alias, :string
  end
end
