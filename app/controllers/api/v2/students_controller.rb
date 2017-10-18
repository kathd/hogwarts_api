class Api::V2::StudentsController < ApplicationController

  def index
    @students = Student.all
    render "index.json.jbuilder"
  end

  def show
    @student = Student.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      original_house: params[:original_house],
      favorite_character: params[:favorite_character]
    )
    render "show.json.jbuilder"
  end

  def update
    @student = Student.find(params[:id])
    @student.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      original_house: params[:original_house],
      favorite_character: params[:favorite_character]
    )
    render "show.json.jbuilder"
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    @students = Student.all
    render "index.json.jbuilder"
  end


end
