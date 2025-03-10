require 'pry'

class School
    attr_reader :name, :roster
    attr_accessor :grade, :student

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.each { |grade, students|
            sorted[grade] = students.sort
        }
        sorted
    end
end