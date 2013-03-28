class CreateGiftCards < ActiveRecord::Migration
  def change
    create_table :gift_cards do |t|
      t.string :sender
      t.string :receiver
      t.string :description
      t.decimal :money

      t.timestamps
    end
  end
end
