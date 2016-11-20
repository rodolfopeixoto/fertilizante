
  def name
  	puts "#{@name}"
  end

  def price
  	puts "#{@price}"
  end


  def header
    puts "**********************************************"

    puts "Digite a opção desejada:"
    puts "1) Inserir um Fertilizante"
    puts "2) Pesquisar um Fertilizantes por Preço"
    puts "3) Editar Preço de um Fertilizante"
    puts "5) Visualizar todos"
    puts "4) Sair"

    puts "**********************************************"

  end

  def option_for_action(action)
    case action
      when "1"
      	get_info
        puts "Inserido com sucesso!"
       when "2"
         puts "Foram encontrados 10 resultados!"
       when "3"
        	puts "Preço editado com sucesso!"
       when "4"
       when "5"
       	self.all
     end
  end

  def get_info

   puts "Digite o Nome do Fertilizante"
   name = gets.chomp

   puts "Digite o Preço/Tonelada"
   price = gets.chomp
   collection_product(name,price)
  end

  def collection_product(name,price)
  	hash = { name: name, price: price }
  	@product = []
  	@product.push(hash)
  	puts "------------------"
  	puts "Produto: " + @product[0][:name]
  	puts "------------------"
  end

  def program
    loop do

      header #método

      puts "Número da ação "
      action = gets.chomp

      option_for_action(action) #método

      puts ""

      break if action.eql? "4"

    end
  end

program