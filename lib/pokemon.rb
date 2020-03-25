class Pokemon
  attr_accessor :id, :name, :type, :db
  
  @@all = []
  
  def initialize(id:, name:, type:, db:)
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
  
end
