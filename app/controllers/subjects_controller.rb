class SubjectsController < ApplicationController
  def new
    course = Course.find(params[:course_id])
    @subject = course.subjects.build
  end

  def create
    course = Course.find(params[:course_id])
    @subject = course.subjects.build(subject_params)

    if @subject.save
      redirect_to course
    else
      render :new
    end
  end

  private
    def subject_params
      params.require(:subject).permit(:name)
    end
end
