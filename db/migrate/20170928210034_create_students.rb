class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :mentor
      t.string :house

      t.timestamps
    end
  end
end
