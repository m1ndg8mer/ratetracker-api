class Api::V1::CurrenciesController < Api::V1::ApiController
  def index
    render json: Currency.pluck(:name)
  end
end
