class VendorSweetsController < ApplicationController
    def index
        render json: VendorSweet.all
    end
    def show
        vendor_sweets = VendorSweet.find(params[:id])
        render json: vendor_sweets
    end
    def create
        vendor_sweets = VendorSweet.create(id: params[:id], price: params[:price], vendor_id: params[:vendor_id], sweet_id: params[:sweet_id])
        render json: vendor_sweets
    end
    def destroy
        vendor_sweets = VendorSweet.find(params[:id])
        vendor_sweets.destroy
        render json: {}
    end
end
