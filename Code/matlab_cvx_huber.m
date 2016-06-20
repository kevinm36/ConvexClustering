%%%%%%%%%%%%% solve convex cluster formulation %%%%%%%%%%%%%
cvx_begin
variable mu1(d,N)
for i =1:N
    g = g + sum(huber(x(:,i)-mu1(:,i)))
end
h = lambda*dot(weights_Q,norms(Q*mu1',2,p))
g = g+h
minimize(g)
cvx_end
