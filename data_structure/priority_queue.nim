var
    sz: int = 0
    heap: array[20, int]
    inf = 1000000000
for i in 0..19:
    heap[i] = inf
proc push(x: int) =
    var i = sz + 1
    sz += 1
    while i > 0:
        var p = (i - 1) div 2
        if heap[p] <= x:
            break
        heap[i] = heap[p]
        i = p
        #print(i)
        #print(p)
    heap[i] = x
proc pop(): int =
    var
        ret = heap[0]
        x = heap[sz - 1]
        sz = sz - 1
        i = 0
    while i*2 + 1 < sz:
        var
            a: int = i*2 + 1
            b: int = i*2 + 2
        if b < sz:
            if heap[b] < heap[a]:
                a = b
        if heap[a] >= x:
            break
        heap[i] = heap[a]
        i = a
    heap[i] = x
    return ret
