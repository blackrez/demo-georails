class Export < ActiveRecord::Base
  include Featurable

  featurable :geom, [:adresse, :siret, :code_effec, :ca, :code_naf]

end
