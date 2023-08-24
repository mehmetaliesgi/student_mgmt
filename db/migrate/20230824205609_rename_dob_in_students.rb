class RenameDobInStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :dod, :date_of_birth
  end
end
