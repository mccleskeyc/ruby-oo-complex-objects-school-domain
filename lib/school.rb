class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @roster[grade] ||= []
    @roster[grade] << name
    end

    def grade(grade_year)
        @roster[grade_year]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
    end
end