class AreasController < ApplicationController

    before_action :find_area, only: [:update, :delete]

    def index
        @areas = Area.all
        render json: @areas
    end

    def create
        @area = Area.create(area_params)

        render json: @area, status: :created
    end

    def update 
        @area.update(area_params)

        render json: @area
    end

    def destroy 
        @area = Area.find(params[:id])

        @area.destroy

        render status: :no_content
    end

    private

    def find_area
        @area = Area.find(params[:id])
    end

    def area_params
        params.require(:area).permit(:name, :state, :vertical)
    end
end

