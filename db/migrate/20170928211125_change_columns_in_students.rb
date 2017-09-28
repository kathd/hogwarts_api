class ChangeColumnsInStudents < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :mentor, :favorite_character
    rename_column :students, :house, :original_house
  end
end
