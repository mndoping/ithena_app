class AddMobilePlanToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mobile_plan, :string
  end
end
