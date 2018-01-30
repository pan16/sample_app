class PremiumusersController < ApplicationController
    def index
    end
    
    def create
        @premiumuser = Premiumuser.new(premiumuser_params)
        if @premiumuser.save
            flash[:success] = "登録したよ"
            redirect_to premiumuser_url(id: @premiumuser.id)
        else
            render 'new'
        end
    end
    
    def new
        @premiumuser = Premiumuser.new
    end
    
    def edit
    end
    
    def show
        @premiumuser = Premiumuser.find(params[:id])
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def premiumuser_params
        params.require(:premiumuser).permit(:name, :email, :password, :password_confirmation)
    end
end
