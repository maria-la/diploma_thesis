function [v] = snr(s1,z1)

%normalize the actual and estimated signals
s10 = s1 - mean(s1);
z10 = z1 - mean(z1);

%Compute the "signal" component of the SNR
t = sum(s10.*z10) .* z10 ./ (sum(z10.^2)+eps);

%Compute the "noise" component of the SNR
n = s1 - t;

%Compute the SI-SNR (in dB)
v = 20*log((sqrt(sum(t.^2))+eps)./sqrt((sum(n.^2))+eps))/log(10);
%fprintf("End-to-end network - Speaker 1 SISNR: %f dB\n",v);

end