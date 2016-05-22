class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update]
  
  def index
    @entries = Entry.all
  end
  def show
  end
  def new
      @entry = Entry.new
  end
  def create
      @entry = Entry.create(entry_params)
      redirect_to @entry
  end
  def edit
      
  end
  def update
     
      
    if @entry.update(entry_params)
      redirect_to @entry
    else
        render :edit
    end
     
  end
  private
  
  def entry_params
    params.require(:entry).permit(:title, :contents)
  end
  
  def set_entry
    @entry = Entry.find(params[:id])
  end
end
