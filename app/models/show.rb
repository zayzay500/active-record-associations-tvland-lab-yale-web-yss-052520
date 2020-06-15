class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        characters.map{|character| character.actor.full_name}
    end

    def build_network(attributes)
        # binding.pry
        self.network = Network.new(attributes)
    end
end