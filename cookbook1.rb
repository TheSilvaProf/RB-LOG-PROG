puts "******** Bem vindo ao cookbook **********"
puts "-"
def menu()
    puts "[1] Cadastrar receita."
    puts "[2] Ver receitas."
    puts "[3] Sair."
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


while (opcao != 3) do
    if (opcao == 1)
        receitas << inserir()
    elsif (opcao == 2)
        ver(receitas)
    else
        puts "> Opção inválida!"
    end
    puts "-"
    opcao = menu()
end
puts "-"
puts "*********** TCHAUUUUU! *************"