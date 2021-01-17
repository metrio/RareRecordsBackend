class RecordSerializer < ActiveModel::Serializer
  attributes :id, :album_name, :artist_name, :discogs_id, :description, :thumb_url, :img_url, :in_store, :year_of_release, :condition
end