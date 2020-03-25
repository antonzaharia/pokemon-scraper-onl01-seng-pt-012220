class Pokemon
  attr_accessor :id, :name, :type, :db, :hp
  
  @@all = []
  
  def initialize(id:, name:, type:, hp:nil, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
    
    @@all << self
  end
  
  def self.save(name, type, db_conn)
    db_conn.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db_conn)
    row = db_conn.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    name = row[0]
    
  end
  
end
