INSERIR = 1
VER = 2
SAIR =3

puts "Bem vindo!"
puts
def menu()
    puts "[#{INSERIR}] Cadastrar."
    puts "[#{VER}] Ver."
    puts "[#{SAIR}] Sair."
    print "Escolha uma opcao: "
    return gets.to_i
end
def cadastrar()
    print "Digite o nome da receita: "
    nome = gets.chomp()
    print "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada com sucesso!"
    return {nome: nome, tipo: tipo}
    puts    
end
def ver(receitas)
    puts
    puts "++++++++++  RECEITAS  +++++++++++"
    receitas.each do |receita|
        puts "RECEITA: #{receita[:nome]} - TIPO: #{receita[:tipo]}"
        puts "-"
    end
    if receitas.empty?
        puts "Sem receitas ainda!"
    end
end

receitas = []
opcao = menu()

loop do
    if (opcao == INSERIR)
        receitas << cadastrar()
    elsif (opcao == VER)
        ver(receitas)
    elsif (opcao == SAIR)
        break
    else
        puts
        puts "Opcao invalida!"
        puts
    end
    opcao = menu()
end
puts
puts "+++++++++++  Tchauuuu!  ++++++++++++"