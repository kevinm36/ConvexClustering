%%%%%%%%%%%%% solve convex cluster formulation %%%%%%%%%%%%%
cvx_begin
variable mu1(d,N)
minimize(sum(sum((x-mu1).*(x-mu1))) ...
         +lambda*dot(weights_Q,norms(Q*mu1',2,p)))
cvx_end
