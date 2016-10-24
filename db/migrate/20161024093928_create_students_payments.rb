class CreateStudentsPayments < ActiveRecord::Migration
  def change
    create_table :students_payments do |t|
      t.date :due_date
      t.date :paid_date
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
