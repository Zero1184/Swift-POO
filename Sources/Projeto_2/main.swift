protocol Manutencao {
    var nomeItem: String {get set}
    var dataUltimaManutencao: String {get set}
    func realizarManutencao() -> Bool
}

class Aparelho: Manutencao{
    var nomeItem: String
    var dataUltimaManutencao: String
    
    init(nome: String){
        self.nome = nome
    }
    
    realizarManutencao(){
        print("A última atualização foi feita em \(dataUltimaManutencao)")
    }
}