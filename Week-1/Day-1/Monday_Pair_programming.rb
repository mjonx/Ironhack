class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end
ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")
  html = ProgrammingLanguage.new("html", 26, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]
  array_of_languages.push(html)
  #array_of_languages.delete_at(6)

  def array_printer(array)
    array.each do | language |
      puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
    end
  end

  #array_printer(array_of_languages)

  aged_languages = array_of_languages.map do |language|
    ProgrammingLanguage.new(language.name,language.age+1, language.type)
    end
    #dont forget name and type! and call the class with .new
  puts "The programming languages aged one year are: "
  #array_printer(aged_languages)

  sorted_languages = array_of_languages.sort_by {|language| language.age}.reverse


  array_printer(sorted_languages)
  #array_printer(sorted_languages.shuffle)
#html = ProgrammingLanguage.new("HTML", 26, "Static")

#array_of_languages.push("html")
array_printer(sorted_languages)
