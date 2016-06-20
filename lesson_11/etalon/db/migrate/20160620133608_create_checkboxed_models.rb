class CreateCheckboxedModels < ActiveRecord::Migration
  def change
    create_table :checkboxed_models do |t|
      t.string :music

      t.timestamps null: false
    end
  end
end
