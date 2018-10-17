class EntriesController < ApplicationController
  before_action :authenticated

  def new
    journal = Journal.find(params[:journal_id])
    @entry = Entry.new(journal_id: journal.id)
  end

  def create
    journal = Journal.find(params[:journal_id])
    @entry = Entry.new(entry_params)
    @entry.journal_id = journal.id
    if @entry.valid?
      @entry.save
      redirect_to journal_entry_path(journal_id: journal.id, id: @entry.id)
    else
      render :new
    end
  end

  def show
    @entry = Entry.find(params[:id])
    @journal = Journal.find(params[:journal_id])
  end

  def destroy
    @journal = Journal.find(params[:journal_id])
    entry = Entry.find(params[:id])
    entry.destroy
    redirect_to journal_path(@journal)
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :text)
  end
end
