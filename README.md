[Práctica 12 de LPP](http://campusvirtual.ull.es/1314/mod/assign/view.php?id=110526)
=================

Alumnos:
  - [José Alexander Delgado Hernández](http://campusvirtual.ull.es/1314/user/view.php?id=5990&course=1102) ([alu0100596403@ull.edu.es](mailto:alu0100596403@ull.edu.es))
  - [Sem Ramos Herrera](http://campusvirtual.ull.es/1314/user/view.php?id=2455&course=1102) ([alu0100603194@ull.edu.es](mailto:alu0100603194@ull.edu.es))

=================
Considere la Gema para la representación de Matrices que ha desarrollado en prácticas anteriores. Los objetivos de esta práctica son dos:
Seguir las dependencias de la Gema (Gemnasium).
Diseñar e implementar un Lenguaje de Dominio Específico (Domain Specific Language - DSL).
Diseñar y desarrollar un DSL interno para trabajar con matrices.
Los DSL son herramientas útiles que permiten expresar fácilmente la lógica específica de un problema particular (dominio) que de otro modo sería difícil o farragoso de escribir en otro idioma. Por lo general, se trata de definir una gramática que se asemeja más al léxico utilizado por el dominio de destino. Por ejemplo, un matemático que trabaja con matrices no piensa en bucles, iteradores o arrays, sino que piensa en términos de vectores, productos y transformaciones. El uso de un lenguaje de propósito general, como Ruby, con sólo arrays e iteradores requeriría que el matemático practicara gimnasia mental para traducir mentalmente entre el dominio de su problema (matrices) y el del lenguaje con el que escribe el código (Ruby) . El uso de un DSL diseñado para operaciones con matrices eliminaría esta traducción mental y proporcionaría un código más conciso. Los DSL tienen dos formas: externos e internos. Los DSL externos existen independientemente de cualquier otro lenguaje. Los DSL internos estan alojados dentro de otro lenguaje de programación - por ejemplo, Rails es un DSL interno que se aloja en el lenguaje de programación Ruby.
En este ejercicio se ha de diseñar un DSL interno para trabajar con la clase para matrices que se ha desarrollado durante el curso. Un posilbe ejemplo del mismo sería el siguiente:
ejemplo = MatrixDSL.new("suma") do 
  option "densa" 
  option "console"

  operand [[1,2,3],[4,5,6],[7,8,9]]  
  operand [[1,1,1],[1,1,1],[1,1,1]]  
end
Utilizar Gemnasium para comprobar las dependencias de la aplicación desarrollada.
Indicar la URL del repositorio que ha desarrollado y el informe de dependencias para su Gema ofrecido por Gemnasium.
=================

##Jerarquía de la práctica
    .
    ├── bin
    │   └── P10lppt13
    ├── Gemfile
    ├── .git
    ├── .gitignore
    ├── lib
    │   ├── P10lppt13
    │   │   └── version.rb
    │   └── P10lppt13.rb
    ├── LICENSE.txt
    ├── P10lppt13.gemspec
    ├── Rakefile
    ├── README.md
    ├── .README.md.kate-swp
    └── .travis.yml

##Clases que contendrá la práctica

    En primer lugar, existirá una clase base "Matriz" abstracta, de la que heredarán "Dispera" y "Densa", 
    y en la que se encontrarán los métodos comunes a ambas subclases, que según el porcentaje de
    elementos que sean igual a cero, se tratará de un tipo de matriz u otro.
    
## Installation

Add this line to your application's Gemfile:

    gem 'Practica9'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install Practica9

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
