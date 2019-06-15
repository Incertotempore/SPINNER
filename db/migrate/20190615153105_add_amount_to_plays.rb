class AddAmountToPlays < ActiveRecord::Migration[5.2]
  def change
    add_column :plays, :amount, :integer
  end
end
