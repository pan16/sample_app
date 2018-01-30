class PremiumuserSessionsController < ApplicationController
    def new
    end
    
    def create
        @premiumuser = Premiumuser.find_by(email: params[:session][:email])
        binding.pry
    end
    
    def destroy
    end
end
