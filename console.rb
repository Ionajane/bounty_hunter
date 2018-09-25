require_relative("./models/bounty_finder.rb")
require("pry")

  criminal1 = Bounty.new({
    "name" => "Gerrard Butler",
    "favourite_weapon" => "Gun",
    "danger_level" => "High",
    "bounty_value" => 80000
  })

  criminal2 = Bounty.new({
    "name" => "Jennifer Aniston",
    "favourite_weapon" => "Rope",
    "danger_level" => "Medium",
    "bounty_value" => 40000
  })

criminal1.save()

binding.pry
nil
