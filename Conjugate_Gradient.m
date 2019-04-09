function x = conjgrad()
    x1=[5; 5]
    H=(2/3)*eye(2);
    d1 = -fp(x1);
    g1 = -fp(x1);
    while abs(d1) > .1
        alpha1 = (g1' * d1) / (d1' * H * d1);
        x2 = x1 + alpha1 * d1;
        disp(x2);
        g2 = fp(x2);
        beta1 = (g2' * H * d1) / (d1' * H * d1);
        d2 = -g2 + beta1*d1;
        d1 = d2;
        g1 = g2;
    end
    
end

function val = f(x)
    val = (1/3)*x(1)^2 + (1/3)*x(2)^2 + (1/5)*x(1)*x(2)
end

function val = rosen(x)
    val = (a-x(1))^2 + b*(y-x^2)^2
end

function x = fp(x)
    val = (2/3)*x(1) + (2/3)*x(2) + (1/5)*(x(1) + x(2))
end