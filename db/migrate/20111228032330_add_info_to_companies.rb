class AddInfoToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :company_name, :string
    add_column :companies, :company_email, :string
    add_column :companies, :name, :string
    add_column :companies, :mobile_no, :string
    add_column :companies, :email, :string
    add_column :companies, :password_digest, :string
    add_column :companies, :level, :string
  end
end
