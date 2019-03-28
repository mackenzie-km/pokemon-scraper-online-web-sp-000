require "pry"
class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id: , name: , type: , db: )
    @id = id,
    @name = name,
    @type = type,
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

<<<<<<< HEAD
  def self.find(l_id, db)
    found = db.execute("SELECT id, name, type FROM pokemon WHERE id = ?", l_id)

    p_id = found[0][0]
    p_name = found[0][1]
    p_type = found[0][2]

    Pokemon.new(id: p_id, name: p_name, type: p_type, db: db)
=======
  def self.find(id, db)
    found = db.execute("SELECT id, name, type FROM pokemon WHERE id = ?", id)
    Pokemon.new(found, db)
>>>>>>> f3d103de2b8e6a7925707223bdb5abe50fffbf9d
  end

end
