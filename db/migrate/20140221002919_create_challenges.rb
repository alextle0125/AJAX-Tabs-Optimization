class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.text :description
      t.references :unit
      t.string :level
    end
  end
end
