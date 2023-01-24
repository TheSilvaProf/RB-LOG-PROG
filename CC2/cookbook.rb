INSERIR = 1
VER = 2
SAIR = 3

print "* Olah, digite o seu nome: "
nome_visitante = gets.chomp()
puts "-"
puts "* Bem vindo ao CookBook #{nome_visitante}!"
puts
def menu()
    puts "[#{INSERIR}] Inserir."
    puts "[#{VER}] Ver."
    puts "[#{SAIR}] Sair."
    print "Escolha uma opcao: "
    return gets.to_i
end
def inserir()
    print "* Digite o nome da receita: "
    nome = gets.chomp()
    print "* Digite o tipo da receita: "
    tipo = gets.chomp()
    puts "-"
    puts "* Receita #{nome} cadastrada com sucesso."
    puts "-"
    return {nome: nome, tipo: tipo}    
end
def ver(receitas)
    puts
    puts "---------- RECEITAS CADASTRADAS ----------"
    receitas.each do |receita|
        puts "-- NOME: #{receita[:nome]}    -- TIPO: #{receita[:tipo]}"
    end
    if receitas.empty?
        puts "* Nenhuma receita cadastrada."
    end
end

opcao = menu()
receitas = []

loop do
    if (opcao == INSERIR)
        receitas << inserir()
    elsif (opcao == VER)
        ver(receitas)
        puts "-"
    elsif (opcao == SAIR)
        break
    else
        puts "* Opcao invalida."
    end
    opcao = menu()
    
end
puts
puts "---------- OBRIGADO POR USAR O COOKBOOK ----------"

