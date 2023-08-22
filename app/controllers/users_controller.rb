class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:update]
  
  binding.pry
  
    def edit
      @user = current_user
    end

    def create
      @user = User.new(user_params)
  
      if @user.save
        # Lógica para redirecionar ou retornar uma resposta de sucesso
      else
        render :new
      end
    end
      
    def update
      @user = current_user
      if @user.update(user_params)
        redirect_to root_path, notice: "Cadastro atualizado com sucesso."
      else
        render :edit
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :name, :cpf, :birthdate, :gender, :phone)
    end

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
    end
  end
 