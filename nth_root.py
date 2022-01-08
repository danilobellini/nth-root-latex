def nth_root(x, n):
    a = (x - 1) // n + 1
    while a > (d := x // a ** (n - 1)):
        a = ((n - 1) * a + d) // n
    return a
