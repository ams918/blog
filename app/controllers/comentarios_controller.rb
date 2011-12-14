class ComentariosController < ApplicationController
 
  # POST /comentarios
  # POST /comentarios.json
  def create
   @post = Post.find(params[:post_id])
   comentario = @post.comentarios.create(params[:comentario])
   redirect_to_post_path(@post)
  end

  # DELETE /comentarios/1
  # DELETE /comentarios/1.json
  def destroy
   @post = Post.find(params[:id])
   @comentario = @post.comentarios.find(params[:id])
   @comentrio.destroy
   retirec_to_post_path(@post)
  end
end
