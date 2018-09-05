Currency.delete_all

currencies = ['uah', 'usd', 'eur', 'rub', 'aud']

currencies.each do |currency_name|
	Currency.create(name: currency_name)
end

Rate.delete_all
