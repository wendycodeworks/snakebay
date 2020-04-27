class ListingController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

    def index
        @listings = Listing.all
    end

    def show
      
    end

    def new
      @listing = Listing.new
    end

    def create
      @listing = Listing.create(listings_params)
      if @listing.errors,any?
        set_breeds_and_sexes
        render "new"
      else
        redirect_to listings_paths
      end
    end

    def edit
    end

    def update
        Listing.update(listings_params)
        redirect_to listings_paths
    end

    def destroy
        Listing.find(params["id"]).destroy
        redirect_to listings_paths
    end

    private

    def set_listing
    id = params[:id]
    @listing = Listing.find(id)
    end
end