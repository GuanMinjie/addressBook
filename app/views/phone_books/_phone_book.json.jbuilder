json.extract! phone_book, :id, :contact, :phoneNumber, :created_at, :updated_at
json.url phone_book_url(phone_book, format: :json)
