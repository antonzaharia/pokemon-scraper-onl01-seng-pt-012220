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
    
  end
  
end
