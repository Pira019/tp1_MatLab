%cette fonction affiche des informations et représente graphiquement des données pour un fichier audio donné
function afficher_info_audio(info_audio, Fs)
    % Convertir info_audio en double
    info_audio = double(info_audio);
    
    % Affichage de la fréquence d'échantillonnage
    disp(['La fréquence d''échantillonnage (Fe) est : ', num2str(Fs), ' Hz']);

    % Calcul du spectre de fréquence
    n = round(length(double(info_audio)));
    Fs = round(Fs);  

    % Affichage du signal temporel
    subplot(2, 1, 1);
    plot((0:n-1) / Fs, info_audio);
    title('Signal Audio');
    xlabel('Temps (s)');
    ylabel('Amplitude'); 
end
