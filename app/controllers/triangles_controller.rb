class TrianglesController < ApplicationController
  before_action :set_triangle, only: %i[ show edit update destroy ]

  # GET /triangles or /triangles.json
  def index
    @triangles = Triangle.all
  end

  # GET /triangles/1 or /triangles/1.json
  def show
  end

  # GET /triangles/new
  def new
    @triangle = Triangle.new
  end

  # GET /triangles/1/edit
  def edit
  end

  # POST /triangles or /triangles.json
  def create
    @triangle = Triangle.new(triangle_params)

    respond_to do |format|
      if @triangle.save
        format.html { redirect_to triangle_url(@triangle), notice: "Triangle was successfully created." }
        format.json { render :show, status: :created, location: @triangle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @triangle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /triangles/1 or /triangles/1.json
  def update
    respond_to do |format|
      if @triangle.update(triangle_params)
        format.html { redirect_to triangle_url(@triangle), notice: "Triangle was successfully updated." }
        format.json { render :show, status: :ok, location: @triangle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @triangle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /triangles/1 or /triangles/1.json
  def destroy
    @triangle.destroy

    respond_to do |format|
      format.html { redirect_to triangles_url, notice: "Triangle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_triangle
      @triangle = Triangle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def triangle_params
      params.fetch(:triangle, {})
    end
end
