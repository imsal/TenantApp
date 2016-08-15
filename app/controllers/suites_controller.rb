class SuitesController < ApplicationController
  before_action :require_user # Requires Basic Authentication To Access Page
    before_action :set_suite, only: [:show, :edit, :update, :destroy]

    # GET /tenants
    # GET /tenants.json
    def index
      @suites = Suite.all
    end

    # GET /tenants/1
    # GET /tenants/1.json
    def show
      @tenants = @suite.tenants
    end

    # GET /tenants/new
    def new
      @suite = Suite.new
    end

    # GET /tenants/1/edit
    def edit
    end

    # POST /tenants
    # POST /tenants.json
    def create
      @suite = Suite.new(suite_params)

      respond_to do |format|
        if @suite.save
          format.html { redirect_to @suite, notice: 'Suite was successfully created.' }
          format.json { render :show, status: :created, location: @suite }
        else
          format.html { render :new }
          format.json { render json: @suite.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /tenants/1
    # PATCH/PUT /tenants/1.json
    def update
      respond_to do |format|
        if @suite.update(suite_params)
          format.html { redirect_to @suite, notice: 'Suite was successfully updated.' }
          format.json { render :show, status: :ok, location: @suite }
        else
          format.html { render :edit }
          format.json { render json: @suite.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /tenants/1
    # DELETE /tenants/1.json
    def destroy
    end


  private

  def set_suite
    @suite = Suite.find(params[:id])
  end

  def suite_params
    params.require(:suite).permit(:lock_box_location, :lock_box_combo, :sq_ft, :vacant, :building_id, :name)
  end

end
