  @products = []

  def header
    puts "**********************************************"

    puts "Digite a opção desejada:"
    puts "1) Inserir um Fertilizante"
    puts "2) Pesquisar um Fertilizantes por Preço"
    puts "3) Editar Preço de um Fertilizante"
    puts "4) Sair"
    puts "5) Visualizar todos"

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
       	    puts "Digite o index do produto"
       	    index = gets.chomp
       	    puts "Digite o novo preço do produto"
       	    new_price = gets.chomp
       	    edit_price(index,new_price)
        	puts "Preço editado com sucesso!"
       when "4"
       	puts "Obrigado por utilizar o programa!"
       	space
       when "5"
       	all_products(nil)
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

  def all_products(valor = nil)
  	puts "==============================================="
    puts "Total de registros: #{@products.size} "

    space

      if @products.size == 0
      	puts "Não existe registro!"
      else
        @products.each_with_index { |p,i|

        unless valor.nil?
           if(p[:price].to_i <= valor.to_i)
             puts "Index: #{i}   | Nome: #{p[:name]}       | Preço/Tonelada: #{p[:price]}"
           end
        else
          puts "Index: #{i}   | Nome: #{p[:name]}       | Preço/Tonelada: #{p[:price]}"
        end

      }
    end
  	puts "==============================================="
  	puts "Pressione qualquer botão para continuar"
  	action = gets.chomp
  	if(action != "" )
  	end
  end

  def edit_price(index,new_price)
   @products.each_with_index { |p,i|

       p[:price] = new_price if i == index.to_i
       puts i.class
       puts index.class

      }
  end

  def space
   puts ""
   puts ""
   puts ""
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