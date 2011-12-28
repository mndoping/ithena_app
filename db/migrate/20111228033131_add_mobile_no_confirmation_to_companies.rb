class AddMobileNoConfirmationToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :mobile_no_confirmation, :string
  end
end
