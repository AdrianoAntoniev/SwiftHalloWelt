func fatorial(_ termo: Int) -> Int {
    if(termo < 2) {
        return 1
    }
    return termo * fatorial(termo-1)
}

func fibonacci(_ termo: Int) -> Int {
    if(termo < 2) {
        return termo
    }
        
    return fibonacci(termo - 1) + fibonacci(termo - 2)
}

print(fatorial(5))
print(fibonacci(3))