class UsersController < ApplicationController
def index
    @users=User.all
    render :index
end

def show
    @user=User.find(params[:id])
    render :show
    # render json: params

end

def create
    user=User.new(user_params)
    if user.save!
    render json: user
    else 
        render json: user.errors.full_message ,status:422
    end
end

def update 
    user=User.find(params[:id])
    if user.update(user_params)
        render json: user
    else
        render json: user.errors.full_message 
    end

end
def destroy 
    users=User.all
    user=User.find(params[:id])
    if user.delete
        render json: users
    else
        render json: user.errors.full_message 
    end
    
end
private
def user_params
    params.require(:user).permit(:name,:age)
end
end