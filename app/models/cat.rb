class Cat < ApplicationRecord

    def self.createCats
        newCats = File.open('app/assets/spreadsheet.txt')
        newCats.each do |cat|
            catArray = cat.split(',')
            catArray.map! {|catItem| catItem.delete "[]"}
            self.create({make: catArray[0], serial: catArray[1], price: catArray[2].to_i})
        end
    end

    def self.deleteCats
        self.destroy_all
    end

end
