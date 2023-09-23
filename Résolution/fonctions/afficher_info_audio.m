%cette fonction affiche des informations et représente graphiquement des données pour un fichier audio donné
function afficher_info_audio(info_audio,Fs)    
  
    % Affichage de la fréquence d'échantillonnage 
    disp(['La fréquence d''échantillonnage (Fe) est : ', num2str(Fs), ' Hz']);

    % Calcul du spectre de fréquence
    n =length(info_audio); 
    Fs=round(Fs);
    
    frequencies = (0:n-1) * (Fs / n);
    spectrum = abs(fft(info_audio));
    half_spectrum = spectrum(1:n/2);

    % Affichage du spectre de fréquence
    subplot(2, 1, 2);
    plot(frequencies(1:n/2), half_spectrum);
    title('Spectre de Fréquence');
    xlabel('Fréquence (Hz)');
    ylabel('Amplitude');
end
