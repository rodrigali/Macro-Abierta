function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g2
%

if T_flag
    T = ex.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(22,1);
g2_j = zeros(22,1);
g2_v = zeros(22,1);

g2_i(1)=2;
g2_i(2)=2;
g2_i(3)=2;
g2_i(4)=4;
g2_i(5)=4;
g2_i(6)=4;
g2_i(7)=5;
g2_i(8)=5;
g2_i(9)=5;
g2_i(10)=6;
g2_i(11)=6;
g2_i(12)=6;
g2_i(13)=7;
g2_i(14)=7;
g2_i(15)=7;
g2_i(16)=7;
g2_i(17)=7;
g2_i(18)=7;
g2_i(19)=7;
g2_i(20)=7;
g2_i(21)=8;
g2_i(22)=8;
g2_j(1)=49;
g2_j(2)=57;
g2_j(3)=169;
g2_j(4)=53;
g2_j(5)=109;
g2_j(6)=113;
g2_j(7)=31;
g2_j(8)=3;
g2_j(9)=1;
g2_j(10)=37;
g2_j(11)=93;
g2_j(12)=97;
g2_j(13)=1;
g2_j(14)=7;
g2_j(15)=91;
g2_j(16)=10;
g2_j(17)=136;
g2_j(18)=97;
g2_j(19)=100;
g2_j(20)=142;
g2_j(21)=17;
g2_j(22)=145;
g2_v(1)=(-((-y(12))*(y(4)+y(4))))/(y(4)*y(4)*y(4)*y(4));
g2_v(2)=(-1)/(y(4)*y(4));
g2_v(3)=g2_v(2);
g2_v(4)=(-(params(3)/(y(8)*y(8))));
g2_v(5)=g2_v(4);
g2_v(6)=(-((-((y(8)-(y(8)-y(4)*params(3)))*(y(8)+y(8))))/(y(8)*y(8)*y(8)*y(8))));
g2_v(7)=(-(params(1)*(-1)/(y(1)*y(1))));
g2_v(8)=g2_v(7);
g2_v(9)=(-(params(1)*(-((-y(3))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))));
g2_v(10)=(-((1-params(1))*(-1)/(y(7)*y(7))));
g2_v(11)=g2_v(10);
g2_v(12)=(-((1-params(1))*(-((-y(3))*(y(7)+y(7))))/(y(7)*y(7)*y(7)*y(7))));
g2_v(13)=(-(T(3)*y(10)*getPowerDeriv(y(1),params(1),2)));
g2_v(14)=(-(T(5)*T(6)));
g2_v(15)=g2_v(14);
g2_v(16)=(-(T(3)*T(4)));
g2_v(17)=g2_v(16);
g2_v(18)=(-(T(2)*getPowerDeriv(y(7),1-params(1),2)));
g2_v(19)=(-(T(1)*T(6)));
g2_v(20)=g2_v(19);
g2_v(21)=(-(params(5)*(-1)/(y(2)*y(2))));
g2_v(22)=(-1)/(y(10)*y(10));
g2 = sparse(g2_i,g2_j,g2_v,9,225);
end
