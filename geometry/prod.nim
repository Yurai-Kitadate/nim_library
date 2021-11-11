proc prod(points1: seq[int], points2: seq[int], cnt: int): int =
    if cnt == 2:
        var res: int = points1[0]*points2[0] + points1[1]*points2[1]
        return res
    else:
        var res: int
        res += points1[0]*points2[0]
        res += points1[1]*points2[1]
        res += points1[2]*points2[2]
        return res
