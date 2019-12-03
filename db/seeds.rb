# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
spinner = TTY::Spinner.new("[:spinner] Populando...")
spinner.auto_spin
coins = [
  {
    description: "DASH",
    acronym: "DASH",
    url_image: ""
  },
  {
    description: "Bitcoin",
    acronym: "BTC",
    url_image: ""
  },
  {
    description: "Ethereum",
    acronym: "ETC",
    url_image: ""
  }
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

spinner.success("(Concluído!)")