puts "******** Bem vindo ao cookbook **********"
puts "-"
receitas = []
puts "[1] Cadastrar receita."
puts "[2] Ver receitas."
puts "[3] Sair."
print "Escolha uma opção: "
opcao = gets.to_i

while (opcao != 3) do
    if (opcao == 1)
        print "> Digite o nome da receita: "
        nome = gets.chomp()
        receitas << nome
        puts "-"
        puts "> Receita #{nome} cadastrada com sucesso."
        puts "-"
    elsif (opcao == 2)
        puts "*********** RECEITAS ***********"
        receitas.each do |receita|
            puts receita
        end
        puts "-"
    else
        puts "> Opção inválida!"
    end
    puts "-"
    puts "[1] Cadastrar receita."
    puts "[2] Ver receitas."
    puts "[3] Sair."
    print "Escolha uma opção: "
    opcao = gets.to_i
end
puts "-"
puts "*********** TCHAUUUUU! *************"