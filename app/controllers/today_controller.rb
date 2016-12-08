class TodayController < ApplicationController
  def index

    @q = Note.ransack(params[:q])
    @notes = @q.result(:distinct => true).includes(:user, :taggings, :lists).page(params[:page]).per(20)

    @p = Task.ransack(params[:q])
    @tasks = @p.result(:distinct => true).includes(:user).page(params[:page]).per(20)
    @task = Task.new

  end
end
