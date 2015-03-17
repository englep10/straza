class HostsController < ApplicationController
 # before_action :find_host, except: [:index, :new, :create]

  def index
    @hosts = Host.all
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)
    if @host.save
      redirect_to @host
    end
  end

  def show
    #@movement = Movement.find(params[:movement_id])
  end

  # def edit
  # end

  # def update
  #   if @host.update_attributes(host_params)
  #     redirect_to @host
  #   end
  # end

  # def destroy
  #   if @host.destroy
  #     redirect_to hosts_path
  #   end
  # end

  private

  # def find_host
  #   @host = host.find(params[:id])
  # end

  def host_params
    params.require(:host).permit(:last_name, :first_name, :email, :phone_number, :company)
  end
end