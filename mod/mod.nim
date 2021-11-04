proc pow(x, n: int): int =
    var ans = 1
    var X: int = x
    var N: int = n
    while N >= 1:
        if N mod 2 == 1:
            ans *= X
        X *= X
        N = N div 2
    return ans
