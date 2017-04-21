class EtsyController < ApplicationController
  def search

    api_key = "a3vtcndy43qcmk6p1dpzn6uh";

    response = HTTParty.get("https://openapi.etsy.com/v2/listings/active", {
      query: {
        api_key: api_key,
        keywords: params[:keywords],
        limit: "12",
        includes: "Images:1",
        category: "supplies"
      },
      headers: { "Accept" => "application/json"}
    })

    render json: response, status: :ok

  end
end
