class SurfCoursesController < ApplicationController
  before_action :require_login, except: [:index, :show]
  before_action :set_surf_course, only: [:show, :edit, :update, :destroy]

  # GET /surf_courses
  # GET /surf_courses.json
  def index
    @surf_courses = SurfCourse.all.order('position ASC')
  end
#
#  # GET /surf_courses/1
#  # GET /surf_courses/1.json
#  def show
#  end

  # GET /surf_courses/new
  def new
    @surf_course = SurfCourse.new
  end

  # GET /surf_courses/1/edit
  def edit
  end

  # POST /surf_courses
  # POST /surf_courses.json
  def create
    @surf_course = SurfCourse.new(surf_course_params)

    respond_to do |format|
      if @surf_course.save
        format.html { redirect_to surf_courses_path, notice: 'Surf course was successfully created.' }
        format.json { render :show, status: :created, location: @surf_course }
      else
        format.html { render :new }
        format.json { render json: @surf_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surf_courses/1
  # PATCH/PUT /surf_courses/1.json
  def update
    respond_to do |format|
      if @surf_course.update(surf_course_params)
        format.html { redirect_to surf_courses_path, notice: 'Surf course was successfully updated.' }
        format.json { render :show, status: :ok, location: @surf_course }
      else
        format.html { render :edit }
        format.json { render json: @surf_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surf_courses/1
  # DELETE /surf_courses/1.json
  def destroy
    @surf_course.destroy
    respond_to do |format|
      format.html { redirect_to surf_courses_url, notice: 'Surf course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surf_course
      @surf_course = SurfCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surf_course_params
      params.require(:surf_course).permit(:title, :position, :subtitle, :content, :price_1, :price_2, :price_3, :thumbnail, :_destroy)
    end
end
