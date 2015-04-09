#pickup from https://climber2002.github.io/

module Featurable
  extend ActiveSupport::Concern

  module ClassMethods

    # Transforme une entite en geojson
    def featurable geom_attr_name, property_names = []
      define_method :to_feature do
        factory = RGeo::GeoJSON::EntityFactory.instance

        property_names = Array(property_names)
        properties = property_names.inject({}) do |hash, property_name|
          hash[property_name.to_sym] = read_attribute(property_name)
          hash
        end
        factory.feature read_attribute(geom_attr_name), self.id, properties
      end
    end


    # Transforme les collections en geojson
    # par exemple
    # collections = MaCollection.all
    # feature = MaCollection.to_feature_collection collections
    # geojson = RGeo::GeoJSON.encode(feature_collection).to_json
    def to_feature_collection models
      factory = RGeo::GeoJSON::EntityFactory.instance
      features = models.map(&:to_feature)
      factory.feature_collection features
    end
  end
end