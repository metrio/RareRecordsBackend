class RecordSerializer < ActiveModel::Serializer
  attributes :id, :album_name, :artist_name, :description, :thumb_url, :img_url, :in_store, :year_of_release
end
