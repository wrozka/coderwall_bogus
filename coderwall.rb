class Repository
  def store(name, description)
  end
end

class Controller < Struct.new(:repository)
  def create(params)
    repository.store(params[:name])
  end
end

