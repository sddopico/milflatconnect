json.array!(@flats) do |flat|
  json.extract! flat, :id, :address, :city, :base, :summary, :price, :sec_deposit, :photos, :user_id
  json.url flat_url(flat, format: :json)
end
