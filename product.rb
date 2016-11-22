  @products = []

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
       	puts "Digite o preço máximo"
       	valor = gets.chomp
       	valor.to_i
         all_products(valor)
       when "3"
        	puts "Preço editado com sucesso!"
       when "4"
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
  	@products << hash
  	puts "------------------------------------------------------------------"
  	puts "O Produto " + @products[0][:name] + " foi cadastrado com sucesso."
  	puts "------------------------------------------------------------------"

  end

  def all_products(valor)
  	puts "==============================================="
      puts @products.size
      @products.each_with_index { |p,i|

       if(p[:price].to_i <= valor.to_i)

      	puts "Index: #{i}   | Nome: #{p[:name]}       | Preço/Tonelada: #{p[:price]}"
       end

      }

  	puts "==============================================="
  	puts "Pressione qualquer botão para continuar"
  	action = gets.chomp
  	if(action != "" )
  	end
  end

  def product_search_price

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