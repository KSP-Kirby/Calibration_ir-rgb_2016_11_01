% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 829.783857156954580 ; 826.593412586776940 ];

%-- Principal point:
cc = [ 630.518167054837480 ; 524.968846611618910 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.362869739324365 ; 0.206137267332773 ; 0.003480304507918 ; -0.002769219715730 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 5.213663548097862 ; 5.673909171602650 ];

%-- Principal point uncertainty:
cc_error = [ 10.068035402651178 ; 12.049158983721519 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.027645019902884 ; 0.079839116858636 ; 0.002778533465278 ; 0.002005292118399 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 1024;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 22;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -1.645487e+00 ; -1.673594e+00 ; 6.845106e-01 ];
Tc_1  = [ -2.008837e+01 ; -1.764788e+02 ; 5.436011e+02 ];
omc_error_1 = [ 1.251150e-02 ; 8.649284e-03 ; 1.872115e-02 ];
Tc_error_1  = [ 6.803255e+00 ; 7.904060e+00 ; 4.089983e+00 ];

%-- Image #2:
omc_2 = [ -1.780078e+00 ; -1.790851e+00 ; 5.616792e-01 ];
Tc_2  = [ -2.345016e+01 ; -1.744322e+02 ; 5.222361e+02 ];
omc_error_2 = [ 1.238802e-02 ; 8.466542e-03 ; 2.046734e-02 ];
Tc_error_2  = [ 6.544095e+00 ; 7.590191e+00 ; 3.982141e+00 ];

%-- Image #3:
omc_3 = [ -1.957566e+00 ; -1.885220e+00 ; 4.405278e-01 ];
Tc_3  = [ -3.244506e+01 ; -1.708076e+02 ; 5.097819e+02 ];
omc_error_3 = [ 1.299641e-02 ; 9.004043e-03 ; 2.309534e-02 ];
Tc_error_3  = [ 6.386604e+00 ; 7.405297e+00 ; 3.928814e+00 ];

%-- Image #4:
omc_4 = [ -2.089573e+00 ; -2.213525e+00 ; 2.924139e-01 ];
Tc_4  = [ -3.665822e+00 ; -1.870032e+02 ; 4.991847e+02 ];
omc_error_4 = [ 1.448921e-02 ; 1.283306e-02 ; 2.814183e-02 ];
Tc_error_4  = [ 6.289033e+00 ; 7.252652e+00 ; 4.080876e+00 ];

%-- Image #5:
omc_5 = [ 2.076437e+00 ; 2.079386e+00 ; 2.934289e-01 ];
Tc_5  = [ -7.727474e+00 ; -1.840392e+02 ; 4.429093e+02 ];
omc_error_5 = [ 1.304166e-02 ; 1.128121e-02 ; 2.485370e-02 ];
Tc_error_5  = [ 5.612694e+00 ; 6.463457e+00 ; 4.298604e+00 ];

%-- Image #6:
omc_6 = [ 1.899226e+00 ; 1.882041e+00 ; 5.327637e-01 ];
Tc_6  = [ -3.473687e+00 ; -1.835932e+02 ; 4.074360e+02 ];
omc_error_6 = [ 1.254368e-02 ; 1.001832e-02 ; 2.043861e-02 ];
Tc_error_6  = [ 5.200015e+00 ; 5.943522e+00 ; 4.045187e+00 ];

%-- Image #7:
omc_7 = [ 2.060181e+00 ; 1.670849e+00 ; 6.093907e-01 ];
Tc_7  = [ 9.263649e+00 ; -1.760442e+02 ; 3.927390e+02 ];
omc_error_7 = [ 1.364780e-02 ; 9.395220e-03 ; 1.999734e-02 ];
Tc_error_7  = [ 5.042579e+00 ; 5.728789e+00 ; 3.943382e+00 ];

%-- Image #8:
omc_8 = [ 1.954938e+00 ; 1.507451e+00 ; 7.996032e-01 ];
Tc_8  = [ 2.788903e+01 ; -1.694305e+02 ; 3.602834e+02 ];
omc_error_8 = [ 1.376991e-02 ; 9.924707e-03 ; 1.791843e-02 ];
Tc_error_8  = [ 4.664118e+00 ; 5.278994e+00 ; 3.726334e+00 ];

%-- Image #9:
omc_9 = [ 1.790094e+00 ; 1.280024e+00 ; -3.733852e-02 ];
Tc_9  = [ -3.001455e+01 ; -1.303243e+02 ; 4.897556e+02 ];
omc_error_9 = [ 1.375465e-02 ; 9.669619e-03 ; 1.515490e-02 ];
Tc_error_9  = [ 6.060604e+00 ; 7.081294e+00 ; 3.600117e+00 ];

%-- Image #10:
omc_10 = [ 1.839793e+00 ; 1.428575e+00 ; -3.236002e-01 ];
Tc_10  = [ -2.431554e+01 ; -1.210747e+02 ; 5.289917e+02 ];
omc_error_10 = [ 1.337852e-02 ; 1.000483e-02 ; 1.616405e-02 ];
Tc_error_10  = [ 6.520276e+00 ; 7.628051e+00 ; 3.636237e+00 ];

%-- Image #11:
omc_11 = [ 1.917004e+00 ; 1.521602e+00 ; -5.700493e-01 ];
Tc_11  = [ -2.197205e+01 ; -1.089402e+02 ; 5.486094e+02 ];
omc_error_11 = [ 1.288362e-02 ; 1.057066e-02 ; 1.702118e-02 ];
Tc_error_11  = [ 6.743598e+00 ; 7.890599e+00 ; 3.575183e+00 ];

%-- Image #12:
omc_12 = [ 1.827656e+00 ; 1.642116e+00 ; -1.111575e+00 ];
Tc_12  = [ 2.230914e+01 ; -9.016531e+01 ; 5.543909e+02 ];
omc_error_12 = [ 1.197263e-02 ; 1.251438e-02 ; 1.677453e-02 ];
Tc_error_12  = [ 6.804474e+00 ; 7.971380e+00 ; 3.265417e+00 ];

%-- Image #13:
omc_13 = [ 1.505217e+00 ; 1.990896e+00 ; -1.657758e+00 ];
Tc_13  = [ 8.157628e+01 ; -7.403147e+01 ; 6.007952e+02 ];
omc_error_13 = [ 1.038007e-02 ; 1.631722e-02 ; 1.805572e-02 ];
Tc_error_13  = [ 7.340624e+00 ; 8.777736e+00 ; 3.547805e+00 ];

%-- Image #14:
omc_14 = [ 1.512514e+00 ; 2.144639e+00 ; -1.545068e+00 ];
Tc_14  = [ 1.759653e+01 ; -1.270953e+02 ; 6.242364e+02 ];
omc_error_14 = [ 8.942529e-03 ; 1.682776e-02 ; 1.962996e-02 ];
Tc_error_14  = [ 7.675458e+00 ; 9.083380e+00 ; 3.806461e+00 ];

%-- Image #15:
omc_15 = [ -1.839768e+00 ; -1.148798e+00 ; 3.300232e-02 ];
Tc_15  = [ -1.278775e+02 ; -1.120803e+02 ; 4.746361e+02 ];
omc_error_15 = [ 1.364654e-02 ; 8.093500e-03 ; 1.642999e-02 ];
Tc_error_15  = [ 5.847677e+00 ; 6.943991e+00 ; 3.994586e+00 ];

%-- Image #16:
omc_16 = [ -1.872487e+00 ; -1.275181e+00 ; -1.207789e-01 ];
Tc_16  = [ -1.242146e+02 ; -1.207334e+02 ; 4.528996e+02 ];
omc_error_16 = [ 1.343592e-02 ; 8.337233e-03 ; 1.718132e-02 ];
Tc_error_16  = [ 5.598496e+00 ; 6.637007e+00 ; 4.040824e+00 ];

%-- Image #17:
omc_17 = [ -1.863093e+00 ; -1.401638e+00 ; -3.924718e-01 ];
Tc_17  = [ -1.095665e+02 ; -1.120175e+02 ; 4.073416e+02 ];
omc_error_17 = [ 1.283083e-02 ; 9.592617e-03 ; 1.721340e-02 ];
Tc_error_17  = [ 5.048354e+00 ; 5.979760e+00 ; 3.733373e+00 ];

%-- Image #18:
omc_18 = [ -1.824436e+00 ; -1.561628e+00 ; -6.639513e-01 ];
Tc_18  = [ -6.967176e+01 ; -1.125600e+02 ; 3.576833e+02 ];
omc_error_18 = [ 1.122002e-02 ; 1.129668e-02 ; 1.758908e-02 ];
Tc_error_18  = [ 4.477425e+00 ; 5.252759e+00 ; 3.246604e+00 ];

%-- Image #19:
omc_19 = [ -1.777905e+00 ; -1.760398e+00 ; -1.024820e+00 ];
Tc_19  = [ -3.891833e+01 ; -1.223461e+02 ; 3.373776e+02 ];
omc_error_19 = [ 9.621783e-03 ; 1.359176e-02 ; 1.829481e-02 ];
Tc_error_19  = [ 4.270513e+00 ; 4.981508e+00 ; 3.280340e+00 ];

%-- Image #20:
omc_20 = [ -1.889702e+00 ; -1.881261e+00 ; -1.415280e+00 ];
Tc_20  = [ -7.932560e+00 ; -1.317028e+02 ; 3.265037e+02 ];
omc_error_20 = [ 7.973922e-03 ; 1.650712e-02 ; 1.917797e-02 ];
Tc_error_20  = [ 4.162235e+00 ; 4.818776e+00 ; 3.412843e+00 ];

%-- Image #21:
omc_21 = [ 1.825128e+00 ; 2.125949e+00 ; 1.338398e+00 ];
Tc_21  = [ 3.765885e+01 ; -1.845147e+02 ; 3.963607e+02 ];
omc_error_21 = [ 1.298869e-02 ; 1.101450e-02 ; 2.213808e-02 ];
Tc_error_21  = [ 5.091809e+00 ; 5.842448e+00 ; 4.342852e+00 ];

%-- Image #22:
omc_22 = [ 1.499550e+00 ; 2.050692e+00 ; 1.568595e+00 ];
Tc_22  = [ 8.176773e+01 ; -1.732296e+02 ; 4.079821e+02 ];
omc_error_22 = [ 1.336219e-02 ; 1.268971e-02 ; 1.985300e-02 ];
Tc_error_22  = [ 5.191842e+00 ; 6.044135e+00 ; 4.381053e+00 ];

