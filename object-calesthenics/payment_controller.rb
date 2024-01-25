class PaymentController
  def process_payment(csv)
    CSV.read(csv).to_a.each do |value|
      cst = Customer.find value[0]
      cst.get_invcs.select do |i|
        i.id == value[4]
      end.map do |i|
        i.products.each do |p|
          if p.id == value[3]
            i.total += p.price * value[1]
          end
        end
        i.status = 'paid'
        i.save
      end
    end
  end
end