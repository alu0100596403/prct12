#require p10lppt13.rb

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

	def operando(matriz) #Funcion para la creacion de las matrices
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
                   	@result = @operandos[0]+@operandos[1]
                   when "resta"
                   	@result = @operandos[0]-@operandos[1]
            	end                
	end

end
