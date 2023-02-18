INSERIR = 1
VER = 2
SAIR = 3


puts "******** Bem vindo ao cookbook **********"
puts "-"
def menu()
    puts "[#{INSERIR}] Cadastrar receita."
    puts "[#{VER}] Ver receitas."
    puts "[#{SAIR}] Sair."
    print "> Escolha uma opção: "
    return gets.to_i
end
def inserir()
    print "> Digite o nome da receita: "
    nome = gets.chomp()
    print "> Digite o tipo da receita: "
    tipo = gets.chomp()
    puts "-"
    puts "> Receita #{nome} cadastrada com sucesso."
    return {nome: nome, tipo: tipo}  
end
def ver(receitas)
    puts "*********** RECEITAS ***********"
    receitas.each do |receita|
        puts "NOME: #{receita[:nome]} -- TIPO: #{receita[:tipo]}"
    end
    puts "-"    
end

opcao = menu()
receitas = []


loop do
    if (opcao == INSERIR)
        receitas << inserir()
    elsif (opcao == VER)
        ver(receitas)
    elsif (opcao == SAIR)
        break
    else
        puts "> Opção inválida!"
    end
    puts "-"
    opcao = menu()
end
puts "-"
puts "*********** TCHAUUUUU! *************"