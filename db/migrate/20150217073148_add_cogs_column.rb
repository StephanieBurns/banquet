class AddCogsColumn < ActiveRecord::Migration
  def change
 
    add_column :skus, :cogs, :integer

  end
end
