class Pokemon
  attr_accessor :id, :name, :type, :db
  
  @@all = []
  
  def initialize(id:, name:, type:, hp:nil, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
    
    @@all << self
  end
end
