import sets, tables, sequtils, strutils, strformat, math, lenientops, sets,
        strformat, algorithm
proc print(args: varargs[int]) =
  echo @args.join " "
proc print(args: varargs[string]) =
  echo @args.join " "
template `%`(a, b: int): int =
  a mod b
template reverse: untyped =
  Descending
type Int = int64
template len(a: seq): int =
  a.len
print([1, 4, 5])
iterator range(Start: int, End: int, Diff: int): int =
  var s = Start
  if Start <= End:
    while s <= END - 1:
      yield s
      s += Diff
  else:
    while s > END:
      yield s
      s -= Diff
iterator range(Count: int): int =
  var s = 0
  while s < Count:
    yield s
    s += 1
# for i in range(10, 5, 1):
#   print(i)
# for i in range(6):
#   print(i)
