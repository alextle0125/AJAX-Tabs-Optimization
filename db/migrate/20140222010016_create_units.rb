class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :number
      t.references :phase
    end
  end
end
