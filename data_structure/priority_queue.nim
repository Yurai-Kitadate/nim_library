var
    sz: int64 = 0
    heap: array[10, int64]
    inf: int64 = 10000000000000
for i in 0..9:
    heap[i] = inf
proc push(x: int64) =
    var x = -x
    var i: int64 = sz
    sz += 1
    while i > 0:
        var p: int64 = (i - 1) div 2
        if heap[p] <= x:
            break
        heap[i] = heap[p]
        i = p
        
    heap[i] = x
proc pop(): int64 =
    sz -= 1
    var
        ret: int64 = heap[0]
        x: int64 = heap[sz]
        i: int64 = 0
    while i*2 + 1 < sz:
        var
            a: int64 = i*2 + 1
            b: int64 = i*2 + 2
        if b < sz:
            if heap[b] < heap[a]:
                a = b
        if heap[a] >= x:
            break
        heap[i] = heap[a]
        i = a
    heap[i] = x
    return - ret
