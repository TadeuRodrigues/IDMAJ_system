class AgeOfStudentsController < ApplicationController
  before_action :set_age_of_student, only: [:show, :edit, :update, :destroy]

  # GET /age_of_students
  # GET /age_of_students.json
  def index
    @age_of_students = AgeOfStudent.all
  end

  # GET /age_of_students/1
  # GET /age_of_students/1.json
  def show
  end

  # GET /age_of_students/new
  def new
    @age_of_student = AgeOfStudent.new
  end

  # GET /age_of_students/1/edit
  def edit
  end

  # POST /age_of_students
  # POST /age_of_students.json
  def create
    @age_of_student = AgeOfStudent.new(age_of_student_params)

    respond_to do |format|
      if @age_of_student.save
        format.html { redirect_to @age_of_student, notice: 'Age of student was successfully created.' }
        format.json { render :show, status: :created, location: @age_of_student }
      else
        format.html { render :new }
        format.json { render json: @age_of_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /age_of_students/1
  # PATCH/PUT /age_of_students/1.json
  def update
    respond_to do |format|
      if @age_of_student.update(age_of_student_params)
        format.html { redirect_to @age_of_student, notice: 'Age of student was successfully updated.' }
        format.json { render :show, status: :ok, location: @age_of_student }
      else
        format.html { render :edit }
        format.json { render json: @age_of_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /age_of_students/1
  # DELETE /age_of_students/1.json
  def destroy
    @age_of_student.destroy
    respond_to do |format|
      format.html { redirect_to age_of_students_url, notice: 'Age of student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_age_of_student
      @age_of_student = AgeOfStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def age_of_student_params
      params.require(:age_of_student).permit(:age)
    end
end
