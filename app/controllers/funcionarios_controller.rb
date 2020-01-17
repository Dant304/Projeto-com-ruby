class FuncionariosController < ApplicationController

    def index
    
    end

    def create
        funcionario = params.require(:funcionario).permit(:nome, :genero, :salario, :idade)
        Funcionario.create funcionario
        redirect_to funcionarios_catalogo_path
    end

    def destroy
        @funcionario = Funcionario.find(params[:id])
        if @funcionario.destroy
            flash[:success] = 'Object was successfully deleted.'
            redirect_to funcionarios_catalogo_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to funcionarios_catalogo_url
        end
    end
        
end
