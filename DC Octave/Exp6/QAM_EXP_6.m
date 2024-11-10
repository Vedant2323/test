clc;
clear all;
close all;
pkg load communications
N=1000;
mlevel=4;
k=log2(mlevel);

% signal generation in bit stream
x=randi([0,1],N,1);

% convert bit stream into symbol stream
xsym=bi2de(reshape(x,k,length(x)/k).','left-msb');

% modulation
xmod=qammod(xsym,mlevel);

%loop through diffrent SNR value
snr_values=0:50;
ber_values=zeros(size(snr_values));

for idx=1:length(snr_values)
  SNR=snr_values(idx);
  % adding AWGN
  Tx_awgn=awgn(xmod,SNR,'measured');
  % recived signal
  Rx_x=Tx_awgn;
  % demodulation
  Rx_x_demod=qamdemod(Rx_x,mlevel);

  z=de2bi(Rx_x_demod,'left-msb');
  Rx_x_BitStream=reshape(z.',prod(size(z)),1);

  % calculation of BER
  [number_of_errors,bit_error_rate]=biterr(x,Rx_x_BitStream);
  ber_values(idx)=bit_error_rate;

end

% Plot BER vs. SNR
 figure;
 semilogy(snr_values,ber_values,'bo-');
 grid on;
 xlabel('SNR (dB)');
 ylabel('Bit Error Rate (BER)');
 title('BER vs SNR for QAM');
