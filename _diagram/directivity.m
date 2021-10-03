function D = directivity(n,b3n1)
double precision; format long; addpath(genpath('_functions'))

    %Campo distante
    func_Ff = func_farField(n,b3n1);
    
    %Pot�ncia de radia��o
    Pr_norm = func_radiatedPower(n,b3n1);
    
    %Diagrama de diretividade
    D = func_Ff.*conj(func_Ff)/Pr_norm;

end