class AddMobileConfirmationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mobile_no_confirmation, :string
  end
end
