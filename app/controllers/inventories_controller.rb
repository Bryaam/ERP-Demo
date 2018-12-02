class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:edit, :update, :destroy]

  def index
    @inventories = Inventory.all.order(:created_at)  
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.create inventory_params
    redirect_to inventories_path
  end

  def edit
    
  end

  def update
    @inventory.update inventory_params
    redirect_to inventories_path
  end

  def destroy
    @inventory.destroy
    redirect_to inventories_path
  end

  private

  def set_inventory
    @inventory = Inventory.find(params[:id])
  end

  def inventory_params
    params.require(:inventory).permit(:product_id, :security_stock, :stock)
  end  
end
