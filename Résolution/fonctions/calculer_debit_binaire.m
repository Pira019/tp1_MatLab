% cette fonction prend en paramtre sampleRate(Fe) et (bitsPerSample) le
% resolution par bit 8 par defaut
function debitBinaire = calculer_debit_binaire(sampleRate, bitsPerSample)
 % Si bitsPerSample n'est pas spécifié, le définir par défaut à 8 bit
    if nargin < 2
        bitsPerSample = 8;
    end
    % Calcul du débit binaire en bits/sec
    debitBinaire = sampleRate * bitsPerSample;
end