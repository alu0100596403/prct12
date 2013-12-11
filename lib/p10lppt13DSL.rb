require "p10lppt13.rb"

class MatrizDSL

	attr_accessor :operandos, :op, :tipo, :result

	def initialize(operador, &block) #Matriz DSL 
		@operandos = []
		@op = operador
		@tipo = []
		@result
		
		instance_eval &block
	end

	def to_s 
		"#{@result}"
	end

	def tipoMatriz(opc)  #Funcion que ira almacenando en @modo los tipos de matrices
		@tipo << opc
	end

	def operando(nfil, ncol, matriz) #Funcion para la creacion de las matrices
		aux = @tipo.pop
		if (aux == "Densa")
			m = Densa.new(nfil, ncol, matriz)
		else
			if(aux == "Dispersa")
				m = Dispersa.new(nfil, ncol, matriz)
			end
		end
		
		@operandos << m
		
		if(@operandos.size == 2)
			operador
		end
		
		if(@op == "max" or @op == "min")
			operador
		end
	end

	def operador
		case @op
			when "suma"
				@result = @operandos[0] + @operandos[1]
			when "resta"
				@result = @operandos[0] - @operandos[1]
			when "max"
				@result = @operandos[0].max
			when "min"
				@result = @operandos[0].min
			end                
	end

end

pruebaSumaMixta = MatrizDSL.new("suma") do
	tipoMatriz "Densa"
	operando 2,2,[[1,2],[3,4]]
	tipoMatriz "Dispersa"
	operando 2,2, 0 => { 0 => 2, 1 => 1 }
end

pruebaRestaMixta = MatrizDSL.new("suma") do
	tipoMatriz "Densa"
	operando 2,2,[[1,2],[3,4]]
	tipoMatriz "Dispersa"
	operando 2,2, 0 => { 0 => 2, 1 => 1 }
end

pruebaMax = MatrizDSL.new("max") do
	tipoMatriz "Densa"
	operando 2,2,[[1,20],[3,4]]
end

puts "Prueba Suma Matriz Densa con Dispersa"
puts pruebaSumaMixta
#puts "Prueba Suma Matrices Densas"
#puts pruebaSumaDensa
#puts "Prueba Suma Matrices Dispersas"
#puts pruebaSumaDispersa

puts "Prueba Resta Matriz Densa con Dispersa"
puts pruebaRestaMixta
#puts "Prueba Resta Matrices Densa"
#puts pruebaRestaDensa
#puts "Prueba Resta Matrices Dispersa"
#puts pruebaRestaDispersa

puts "Maximo de una Matriz"
puts pruebaMax
