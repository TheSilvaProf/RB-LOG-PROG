puts "******** Bem vindo ao cookbook **********"
puts "-"
receitas = []

while (true) do
    print "> Digite o nome da receita: "
    nome = gets.chomp()
    receitas << nome
    
    puts "-"
    puts "> Receita #{nome} cadastrada com sucesso."
    puts "-"
    puts "*********** RECEITAS ***********"
    receitas.each do |receita|
        puts receita
    end
    puts "-"
end
