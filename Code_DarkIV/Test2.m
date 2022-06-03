function output = plot(data)
    figure(1)
    subplot(2,2,4)
    
    plot(Temp,I2D2_40)
    hold on
    plot(Temp,I2D2_60)
    plot(Temp,I2D2_80)
    plot(Temp,I2D2_100)
    plot(Temp,I2D2_120)
    hold off
    
    set(gca,'YScale', 'log');