def ClassRoom
  def initialize()
    @students = [
      { id: 2345, name: 'James', notes: [10, 5, 6, 8] },
      { id: 678, name: 'Robert', notes: [7, 8, 6, 10] },
    ]
  end

  def approvedStudents
    approved_list = []

    @students.each do |student|
      approved = true

      student[:notes].each do |note|
        next unless approved
        approved = note >= 6
      end

      approved_list << student if approved
    end

    approved_list
  end
end