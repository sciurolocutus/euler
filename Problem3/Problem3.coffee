#Project Euler: Problem 3

target_num = 600851475143;

list_of_primes = [2,3];

is_prime = (n) ->
    for x in list_of_primes
        if (n == x)
            return true;
        else if (n % x) == 0
            return false;
    list_of_primes.push n;
    #console.log(list_of_primes.join(",") + "\n");
    return true;

factorize = (n) ->
    i = 2;
    while(i * i) < n
        if is_prime(i)
            if ((n % i) == 0)
                console.log(i);
                return [i].concat(factorize(n/i));
        i++;
    return [n];

console.log(factorize(target_num));