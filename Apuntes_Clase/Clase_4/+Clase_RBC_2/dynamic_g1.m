function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = Clase_RBC_2.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(11, 18);
g1(1,4)=1;
g1(1,5)=(-1);
g1(1,6)=(-1);
g1(2,5)=(-y(15))/(y(5)*y(5));
g1(2,15)=1/y(5);
g1(2,16)=(-params(2));
g1(3,6)=(-1);
g1(3,1)=(-(1-params(4)));
g1(3,8)=1;
g1(4,5)=(-((-params(3))/y(10)));
g1(4,7)=1;
g1(4,10)=(-((y(10)-(y(10)-y(5)*params(3)))/(y(10)*y(10))));
g1(5,4)=(-(params(1)*1/y(1)));
g1(5,1)=(-(params(1)*(-y(4))/(y(1)*y(1))));
g1(5,9)=1;
g1(6,4)=(-(params(7)*1/y(7)));
g1(6,7)=(-(params(7)*(-y(4))/(y(7)*y(7))));
g1(6,10)=1;
g1(7,4)=(-((1-params(1)-params(7))*1/y(13)));
g1(7,13)=(-((1-params(1)-params(7))*(-y(4))/(y(13)*y(13))));
g1(7,14)=1;
g1(8,4)=1;
g1(8,7)=(-(T(4)*T(2)*T(5)));
g1(8,1)=(-(T(4)*T(3)*T(7)));
g1(8,11)=(-(T(4)*T(1)*T(3)));
g1(8,13)=(-(T(2)*T(3)*T(8)));
g1(9,2)=(-(params(5)*1/y(2)));
g1(9,11)=1/y(11);
g1(9,17)=(-1);
g1(10,3)=(-(params(6)*1/y(3)));
g1(10,12)=1/y(12);
g1(10,18)=(-1);
g1(11,12)=(-params(8));
g1(11,13)=1;

end
