 A = [0 1, -2 -3]

 B = [0 1]

 C = [1 0]

 D = 0

syms s k m b;
A = [0 1; -k/m -b/m];
B = [0;1/m]

 C = [1 0];
 D = 0;

 G = C * inv(s*eye(2)-A) * B
 G = simplify(G)
[num, den] = numden(G);
G = collect(num, s) / collect(den, s);