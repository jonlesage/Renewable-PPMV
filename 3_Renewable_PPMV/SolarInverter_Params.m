%% Plant Ratings
Vnom = 142e3;           % Nominal Voltage
Pnom = 112e3;           % Nominal Power
Fnom = 60;              % Nominal Frequency

i = 2;                  % Default Replay is Experiment #2 (Sheet 2)

%% REPC_A Parameters
repc_Tfltr = 0.02;       % Voltage/Reactive Power Time Constants [s]
repc_Xc = 0;             % Line drop compensation reactance [pu]
repc_Rc = 0;             % Line drop compensation resistance [pu]

repc_Kc = 0.05;           % Reactive droop [pu]
repc_db1 = 0;            % Reactive power deadline [pu]
repc_emax = 999;         % Maximum Volt/VAR error [pu]
repc_emin = -999;        % Minimum Volt/VAR error [pu]

repc_Kp = 0.3;          % Volt/VAR Propotional Gain [pu/pu]
repc_Ki = 2.5;           % Volt/VAR Integral Gain [pu/pu-s]
repc_Qmax = inf;         % Max Plant Reactive Power [pu]
repc_Qmin = -inf;        % Min Plant Reactive Power [pu]

repc_Vfrz = 0.7;           % Voltage for Freezing Volt/VAR Integrator [pu]
repc_Tft = 0.5;            % Q Lead Time Constant [s]
repc_Tfv = 0.8;         % Q Lag Time Constant [s]

repc_fdbd1 = 0.01*0;     % Overfrequency deadband for govenor [pu]
repc_fdbd2 = -0.01*0;    % Underfrequency deadband for govenor [pu]

repc_Ddn = 20;           % Down regulation droop [pu]
repc_Dup = 0;            % Up regulation droop [pu]

repc_Tp = 0.25;          % Active Power Filter Time Constant [s]

repc_femax = 999;        % Maximum Power Error [pu]
repc_femin = -999;       % Minimum Power Error [pu]

repc_Kpg  =0.2;
repc_Kig = 1.2;
repc_Tlag = 0.2;

repc_Pmax = 1;           % Maximum Plant Active Power [pu]
repc_Pmin = 0;           % Minimum Plant Active Power [pu]

% Final Parameters - Used to Generate Data
% repc_Kp = 0.6;          % Volt/VAR Propotional Gain [pu/pu]
% repc_Ki = 1.8;           % Volt/VAR Integral Gain [pu/pu-s]
% repc_Kpg  =0.1;
% repc_Kig = 0.5;

% Estimated Parameters - From SDO
% repc_Kp = 0.080566
% repc_Ki = 1.7217
% repc_Kpg = 0.060332
% repc_Kig = 0.53447

%% REEC_B Parameters

reec_Trv = 0.01;     % Terminal Bus Filter [s]
reec_Vdip = 0.9;       % Low Voltage Trigger [pu]
reec_Vup = 1.15;      % High Voltage Trigger [pu]

reec_dbd1 = -0.1;       % Overvoltage deadband [pu]
reec_dbd2 = 0.1;       % Undervoltage deadband [pu]

reec_Kqv = 0;        % Reactive current injection gain [pu]
reec_Iqhl = 1.0;     % Maximum current injection [pu]
reec_Iqll = -0.4;    % Minimum current injection [pu]

reec_Tp = 0.02;      % Active Power Time Constant [s]
reec_Qmax = 0.435;     % Maximum reactive power [pu]
reec_Qmin = -0.435;    % Minimum reactive power [pu]

reec_Kqp = 0;        % Local Q regulator [pu]
reec_Kqi = 0.0;      % Local Q integrator gain [pu]
reec_Vmax = 1.10;    % Maximum inverter voltage [pu]
reec_Vmin = 0.9;    % Minium inverter terminal voltage [pu]

reec_Kvp = 0.1;        % Voltage Regulator Gain [pu]
reec_Kvi = 0.0;      % Voltage Integrator Gain [pu]

reec_Tiq = 0.02;     % Reactive Power Lag [s]
reec_Tpord = 0.1;   % Inverter Lag Time Constant [s]

reec_Pmax = 1.0;       % Maximum active power [pu]
reec_Pmin = 0;       % Minimum active power [pu]
reec_dPmax = 0.1;      % Power Up-ramp Limit [pu/s]
reec_dPmin = -0.1;     % Power Down-ramp Limit [pu/s]
reec_Imax = 1;       % Maximum apparent current [pu]

%% REGC_A Parameters

regc_Tfltr = 0.02;   % Terminal Voltage Filter [s]
regc_Lvpl1 = 1.0;    % LVPL Gain Breakpoint [pu]
regc_Zerox = 0.5;    % LVPL Zero Crossing [pu]
regc_Brkpt = 0.9;    % LVPL Breakpoint [pu]

regc_Lvplsw = 0;     % Low Voltage Power Logic [Enable (1) or Disable (0)]

regc_rrpwr = 10;     % Active Current up-ramp rater limit [pu/s]
regc_Tg = 0.1;      % Inverter Current Lag Time [s]

regc_Volim = 1.1;    % Voltage Limit Clap Logic [pu]
regc_Iolim = -1.2;   % Current Limit for Clap Logic [pu]

regc_Khv = 0.0;      % High Voltage Clap Logic Factor

regc_Ivpnt0 = 0.4;   % Low voltage current breakpoint [pu]
regc_Ivpnt1 = 0.8;   % Low voltage current breakpoint [pu]

regc_Iqrmax = 999.9; % Maximum rate of change [pu/s]
regc_Iqrmin = -999.9;% Minimum rate of change [pu/s]