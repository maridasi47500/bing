json.extract! news, :id, :newspaper_id, :title, :content, :pic, :created_at, :updated_at
json.url news_url(news, format: :json)
