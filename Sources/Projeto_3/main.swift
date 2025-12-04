class Academia {
    let nome: String 
    private var alunosMatriculados: [String: Aluno]
    private var intrutoresContratados: [String: Instrutor]
    private var aparelhos: [Aparelho]
    private var aulasDisponiveis: [Aula]

    init(nome: String, alunosMatriculados: String, intrutoresContratados: String,
         aparelhos: aparelho, aulasDisponiveis: Aula){
                self.nome = nome
                self.alunosMatriculados = alunosMatriculados
                self.intrutoresContratados = intrutoresContratados
                self.aparelhos = aparelhos
                self.aulasDisponiveis = aulasDisponiveis

                func adicionarAparelho(_ aparelho: Aparelho){
    self.aparelhos.append(aparelho)
    }

    func adicionarAula(_ aula: Aula){
        self.aulasDisponiveis.append(aula)
    }

    func contratarInstrutor(_ instrutor: Instrutor){
        self.intrutoresContratados[instrutor.email] = instrutor
    }

    
    func matricularAluno(_ aluno: Aluno){
        if !self.alunosInscritos.keys.contains(aluno.matricula){
                    alunosInscritos[aluno.matricula] = aluno
                    print("Aluno registrado com sucesso!")
        } else{
            print("Erro: Aluno já matriculado")
        }
    }

    override func matricularAluno(nome: String, email: String, matricula: String, plano: Plano) -> Aluno{
        let novoAluno = Aluno(nome: nome, email: email, matricula: matricula, plano: plano)
        self.matricularAluno(novoAluno)
        return novoAluno
    }

    }
}


