<<<<<<< HEAD
class ListingsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user_listing, only: [:edit, :update, :destroy]
    before_action :set_listing, only: [:show]

=======
class ListingController < ApplicationController
>>>>>>> parent of cc79c09... add form in new.html.erb
    def index
        @listings = Listing.all
    end

    def show
<<<<<<< HEAD
    end

    def new
        set_breeds_and_sexes
        @listing = Listing.new
=======
        id = params[:id]
        @listing = Listing.find(id)
    end

    def new

>>>>>>> parent of cc79c09... add form in new.html.erb
    end

    def create
        #finish logic for creating a record
        @listing = current_user.Listing.create(listing_params)
        if @listing.errors.any?
            set_breeds_and_sexes
            render "new"
        else 
            redirect_to listings_path
        end
    end

    def edit
<<<<<<< HEAD
        set_breeds_and_sexes
=======
        @listing = Listing.find(params["id"])
    
>>>>>>> parent of cc79c09... add form in new.html.erb
    end

    def update
        @listing = Listing.update(params["id"], listing_params)
        if @listing.errors.any?
            set_breeds_and_sexes
            render "edit"
        else 
            redirect_to listings_path
        end
    end

    def destroy
        Listing.find(params[:id]).destroy
        redirect_to listings_path
    end
<<<<<<< HEAD

    private

    def set_listing
        @listing = Listing.find(params[:id])
    end

    def set_user_listing
        @listing = current_user.listings.find_by_id(params[:id])

        if @listing == nil
            redirect_to listings_path
        end
    end

    def set_breeds_and_sexes
        @breeds = Breed.all
        @sexes = Listing.sexes.keys
    end

    def listing_params
        params.require(:listing).permit(:title, :description, :breed_id, :sex, :city, :state, :price, :deposit, :date_of_birth, :diet, :picture)
    end

    

=======
>>>>>>> parent of cc79c09... add form in new.html.erb
end