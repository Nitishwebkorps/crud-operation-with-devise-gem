class RecordsController < ApplicationController
    #before_action :set_record, only: [:show,:edit,:update]

    def index 
        @records=Record.all
    end

    def new
        @record=Record.new
    end

    def create 
        @record = Record.new(params.require(:record).permit(:name,:fathername,:mothername,:email,:address,:city,:state,:phoneno,:tenth,:twelve,:firstsem,:secondsem))
        if @record.save
            flash[:notice]="Your data have saved successfully."
            redirect_to root_path 
        else
            render 'new'
        end
    end

    def show
        @record = Record.find(params[:id])
        
    end 

    def edit 
        @record = Record.find(params[:id])
    end

    def update
        @record = Record.find(params[:id])
        if @record.update(params.require(:record).permit(:name,:fathername,:mothername,:email,:address,:city,:state,:phoneno,:tenth,:twelve,:firstsem,:secondsem))
          flash[:notice]="Profile is updated successfully" 
          redirect_to @record
        else
          render 'edit'
        end
    end

    def destroy
        @record = Record.find(params[:id])
        @record.destroy
        redirect_to records_path
    end

    private 

    #def set_record 
     #   @record = Record.find(params[:id])
    #end

    
    
    

end