require("pg")
class Bounty

  attr_accessor :name, :favourite_weapon, :danger_level, :bounty_value
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i()
    @name = options["name"]
    @favourite_weapon = options["favourite_weapon"]
    @danger_level = options["danger_level"]
    @bounty_value = options ["bounty_value"].to_i()
  end


end
