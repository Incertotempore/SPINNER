class CreatePlays < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
      t.references :user, foreign_key: true
      t.references :casino, foreign_key: true
      t.timestamps
    end
  end
end
