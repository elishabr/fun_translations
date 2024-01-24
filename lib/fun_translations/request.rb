# frozen_string_literal: true

module FunTranslations
  module Request # rubocop:disable Style/Documentation
    include FunTranslations::Connection

    def post(path, params = {})
      # path --> translate/yoda.json
      # params = { text: "Hello my padawan!" }
      respond_with(
        connection.post(path, params) # => строка, которая похожа на хэш
      )
    end

    def respond_with(raw_response)
      # raw_response.status
      # HTTP 2xx
      # 3xx
      # 404
      # 500
      # raw_response.success?
      body = raw_response.body.empty? ?
        raw_response.body :
        JSON.parse(raw_response.body)

      body['contents']
    end
  end
end
