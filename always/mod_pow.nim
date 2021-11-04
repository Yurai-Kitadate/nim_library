proc mod_pow(x, n, p: int): int =
    var ans = 1
    var X: int = x
    var N: int = n
    while N >= 1:
        if N mod 2 == 1:
            ans *= X
            ans = ans mod p
        X *= X
        X = X mod p
        N = N div 2
    return ans
