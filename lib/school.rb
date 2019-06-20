class School
  attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
      @roster[grade] ||= []
      @roster[grade] << name
    end

    def grade(grade)
     @roster[grade]
    end

    def sort
      sorted={}
      roster.each do |grade, name|
        sorted[grade] = name.sort
      end
      sorted
    end
end

kbf

# ||= if condition is true, create this array

# from SG:
# def add_student(name, grade)
#   if roster.has_key?(grade) or roster[grade]
#     roster[grade] << name
#   else
#     roster[grade] = [name]
#   end
# end
