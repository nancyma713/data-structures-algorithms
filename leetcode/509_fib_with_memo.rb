def fib(n)
    @cache = {}
    return n if n <= 1
    @cache[0] = 0
    @cache[1] = 1
    
    memoize(n)
end

def memoize(n)
   return @cache[n] if @cache[n]
    
    @cache[n] = memoize(n - 1) + memoize(n - 2)
    memoize(n)
end