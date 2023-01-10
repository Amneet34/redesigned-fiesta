class VendorsController < ApplicationController
    def index
        render json: Vendor.all
    end
    def show
        vendor = Vendor.find_by(params[:id])
        render json: vendor
    end
end
