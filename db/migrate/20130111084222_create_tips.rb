class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :tip_text

      t.timestamps
    end
  end
end
