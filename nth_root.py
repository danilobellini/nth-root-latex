def nth_root(x, n, a0=None):
    a = x if a0 is None else a0
    while a > (d := x // a ** (n - 1)):
        a = ((n - 1) * a + d) // n
    return a
