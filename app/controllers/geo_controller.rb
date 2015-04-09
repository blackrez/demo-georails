class GeoController < ApplicationController
  def place
    @export = Export.where('place_marc=?', params[:place_id])
    feature = Export.to_feature_collection @export
    @geojson = RGeo::GeoJSON.encode(feature).to_json
    render json: @geojson
   end
end
