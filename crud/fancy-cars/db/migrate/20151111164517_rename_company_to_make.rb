class RenameCompanyToMake < ActiveRecord::Migration
  def change
    rename_column :cars, :company, :make
  end
end
