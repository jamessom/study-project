def ClassRoom
  def initialize()
    @students = [
      { id: 2345, name: 'James', notes: [10, 5, 6, 8] },
      { id: 678, name: 'Robert', notes: [7, 8, 6, 10] },
    ]
  end

  def approvedStudents
    @students.select do |student|
      is_approved?(student)
    end
  end

  private

  def is_approved?(students)
    notes = student[:notes]

    notes.all? do |note|
      note >= 6
    end
  end
end