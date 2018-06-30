class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    render new_student_path
  end 
end
