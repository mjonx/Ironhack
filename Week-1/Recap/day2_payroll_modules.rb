class Employee
  attr_reader :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
end

class HourlyEmployee < Employee
  def initialize(name, email, rate, hours)
    super(name, email)
    @rate = rate
    @hours = hours
  end

  def calculate_salary
    weekly_salary = @rate * @hours
  end
end

class SalariedEmployee < Employee
  def initialize(name, email, annual_salary)
    super(name, email)
    @annual_salary = annual_salary
  end

  def calculate_salary
    weekly_salary = @annual_salary / 52
  end
end

class MultiPaymentEmployee < Employee
  def initialize(name, email, annual_salary, rate, hours)
    super(name, email)
    @annual_salary = annual_salary
    @rate = rate
    @hours = hours
  end

  def over_hours
    if @hours > 40
      over_hours = @hours - 40
    else
      @hours
    end
  end

  def calculate_salary
    weekly_salary = (@annual_salary / 52) + (over_hours * @rate)
  end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end

    def notify_employee(employee)
        puts "The employee #{employee.name} has been notified on #{employee.email}!"
    end

  def pay_employees
      total = 0
      @employees.each do |pay|
        total += pay.calculate_salary
        puts "The employee #{pay.name} gets paid $#{pay.calculate_salary}"
        notify_employee(pay)
      end
      tax = (total / 100) * 18
      puts "The total is $#{total + tax} (includes 18% tax)"
  end
end


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
marjon = HourlyEmployee.new('Marjon', 'marjonsiero@gmail.com', 15, 40)

employees = [josh, nizar, ted, marjon]
payroll = Payroll.new(employees)
payroll.pay_employees

puts "Josh' weekly salary: $#{josh.calculate_salary}"
puts "Nizar's weekly salary: $#{nizar.calculate_salary}"
puts "Ted's weekly salary: $#{ted.calculate_salary}"
puts "Marjon's weekly salary: $#{marjon.calculate_salary}"
puts "The total of all salaries combined is #{pay_employees.total}"
