class Team

    attr_accessor :team_name, :team_motto

    def initialize(hash)
        @team_name = hash['team']['name']
        @team_motto = hash['team']['motto']
    end

end