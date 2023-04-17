%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'Clase_RBC_2';
M_.dynare_version = '5.4';
oo_.dynare_version = '5.4';
options_.dynare_version = '5.4';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'eps'};
M_.exo_names_tex(1) = {'eps'};
M_.exo_names_long(1) = {'eps'};
M_.exo_names(2) = {'u'};
M_.exo_names_tex(2) = {'u'};
M_.exo_names_long(2) = {'u'};
M_.endo_names = cell(11,1);
M_.endo_names_tex = cell(11,1);
M_.endo_names_long = cell(11,1);
M_.endo_names(1) = {'Y'};
M_.endo_names_tex(1) = {'Y'};
M_.endo_names_long(1) = {'Y'};
M_.endo_names(2) = {'C'};
M_.endo_names_tex(2) = {'C'};
M_.endo_names_long(2) = {'C'};
M_.endo_names(3) = {'I'};
M_.endo_names_tex(3) = {'I'};
M_.endo_names_long(3) = {'I'};
M_.endo_names(4) = {'N'};
M_.endo_names_tex(4) = {'N'};
M_.endo_names_long(4) = {'N'};
M_.endo_names(5) = {'K'};
M_.endo_names_tex(5) = {'K'};
M_.endo_names_long(5) = {'K'};
M_.endo_names(6) = {'R'};
M_.endo_names_tex(6) = {'R'};
M_.endo_names_long(6) = {'R'};
M_.endo_names(7) = {'W'};
M_.endo_names_tex(7) = {'W'};
M_.endo_names_long(7) = {'W'};
M_.endo_names(8) = {'A'};
M_.endo_names_tex(8) = {'A'};
M_.endo_names_long(8) = {'A'};
M_.endo_names(9) = {'Z'};
M_.endo_names_tex(9) = {'Z'};
M_.endo_names_long(9) = {'Z'};
M_.endo_names(10) = {'O'};
M_.endo_names_tex(10) = {'O'};
M_.endo_names_long(10) = {'O'};
M_.endo_names(11) = {'Q'};
M_.endo_names_tex(11) = {'Q'};
M_.endo_names_long(11) = {'Q'};
M_.endo_partitions = struct();
M_.param_names = cell(8,1);
M_.param_names_tex = cell(8,1);
M_.param_names_long = cell(8,1);
M_.param_names(1) = {'alpha'};
M_.param_names_tex(1) = {'alpha'};
M_.param_names_long(1) = {'alpha'};
M_.param_names(2) = {'beta'};
M_.param_names_tex(2) = {'beta'};
M_.param_names_long(2) = {'beta'};
M_.param_names(3) = {'gamma'};
M_.param_names_tex(3) = {'gamma'};
M_.param_names_long(3) = {'gamma'};
M_.param_names(4) = {'delta'};
M_.param_names_tex(4) = {'delta'};
M_.param_names_long(4) = {'delta'};
M_.param_names(5) = {'rho_a'};
M_.param_names_tex(5) = {'rho\_a'};
M_.param_names_long(5) = {'rho_a'};
M_.param_names(6) = {'rho_z'};
M_.param_names_tex(6) = {'rho\_z'};
M_.param_names_long(6) = {'rho_z'};
M_.param_names(7) = {'theta'};
M_.param_names_tex(7) = {'theta'};
M_.param_names_long(7) = {'theta'};
M_.param_names(8) = {'M'};
M_.param_names_tex(8) = {'M'};
M_.param_names_long(8) = {'M'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 11;
M_.param_nbr = 8;
M_.orig_endo_nbr = 11;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [2 4 5 6 7 8 9 10];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 11;
M_.eq_nbr = 11;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 4 0;
 0 5 15;
 0 6 0;
 0 7 0;
 1 8 0;
 0 9 16;
 0 10 0;
 2 11 0;
 3 12 0;
 0 13 0;
 0 14 0;]';
M_.nstatic = 6;
M_.nfwrd   = 2;
M_.npred   = 3;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 3;
M_.ndynamic   = 5;
M_.dynamic_tmp_nbr = [4; 4; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'Y' ;
  2 , 'name' , '2' ;
  3 , 'name' , 'K' ;
  4 , 'name' , 'N' ;
  5 , 'name' , 'R' ;
  6 , 'name' , 'W' ;
  7 , 'name' , 'Q' ;
  8 , 'name' , '8' ;
  9 , 'name' , '9' ;
  10 , 'name' , '10' ;
  11 , 'name' , 'O' ;
};
M_.mapping.Y.eqidx = [1 5 6 7 8 ];
M_.mapping.C.eqidx = [1 2 4 ];
M_.mapping.I.eqidx = [1 3 ];
M_.mapping.N.eqidx = [4 6 8 ];
M_.mapping.K.eqidx = [3 5 8 ];
M_.mapping.R.eqidx = [2 5 ];
M_.mapping.W.eqidx = [4 6 ];
M_.mapping.A.eqidx = [8 9 ];
M_.mapping.Z.eqidx = [10 11 ];
M_.mapping.O.eqidx = [7 8 11 ];
M_.mapping.Q.eqidx = [7 ];
M_.mapping.eps.eqidx = [9 ];
M_.mapping.u.eqidx = [10 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [5 8 9 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(11, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(8, 1);
M_.endo_trends = struct('deflator', cell(11, 1), 'log_deflator', cell(11, 1), 'growth_factor', cell(11, 1), 'log_growth_factor', cell(11, 1));
M_.NNZDerivatives = [34; 34; -1; ];
M_.static_tmp_nbr = [4; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.35;
alpha = M_.params(1);
M_.params(2) = 0.93;
beta = M_.params(2);
M_.params(4) = 0.06;
delta = M_.params(4);
M_.params(7) = 0.05;
theta = M_.params(7);
M_.params(5) = 0.95;
rho_a = M_.params(5);
M_.params(6) = 0.95;
rho_z = M_.params(6);
M_.params(8) = 0.05;
M = M_.params(8);
M_.params(3) = 0.5;
gamma = M_.params(3);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = 1;
oo_.steady_state(2) = 0.8;
oo_.steady_state(3) = 0.2;
oo_.steady_state(5) = 3.5;
oo_.steady_state(4) = 0.2;
oo_.steady_state(7) = 1;
oo_.steady_state(6) = 0.05;
oo_.steady_state(8) = 1;
oo_.exo_steady_state(1) = 0;
oo_.exo_steady_state(2) = 0;
oo_.steady_state(9) = 1;
oo_.steady_state(10) = oo_.steady_state(9)*M_.params(8);
oo_.steady_state(11) = (1-M_.params(1)-M_.params(7))*oo_.steady_state(1)/oo_.steady_state(10);
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.01)^2;
M_.Sigma_e(2, 2) = (0.01)^2;
options_.order = 2;
var_list_ = {'Y';'C';'I';'K';'N';'R';'W';'O';'Q'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Clase_RBC_2_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Clase_RBC_2_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Clase_RBC_2_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Clase_RBC_2_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Clase_RBC_2_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Clase_RBC_2_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Clase_RBC_2_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
