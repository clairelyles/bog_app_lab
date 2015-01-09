class CreateMires < ActiveRecord::Migration
  def change
    create_table :mires do |t|
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
