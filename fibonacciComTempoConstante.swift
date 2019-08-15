import Foundation

func fibonacciComODeUm(_ n: Double) -> Int {    
    let umSobreRaizDeCinco = 1 / sqrt(5)

    let umMaisRaizDeCinco = 1 + sqrt(5)
    let umMenosRaizDeCinco = 1 - sqrt(5)        

    let primeiroTermo = umMaisRaizDeCinco / 2
    let segundoTermo = umMenosRaizDeCinco / 2

    let primeiroTermoElevadoAN = pow(primeiroTermo, n)
    let segundoTermoElevadoAN = pow(segundoTermo, n)

    let resultado = umSobreRaizDeCinco * (primeiroTermoElevadoAN - segundoTermoElevadoAN)

    return Int(resultado)
}

print("O termo é \(fibonacciComODeUm(13.0))")

//80 = correto 23416728348467685 -> programa gerando 23416728348467744
//75 = correto 2111485077978050 -> programa gerando 2111485077978055
//74 = correto 1304969544928657 -> programa gerando 1304969544928660
//73 = correto 806515533049395  -> programa gerando 806515533049393
//72 = correto  498454011879264 -> programa gerando 49845401187926

// ou seja, a partir de 72, este programa gera discrepancias com relacao aos valores comparados no site
// https://pt.numberempire.com/fibonaccinumbers.php 

//70 = 190392490709135