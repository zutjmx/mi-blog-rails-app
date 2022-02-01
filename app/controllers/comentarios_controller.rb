class ComentariosController < ApplicationController

before_action :set_articulo, only: [:create, :destroy]

 
  def create   
    @comentario = @articulo.comentarios.create(comentario_params)
    redirect_to @articulo   
  end

  def destroy   
    @comentario = @articulo.comentarios.find(params[:id])
    @comentario.destroy  

    redirect_to @articulo   


  end

  private  
      def comentario_params
        params.require(:comentario).permit(:nombre, :texto, :articulo_id)
      end

      def set_articulo
        @articulo = Articulo.find(params[:articulo_id])
      end
  end















 