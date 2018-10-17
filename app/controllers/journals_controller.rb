class JournalsController < ApplicationController
  before_action :authenticated

  def index
    @journals = Journal.where(user_id: session[:user_id])
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)
    @journal.user_id = current_user.id
    if @journal.valid?
      @journal.save
      redirect_to journal_path(@journal)
    else
      render :new
    end
  end

  def show
    @journal = Journal.find(params[:id])
  end

  def destroy
    @journal = Journal.find(params[:id])
    @journal.entries.destroy_all
    @journal.destroy
    redirect_to :index
  end

  private

  def journal_params
    params.require(:journal).permit(:title)
  end
end
