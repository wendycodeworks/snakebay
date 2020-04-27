class ListingController < ApplicationController
    def index
        @listings = Listing.all
    end

    def show
        id = params[:id]
        @listing = Listing.find(id)
    end

    def new

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
        @listing = Listing.find(params["id"])
    
    end

    def update
        Listing.update(listings_params)
        redirect_to listings_paths
    end

    def destroy
        Listing.find(params["id"]).destroy
        redirect_to listings_paths
    end
end