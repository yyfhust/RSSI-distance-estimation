function [fitresult, gof] = createFit(y, x)
%CREATEFIT(Y,X)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : y
%      Y Output: x
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.



%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( y, x );

% Set up fittype and options.
ft = fittype( '-10*n*log10(x)+A', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.317099480060861 0.950222048838355];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'x vs. y', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel y
ylabel x
grid on


