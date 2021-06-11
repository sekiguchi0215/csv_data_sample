require "csv"

class ImportCsv
  def self.import(path)
    CSV.foreach(path, headers: true) do |row|
      User.create!(row.to_h)
    end
  end
end