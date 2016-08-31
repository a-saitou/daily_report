class ConstractionsController < ApplicationController
  before_action :set_constraction, only: [:show, :edit, :update, :destroy]

  # GET /constractions
  # GET /constractions.json
  def index
    @constractions = Constraction.all
  end

  # GET /constractions/1
  # GET /constractions/1.json
  def show
  end

  # GET /constractions/new
  def new
    @constraction = Constraction.new
  end

  # GET /constractions/1/edit
  def edit
  end

  # POST /constractions
  # POST /constractions.json
  def create
    @constraction = Constraction.new(constraction_params)

    respond_to do |format|
      if @constraction.save
        format.html { redirect_to @constraction, notice: 'Constraction was successfully created.' }
        format.json { render :show, status: :created, location: @constraction }
      else
        format.html { render :new }
        format.json { render json: @constraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constractions/1
  # PATCH/PUT /constractions/1.json
  def update
    respond_to do |format|
      if @constraction.update(constraction_params)
        format.html { redirect_to @constraction, notice: 'Constraction was successfully updated.' }
        format.json { render :show, status: :ok, location: @constraction }
      else
        format.html { render :edit }
        format.json { render json: @constraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constractions/1
  # DELETE /constractions/1.json
  def destroy
    @constraction.destroy
    respond_to do |format|
      format.html { redirect_to constractions_url, notice: 'Constraction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constraction
      @constraction = Constraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def constraction_params
      params.require(:constraction).permit(:name, :abbreviation, :kana, :code, :orderer_id, :start_date, :end_date)
    end
end
