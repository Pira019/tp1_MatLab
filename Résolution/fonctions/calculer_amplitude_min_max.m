function calculer_amplitude_min_max(bits)
    % Calcul de l'amplitude minimale et maximale
    amplitude_min = -2^(bits-1);
    amplitude_max = 2^(bits-1) - 1;

    % Affichage des résultats
    fprintf('L''amplitude minimale des échantillons audio pour une résolution de %d bits est : %d\n', bits, amplitude_min);
    fprintf('L''amplitude maximale des échantillons audio pour une résolution de %d bits est : %d\n', bits, amplitude_max);
end
