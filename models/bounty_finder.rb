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

  def save()
    db = PG.connect ({
    dbname: "bounty_hunter",
    host: "localhost" })

      sql = "
        INSERT INTO criminals(
          name,
          favourite_weapon,
          danger_level,
          bounty_value
        )
        VALUES ($1, $2, $3, $4)
        RETURNING id;"

        values = [@name, @favourite_weapon, @danger_level, @bounty_value]

      db.prepare("save", sql)
      id = db.exec_prepared("save", values) [0] ["id"].to_i
      db.close()
  end

  def self.delete_all()
      db = PG.connect ({
      dbname: "bounty_hunter",
      host: "localhost" })

      sql = "SELECT * FROM criminals;"
      db.prepare("all", sql)
  end

  def update()
    db = PG.connect({
    dbname: "bounty_hunter",
    host: "localhost" })

    sql = "
    UPDATE criminals
    SET (
      name,
      favourite_weapon,
      danger_level,
      bounty_value
    ) = ($1, $2, $3, $4)
    WHERE id = $5;"

    values = [
      @name,
      @favourite_weapon,
      @danger_level,
      @bounty_value
    ]

    db.prepare("update", sql)
    db.exec_prepared("update", values)
    db.close()
  end

end
