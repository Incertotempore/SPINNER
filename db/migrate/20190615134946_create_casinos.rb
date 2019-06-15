class CreateCasinos < ActiveRecord::Migration[5.2]
  def change
    create_table :casinos do |t|
      t.string :name
      t.string :affiliate_link
      t.string :affiliate_program
      t.string :logo
      t.string :bonus_code
      t.string :bonus_percentage
      t.integer :bonus_amount
    end
  end
end
