INSERIR = 1
VER = 2
SAIR = 3

puts "********** Bem vindo **********"
puts

def menu()
    puts "[#{INSERIR}] Inserir receita."
    puts "[#{VER}] Ver receita."
    puts "[#{SAIR}] Sair."
    print "Escolha uma opcao: "
    return gets.to_i
end
opcao = menu()
puts
receitas = []

while (opcao != SAIR) do
    if (opcao == INSERIR)
        puts "-- Digite o nome da receita: "
        nome = gets.chomp()
        receitas << nome
        puts "-- Digite o tipo da receita: "
        tipo = gets.chomp()
        receitas << tipo
        puts
        puts "-- Receita #{nome} cadastrada com sucesso!"
        puts
    elsif (opcao == VER)
        puts "********** RECEITAS CADASTRADAS **********"
        receitas.each do |receita|
            puts receita
            puts
        end
    else
        puts "-- Opcao invalida!"
    end
    opcao = menu()

end
