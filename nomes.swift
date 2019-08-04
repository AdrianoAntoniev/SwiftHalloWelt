import Foundation

var nomeComRespeito = {(name: String) -> String in return "Sr(a) " + name}

var nomeComMuitoRespeito = {(nome: String) ->
            String in return "Excelentíssimo(a) " + nomeComRespeito(nome) }

var nomePhodastico = {(nome: String) ->
            String in return "SuperMegaMaxiBlaster " + nomeComMuitoRespeito(nome)}             

print(nomePhodastico("José"))



