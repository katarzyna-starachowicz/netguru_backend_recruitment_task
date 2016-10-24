class StudentsPaymentsController < ApplicationController
  expose(:students_payments) { StudentsPayment.includes(:student).order(:student_id, :due_date) }

  before_action :authenticate_user!
end
