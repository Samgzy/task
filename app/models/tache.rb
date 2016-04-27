class Tache
  include Mongoid::Document
  field :nom, type: String
  field :societe, type: String
  field :montant, type: String
  field :date, type: String
  field :notes, type: String
end
