function x = steepdesc()
    x1=[-2; -2];
    H=(2/3)*eye(2);
    H = [3 2;2 6];
    b=[2;-8];
    x=x1;
    r=1;
    sumx=x1;
    while abs(r) > .1
        r = b-H*x;
        alpha = (r' * r)/(r' * H * r);
        x = x + alpha * r;
        sumx = [sumx x]
        disp(x);
    end  
    hold all
    x = sumx(1,:)
    y = sumx(2,:)
    plot(x,y,'-x')
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