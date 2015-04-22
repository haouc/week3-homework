class PlacesController < ApplicationController
  def index
    @places = Place.all
    render "index"
  end

  def show
  	@place = Place.find_by(:id => params["id"])
    @reviews = Review.where(:placeid => params["id"]).reverse_order
  	if @place != nil
  		render "show"
  	else
  		redirect_to "/", notice:"Place not found."
  	end
  end

  def delete
  	@place = Place.find_by(:id => params["id"])
  	if @place != nil
  		@place.delete
  		redirect_to "/", notice: "Place Deleted."
  	else
  		redirect_to "/", notice: "Place Not Found."
  	end
  end

  def new
  	render "new"
  end

  def create
  	p=Place.new
  	p[:title]=params["ntitle"]
  	p[:photo_url]=params["nphoto_url"]
  	p[:admission_price]=params["nadmission_price"].to_f*100
  	p[:description]=params["ndescription"]
  	p.save
  	redirect_to "/"
  end

  def edit
  	@place = Place.find_by(:id => params["id"])
  
  	@id = params["id"]
  	render "edit"

  end

  def update
  	@place = Place.find_by(:id => params["id"])
  	
  	@place[:title]=params["utitle"]
  	@place[:photo_url]=params["uphoto_url"]
  	@place[:admission_price]=params["uadmission_price"].to_f*100
  	@place[:description]=params["udescription"]
  	@place.save
  	redirect_to "/"
  end

  def reviews
    @review = Review.where(:placeid => params["id"]).reverse_order
    @place = Place.find_by(:id => params["id"])
    r=Review.new
    r[:placeid]=params["id"]
    r[:title]=params["reviewtitle"]
    r[:rate]=params["reviewrate"]
    r[:description]=params["reviewbody"]
    r.save
    redirect_to "/places/#{@place[:id]}"
  end


end
    