from functools import reduce

l = [[1,2,3],[4,5,6], [7], [8,9]]
flat_list = []
for sublist in l:
    for item in sublist:
        flat_list.append(item)

        
flatten = lambda l: [item for sublist in l for item in sublist]
print(flat_list)
print(flatten(l))
print(reduce(lambda x, y: x+y, l))
print(sum(l, []))
