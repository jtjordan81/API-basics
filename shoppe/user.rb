class User

  attr_reader :id, :name, :address

  def initialize id, name, address = nil
    @id = id
    @name = name
    @address = address
  end

end
