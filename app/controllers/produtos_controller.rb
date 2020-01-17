class ProdutosController < ApplicationController

    def index
        @produto = Produto.all
    end
    
    def create
        produto =  params.require(:produto).permit(:nome, :descricao, :preco)
        Produto.create produto
        redirect_to produtos_catalogo_path
    end
    
    def destroy
        @produto = Produto.find(params[:id])
        if @produto.destroy
            flash[:success] = 'Object was successfully deleted.'
            redirect_to produtos_catalogo_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to produtos_catalogo_url
        end
    end
    
end
