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
    T = Clase_RBC_2.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(34,1);
g2_j = zeros(34,1);
g2_v = zeros(34,1);

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
g2_i(16)=8;
g2_i(17)=8;
g2_i(18)=8;
g2_i(19)=8;
g2_i(20)=8;
g2_i(21)=8;
g2_i(22)=8;
g2_i(23)=8;
g2_i(24)=8;
g2_i(25)=8;
g2_i(26)=8;
g2_i(27)=8;
g2_i(28)=8;
g2_i(29)=8;
g2_i(30)=8;
g2_i(31)=9;
g2_i(32)=9;
g2_i(33)=10;
g2_i(34)=10;
g2_j(1)=77;
g2_j(2)=87;
g2_j(3)=257;
g2_j(4)=82;
g2_j(5)=167;
g2_j(6)=172;
g2_j(7)=55;
g2_j(8)=4;
g2_j(9)=1;
g2_j(10)=61;
g2_j(11)=112;
g2_j(12)=115;
g2_j(13)=67;
g2_j(14)=220;
g2_j(15)=229;
g2_j(16)=115;
g2_j(17)=109;
g2_j(18)=7;
g2_j(19)=119;
g2_j(20)=187;
g2_j(21)=121;
g2_j(22)=223;
g2_j(23)=1;
g2_j(24)=11;
g2_j(25)=181;
g2_j(26)=13;
g2_j(27)=217;
g2_j(28)=193;
g2_j(29)=227;
g2_j(30)=229;
g2_j(31)=20;
g2_j(32)=191;
g2_j(33)=39;
g2_j(34)=210;
g2_v(1)=(-((-y(15))*(y(5)+y(5))))/(y(5)*y(5)*y(5)*y(5));
g2_v(2)=(-1)/(y(5)*y(5));
g2_v(3)=g2_v(2);
g2_v(4)=(-(params(3)/(y(10)*y(10))));
g2_v(5)=g2_v(4);
g2_v(6)=(-((-((y(10)-(y(10)-y(5)*params(3)))*(y(10)+y(10))))/(y(10)*y(10)*y(10)*y(10))));
g2_v(7)=(-(params(1)*(-1)/(y(1)*y(1))));
g2_v(8)=g2_v(7);
g2_v(9)=(-(params(1)*(-((-y(4))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))));
g2_v(10)=(-(params(7)*(-1)/(y(7)*y(7))));
g2_v(11)=g2_v(10);
g2_v(12)=(-(params(7)*(-((-y(4))*(y(7)+y(7))))/(y(7)*y(7)*y(7)*y(7))));
g2_v(13)=(-((1-params(1)-params(7))*(-1)/(y(13)*y(13))));
g2_v(14)=g2_v(13);
g2_v(15)=(-((1-params(1)-params(7))*(-((-y(4))*(y(13)+y(13))))/(y(13)*y(13)*y(13)*y(13))));
g2_v(16)=(-(T(4)*T(2)*getPowerDeriv(y(7),params(7),2)));
g2_v(17)=(-(T(4)*T(5)*T(7)));
g2_v(18)=g2_v(17);
g2_v(19)=(-(T(4)*T(1)*T(5)));
g2_v(20)=g2_v(19);
g2_v(21)=(-(T(2)*T(5)*T(8)));
g2_v(22)=g2_v(21);
g2_v(23)=(-(T(4)*T(3)*y(11)*getPowerDeriv(y(1),params(1),2)));
g2_v(24)=(-(T(4)*T(3)*T(6)));
g2_v(25)=g2_v(24);
g2_v(26)=(-(T(3)*T(7)*T(8)));
g2_v(27)=g2_v(26);
g2_v(28)=(-(T(1)*T(3)*T(8)));
g2_v(29)=g2_v(28);
g2_v(30)=(-(T(2)*T(3)*getPowerDeriv(y(13),1-params(1)-params(7),2)));
g2_v(31)=(-(params(5)*(-1)/(y(2)*y(2))));
g2_v(32)=(-1)/(y(11)*y(11));
g2_v(33)=(-(params(6)*(-1)/(y(3)*y(3))));
g2_v(34)=(-1)/(y(12)*y(12));
g2 = sparse(g2_i,g2_j,g2_v,11,324);
end
