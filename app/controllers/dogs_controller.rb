class DogsController < ApplicationController

    def index
        @dogs = Dog.all
        render :index
    end

    def show
        @dog = Dog.find(params[:id])
        @employees = Employee.all.select{|employee| employee.dog == @dog}
  
        render :show
    end
end
