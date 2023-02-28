class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map{|audition| audition.actor}
    end

    def locations
        self.auditions.map{|audition| audition.location}
    end

    def lead
        audition = self.auditions.find{|audition| audition.hired}
        if audition
            audition
        else
            'no actor has been hired for this role'
        end
    end

    def understudy
        audition = self.auditions.find{|audition| audition.hired}
        if audition[1]
            audition[1]
        else
            'no actor has been hired for understudy for this role'
        end
    end
end
