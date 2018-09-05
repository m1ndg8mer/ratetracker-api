class Api::V1::RatesController < Api::V1::ApiController
  def index
    currency_from =	Currency.find_by!(name: safe_params[:from])
    currency_to = 	Currency.find_by!(name: safe_params[:to])
    amount =	Rate.where(pair_from: currency_from.id)
                         .where(pair_to: currency_to.id)
                         .first.amount.to_f

    render json:  {
      from: currency_from.name,
      to: currency_to.name,
      amount: amount
    }
  end

  private

  def safe_params
    params.permit(:from, :to, :amount)
  end
end
