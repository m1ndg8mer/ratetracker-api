desc "This task is called by the Heroku scheduler add-on"
task :update_rates => :environment do
  puts "Updating rates..."
  
	rand = Random.new

	currencies = Currency.all

	currencies.each do |currency_from|
		# Prevent pair with self
		pairs_to = currencies.select { |local_currency| currency_from.name != local_currency.name }

		pairs_to.each do |pair_to|
			currency_to = Currency.find_by!(name: pair_to.name)

			Rate.create(pair_from_id: currency_from.id, pair_to_id: currency_to.id, amount: rand.rand(2.00..14.00))
		end

		Rate.create(pair_from_id: currency_from.id, pair_to_id: currency_from.id, amount: 1.00)
	end

  puts "done."
end
