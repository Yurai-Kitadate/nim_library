var N = stdin.readline.parseInt
var point = (0..<N).mapIt(stdin.readLine.split.map(parseInt))
var res = 0
for i in 0..N-1:
    for j in i + 1..N-1:
        for k in j+1..N-1:
            var diff_x = point[i][0]
            var diff_y = point[i][1]
            var point1 = point[i]
            var point2 = point[j]
            var point3 = point[k]
            point2[0] -= diff_x
            point2[1] -= diff_y
            point3[0] -= diff_x
            point3[1] -= diff_y
            if abs(point2[0]*point3[1] - point3[0]*point2[1]) > 0:
                res += 1
echo(res)
