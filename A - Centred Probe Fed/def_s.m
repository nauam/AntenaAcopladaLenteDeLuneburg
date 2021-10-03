function S = def_s(u_,n_,th_r)
double precision; format long;

S_ = zeros(length(th_r),1);
for i_ = 1:length(th_r)
    theta = th_r(i_,i_);
    if theta == 0
        S_(i_) = 0;
    else
        S_(i_) = 2/pi*(def_q(u_,n_,theta) - def_q(u_,0,theta)*def_q(0,n_,theta)/def_q(0,0,theta));
    end
end
S = diag(S_);
end