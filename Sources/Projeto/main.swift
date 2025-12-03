import Foundation

// enum NivelAluno
enum NivelAluno{
    case iniciante
    case intermediario
    case avancado
}

// Criação classe base
class Pessoa{
    private(set) var nome: String
    private(set) var email: String
   
    // Construtor da classe base
    init(nome: String, email: String){
        self.nome = nome
        self.email = email
    }
   
    // Função retorna nome e email
    func getDescricao() -> String{
        return """
        Informações Pessoais:
        Nome: \(self.nome)
        Email: \(self.email)
        """
    }
}

// Criação da subclasse Aluno
class Aluno: Pessoa{
    let matricula: String
    var nivel: NivelAluno
    private(set) var plano: Plano
    

    // Contrutor da subclasse
    init(nome: String, email: String, matricula: String, plano: Plano){
        self.matricula = matricula
        self.nivel = .iniciante
        self.plano = plano
        super.init(nome: nome, email: email)
    }
}

// Criação da subclasse Instrutor
class Instrutor: Pessoa{
    let especialidade: String
    
    // Construtor da subclasse
    init(nome: String, email: String, especialidade: String){
        self.especialidade = especialidade
        super.init(nome: nome, email: email)
    }
    
    // Sobreescrita da função retorn nome, emial e especialidade
    override func getDescricao() -> String{
        return """
        Nome: \(nome)
        Email: \(email) 
        Especialidade: \(especialidade)
        """
    }
}

// Criação classe plano
class Plano{
    var nome: String

    // Construtor da classe
    init(nome: String){
        self.nome = nome
    }

    // Função retorna valor da mensalidade
    func calcularMensalidade() -> Double{
        return 0.0
    }
}

// Criação da subclasse PlanoMensal
class PlanoMensal: Plano{
    init(){
        super.init(nome: "Plano Mensal")
    }

    // Soobercrita da função retorna valor da mensalidade do plano mensal
    override func calcularMensalidade() -> Double {
        return 120.0
    }
}

// Plano anual
class PlanoAnual: Plano{

    // Contrutor da subclasse
    init(){
        super.init (nome: "Plano Anual(Promocional)")
    }

    // Sobreescrita de função retorna mensalidade do plano anual
    override func calcularMensalidade() -> Double{
        let mensalidade: Double = (120 * 0.8)
        return mensalidade
    }
}



