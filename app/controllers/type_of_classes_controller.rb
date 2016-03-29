class TypeOfClassesController < ApplicationController
  before_action :set_type_of_class, only: [:show, :edit, :update, :destroy]

  # GET /type_of_classes
  # GET /type_of_classes.json
  def index
    @type_of_classes = TypeOfClass.all
  end

  # GET /type_of_classes/1
  # GET /type_of_classes/1.json
  def show
  end

  # GET /type_of_classes/new
  def new
    @type_of_class = TypeOfClass.new
  end

  # GET /type_of_classes/1/edit
  def edit
  end

  # POST /type_of_classes
  # POST /type_of_classes.json
  def create
    @type_of_class = TypeOfClass.new(type_of_class_params)

    respond_to do |format|
      if @type_of_class.save
        format.html { redirect_to @type_of_class, notice: 'Type of class was successfully created.' }
        format.json { render :show, status: :created, location: @type_of_class }
      else
        format.html { render :new }
        format.json { render json: @type_of_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_of_classes/1
  # PATCH/PUT /type_of_classes/1.json
  def update
    respond_to do |format|
      if @type_of_class.update(type_of_class_params)
        format.html { redirect_to @type_of_class, notice: 'Type of class was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_of_class }
      else
        format.html { render :edit }
        format.json { render json: @type_of_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_classes/1
  # DELETE /type_of_classes/1.json
  def destroy
    @type_of_class.destroy
    respond_to do |format|
      format.html { redirect_to type_of_classes_url, notice: 'Type of class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_of_class
      @type_of_class = TypeOfClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_of_class_params
      params.require(:type_of_class).permit(:name)
    end
end
