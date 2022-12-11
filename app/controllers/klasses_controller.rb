class KlassesController < ApplicationController
  
  def joinClass
    @student = Student.find(params[:id])
    @klass = @student.klass
    redirect_to @klass
  end


  # GET /klasses or /klasses.json
  def index
    @klasses = Klass.all
  end

  # GET /klasses/1 or /klasses/1.json
  def show
    
  end

  # GET /klasses/new
  def new
    @klass = Klass.new
  end

  # GET /klasses/1/edit
  def edit
  end

  # POST /klasses or /klasses.json
  def create
    @klass = Klass.new(klass_params)
    @klass.save

    redirect_to main_path

  end

  # PATCH/PUT /klasses/1 or /klasses/1.json
  def update
    @klass.update(klass_params)


    redirect_to main_path
  end

  # DELETE /klasses/1 or /klasses/1.json
  def destroy
    @klass.destroy

    redirect_to main_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klass
      @klass = Klass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def klass_params
      params.require(:klass).permit(:name, :teacher_id)
    end
end
