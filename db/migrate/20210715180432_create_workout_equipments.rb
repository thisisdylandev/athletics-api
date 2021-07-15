class CreateWorkoutEquipments < ActiveRecord::Migration[6.1]
  def change
    create_table :workout_equipments do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
