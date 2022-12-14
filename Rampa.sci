

// Definição para Sinal do tipo Rampa:
// "um sinal em rampa, x(t) = t, aumenta indefinidamente quando |t|→∞ e nem a energia nem a potência existirão para este sinal"


// definição de intervalo
t = -6:0.01:6;

// desenvolvimento do sinal rampa
// a estruturação de tal sinal contêm um degrau do tipo:
// para t >= 0 temos r3=(-t+3)
// e que, por definição da função degrau, temos u(t) = 0, para t < 0
r3 = (-t+3).*(t>=2).*(t<=3);
// para valores de t = 0 até 2 temos u(t) = 1
u = ones(t).*(t>=0).*(t<2);
sinal = u + r3;

// plotagem
plot(t,sinal);
xgrid(4, 1, 7);
xlabel("t");
ylabel("r(t)")
title("Rampa");
// melhorando a visualização
set(gca(), "data_bounds", matrix([-6, 6, -0.1, 4], 2, -1));
