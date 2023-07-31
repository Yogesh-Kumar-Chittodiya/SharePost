class SharepostsController < ApplicationController
  # before_action :set_sharepost
  def index
    @shareposts = Sharepost.all
  end

  def new
    @sharepost = Sharepost.new
  end

  def show
  end

  def delete
  end

  def edit
  end


  def create
    @sharepost = Sharepost.new(task_params)
    if @sharepost.save
      redirect_to root_path, notice: 'Post has been created successfully.'
    else
      render :new
    end
  end

    # DELETE /shareposts/1 or /shareposts/1.json
    def destroy
      @shareposts.destroy
  
      respond_to do |format|
        format.html { redirect_to shareposts_url, notice: "Sharepost was successfully destroyed." }
        format.json { head :no_content }
      end
    end

  # Use callbacks to share common setup or constraints between actions.
  private
  def set_sharepost
    @sharepost = Sharepost.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:sharepost).permit(:post_titile, :post)
  end

end
