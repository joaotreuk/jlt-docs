uses Enter;

teclaEnter: TMREnter;

// Componente que adiciona coloração e função ao apertar a tecla enter, esta que replica o efeito de apertar a tecla tab
teclaEnter := TMREnter.Create(Self);  
teclaEnter.FocusEnabled := true; // Abilita o foco com coloração
teclaEnter.FocusColor := clInfoBk; // Passa a cor em que o input ficará ao receber o foco, clInfoBk = amarelo claro