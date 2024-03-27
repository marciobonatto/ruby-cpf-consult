require 'cpf_cnpj'

def validateCPF
  puts "Escreva o nº do CPF a ser consultado:"
  userCPF = gets.chomp
  if CPF.valid?(userCPF, strict: true)
    resultCPF = "SIM, #{userCPF} é um CPF válido."
  else
    resultCPF = "NÃO, #{userCPF} não é um CPF válido."
  end
  lenCPF = resultCPF.length.to_i
  puts "#{'-' * lenCPF}\n#{resultCPF}\n#{'-' * lenCPF}"
end

loop do
  validateCPF
  puts "Você quer fazer outra consulta? Escreva (S) se Sim ou (N) se Não:"
  exitCPF = ''
  loop do
    exitCPF = gets.chomp.upcase
    if exitCPF == 'N' or exitCPF == 'S'
      break
    else
      puts "OPÇÃO INVÁLIDA! Escreva (S) se Sim ou (N) se Não:"
    end
  end
  if exitCPF == 'N'
    break
  end
end