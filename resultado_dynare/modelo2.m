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
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'modelo2';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('modelo2.log');
M_.exo_names = 'epsilona';
M_.exo_names_tex = 'epsilona';
M_.exo_names_long = 'epsilona';
M_.exo_names = char(M_.exo_names, 'epsilonm');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsilonm');
M_.exo_names_long = char(M_.exo_names_long, 'epsilonm');
M_.endo_names = 'pi';
M_.endo_names_tex = 'pi';
M_.endo_names_long = 'pi';
M_.endo_names = char(M_.endo_names, 'x');
M_.endo_names_tex = char(M_.endo_names_tex, 'x');
M_.endo_names_long = char(M_.endo_names_long, 'x');
M_.endo_names = char(M_.endo_names, 'ynat');
M_.endo_names_tex = char(M_.endo_names_tex, 'ynat');
M_.endo_names_long = char(M_.endo_names_long, 'ynat');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'rnat');
M_.endo_names_tex = char(M_.endo_names_tex, 'rnat');
M_.endo_names_long = char(M_.endo_names_long, 'rnat');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names_long = char(M_.endo_names_long, 'i');
M_.endo_names = char(M_.endo_names, 'l');
M_.endo_names_tex = char(M_.endo_names_tex, 'l');
M_.endo_names_long = char(M_.endo_names_long, 'l');
M_.endo_names = char(M_.endo_names, 'mg');
M_.endo_names_tex = char(M_.endo_names_tex, 'mg');
M_.endo_names_long = char(M_.endo_names_long, 'mg');
M_.endo_names = char(M_.endo_names, 'm');
M_.endo_names_tex = char(M_.endo_names_tex, 'm');
M_.endo_names_long = char(M_.endo_names_long, 'm');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, 'a');
M_.endo_names_long = char(M_.endo_names_long, 'a');
M_.endo_names = char(M_.endo_names, 'rano');
M_.endo_names_tex = char(M_.endo_names_tex, 'rano');
M_.endo_names_long = char(M_.endo_names_long, 'rano');
M_.endo_names = char(M_.endo_names, 'iano');
M_.endo_names_tex = char(M_.endo_names_tex, 'iano');
M_.endo_names_long = char(M_.endo_names_long, 'iano');
M_.endo_names = char(M_.endo_names, 'rnatano');
M_.endo_names_tex = char(M_.endo_names_tex, 'rnatano');
M_.endo_names_long = char(M_.endo_names_long, 'rnatano');
M_.endo_names = char(M_.endo_names, 'piano');
M_.endo_names_tex = char(M_.endo_names_tex, 'piano');
M_.endo_names_long = char(M_.endo_names_long, 'piano');
M_.endo_partitions = struct();
M_.param_names = 'alpha';
M_.param_names_tex = 'alpha';
M_.param_names_long = 'alpha';
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'rhoa');
M_.param_names_tex = char(M_.param_names_tex, 'rhoa');
M_.param_names_long = char(M_.param_names_long, 'rhoa');
M_.param_names = char(M_.param_names, 'rhom');
M_.param_names_tex = char(M_.param_names_tex, 'rhom');
M_.param_names_long = char(M_.param_names_long, 'rhom');
M_.param_names = char(M_.param_names, 'sigma');
M_.param_names_tex = char(M_.param_names_tex, 'sigma');
M_.param_names_long = char(M_.param_names_long, 'sigma');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, 'phi');
M_.param_names_long = char(M_.param_names_long, 'phi');
M_.param_names = char(M_.param_names, 'phi_pi');
M_.param_names_tex = char(M_.param_names_tex, 'phi\_pi');
M_.param_names_long = char(M_.param_names_long, 'phi_pi');
M_.param_names = char(M_.param_names, 'phi_y');
M_.param_names_tex = char(M_.param_names_tex, 'phi\_y');
M_.param_names_long = char(M_.param_names_long, 'phi_y');
M_.param_names = char(M_.param_names, 'etah');
M_.param_names_tex = char(M_.param_names_tex, 'etah');
M_.param_names_long = char(M_.param_names_long, 'etah');
M_.param_names = char(M_.param_names, 'epsilon');
M_.param_names_tex = char(M_.param_names_tex, 'epsilon');
M_.param_names_long = char(M_.param_names_long, 'epsilon');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, 'theta');
M_.param_names_long = char(M_.param_names_long, 'theta');
M_.param_names = char(M_.param_names, 'omega');
M_.param_names_tex = char(M_.param_names_tex, 'omega');
M_.param_names_long = char(M_.param_names_long, 'omega');
M_.param_names = char(M_.param_names, 'psi');
M_.param_names_tex = char(M_.param_names_tex, 'psi');
M_.param_names_long = char(M_.param_names_long, 'psi');
M_.param_names = char(M_.param_names, 'lambda');
M_.param_names_tex = char(M_.param_names_tex, 'lambda');
M_.param_names_long = char(M_.param_names_long, 'lambda');
M_.param_names = char(M_.param_names, 'kapa');
M_.param_names_tex = char(M_.param_names_tex, 'kapa');
M_.param_names_long = char(M_.param_names_long, 'kapa');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 15;
M_.param_nbr = 15;
M_.orig_endo_nbr = 15;
M_.aux_vars = [];
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('modelo2_static');
erase_compiled_function('modelo2_dynamic');
M_.orig_eq_nbr = 15;
M_.eq_nbr = 15;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 5 20;
 0 6 21;
 0 7 0;
 1 8 0;
 0 9 0;
 0 10 0;
 2 11 0;
 0 12 0;
 0 13 0;
 3 14 0;
 4 15 22;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;]';
M_.nstatic = 9;
M_.nfwrd   = 2;
M_.npred   = 3;
M_.nboth   = 1;
M_.nsfwrd   = 3;
M_.nspred   = 4;
M_.ndynamic   = 6;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(15, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(15, 1);
M_.NNZDerivatives = [46; 0; -1];
M_.params( 1 ) = 0.3333333333333333;
alpha = M_.params( 1 );
M_.params( 2 ) = 0.88;
beta = M_.params( 2 );
M_.params( 3 ) = 0.9;
rhoa = M_.params( 3 );
M_.params( 4 ) = 0.5;
rhom = M_.params( 4 );
M_.params( 5 ) = 1;
sigma = M_.params( 5 );
M_.params( 6 ) = 1;
phi = M_.params( 6 );
M_.params( 7 ) = 1.5;
phi_pi = M_.params( 7 );
M_.params( 8 ) = 0.125;
phi_y = M_.params( 8 );
M_.params( 9 ) = 4;
etah = M_.params( 9 );
M_.params( 10 ) = 6;
epsilon = M_.params( 10 );
M_.params( 11 ) = 0.1;
theta = M_.params( 11 );
M_.params( 12 ) = (1-M_.params(1))/(1-M_.params(1)+M_.params(1)*M_.params(10));
omega = M_.params( 12 );
M_.params( 13 ) = (1+M_.params(6))/(M_.params(1)+M_.params(6)+(1-M_.params(1))*M_.params(5));
psi = M_.params( 13 );
M_.params( 14 ) = (1-M_.params(11))*(1-M_.params(11)*M_.params(2))/M_.params(11)*M_.params(12);
lambda = M_.params( 14 );
M_.params( 15 ) = M_.params(14)*(M_.params(5)+(M_.params(1)+M_.params(6))/(1-M_.params(1)));
kapa = M_.params( 15 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(2, 2) = 0.0625;
M_.Sigma_e(1, 1) = (1)^2;
options_.irf = 12;
options_.noprint = 1;
options_.irf_shocks = char('epsilona');
var_list_ = char();
info = stoch_simul(var_list_);
options_.irf = 12;
options_.noprint = 1;
options_.irf_shocks = char('epsilonm');
var_list_ = char();
info = stoch_simul(var_list_);
matrixname = oo_.irfs;
save filename.m matrixname;
save('modelo2_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('modelo2_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('modelo2_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('modelo2_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('modelo2_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('modelo2_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('modelo2_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
