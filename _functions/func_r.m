function R = r(u_,n_,th_r)
double precision; format long;

R_ = zeros(length(th_r),1);
for i_ = 1:length(th_r)
    theta = th_r(i_,i_);
    if theta == 0
        R_(i_) = 0;
    else
        R_(i_) = 2/pi*(q(u_,n_,theta) - q(u_,0,theta)*q(0,n_,theta)/q(0,0,theta));
    end
end
R = diag(R_);
end