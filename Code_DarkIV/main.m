clc
clear

%"Void Main() Here"
%loading ZAK0097
[ZAK002901D1DARKIV,ZAK002901D2DARKIV,ZAK002902D1DARKIV,ZAK002902D2DARKIV] = loadDataZak0097();
%Processing data Zak0097
[I1D1,I1D2,I2D1,I2D2] = plotDataProcess(ZAK002901D1DARKIV,ZAK002901D2DARKIV,ZAK002902D1DARKIV,ZAK002902D2DARKIV);

I1D1 = table2array(I1D1);
I1D2 = table2array(I1D2);
I2D1 = table2array(I2D1);
I2D2 = table2array(I2D2);

ZAKdata(:,:,1) = I1D1;
ZAKdata(:,:,2) = I1D2;
ZAKdata(:,:,3) = I2D1;
ZAKdata(:,:,4) = I2D1;

%output = plot(ZAKdata);

figure(1)

subplot(2,2,1);grid on;title 'ZAK0097 I1D1';
hold on
plot(I1D1(:,1),I1D1(:,2));
plot(I1D1(:,1),I1D1(:,3));
plot(I1D1(:,1),I1D1(:,4));
plot(I1D1(:,1),I1D1(:,5));
plot(I1D1(:,1),I1D1(:,6));
legend('40°C','60°C','80°C','100°C','120°C')
xlabel 'Voltage(V)';ylabel 'Current(A)';
set(gca,'YScale', 'log');
hold off

subplot(2,2,2);grid on;title 'ZAK0097 I1D2';
hold on
plot(I1D2(:,1),I1D2(:,2));
plot(I1D2(:,1),I1D2(:,3));
plot(I1D2(:,1),I1D2(:,4));
plot(I1D2(:,1),I1D2(:,5));
plot(I1D2(:,1),I1D2(:,6));
legend('40°C','60°C','80°C','100°C','120°C')
xlabel 'Voltage(V)';ylabel 'Current(A)';
set(gca,'YScale', 'log');
hold off

subplot(2,2,3);grid on;title 'ZAK0097 I2D1';
hold on
plot(I2D1(:,1),I2D1(:,2));
plot(I2D1(:,1),I2D1(:,3));
plot(I2D1(:,1),I2D1(:,4));
plot(I2D1(:,1),I2D1(:,5));
plot(I2D1(:,1),I2D1(:,6));
legend('40°C','60°C','80°C','100°C','120°C')
xlabel 'Voltage(V)';ylabel 'Current(A)';
set(gca,'YScale', 'log');
hold off

subplot(2,2,4);grid on;title 'ZAK0097 I2D2';
hold on
plot(I2D2(:,1),I2D2(:,2));
plot(I2D2(:,1),I2D2(:,3));
plot(I2D2(:,1),I2D2(:,4));
plot(I2D2(:,1),I2D2(:,5));
plot(I2D2(:,1),I2D2(:,6));
legend('40°C','60°C','80°C','100°C','120°C')
xlabel 'Voltage(V)';ylabel 'Current(A)';
set(gca,'YScale', 'log');
hold off








function [ZAK002901D1DARKIV,ZAK002901D2DARKIV,ZAK002902D1DARKIV,ZAK002902D2DARKIV] = loadDataZak0097()
    disp('Function Called: loadDataZak0097() //loading data for Zak0097')
    ZAK002901D1DARKIV = readtable("..\220603_ZAK0029_DarkIV\ZAK0029_01_D1_DARK_IV.txt");
    ZAK002901D2DARKIV = readtable("..\220603_ZAK0029_DarkIV\ZAK0029_01_D2_DARK_IV.txt");
    ZAK002902D1DARKIV = readtable("..\220603_ZAK0029_DarkIV\ZAK0029_02_D1_DARK_IV.txt");
    ZAK002902D2DARKIV = readtable("..\220603_ZAK0029_DarkIV\ZAK0029_02_D2_DARK_IV.txt");
end

%**************ForPlotDataConversion*****START*********
function [I1D1,I1D2,I2D1,I2D2] = plotDataProcess(ZAK002901D1DARKIV,ZAK002901D2DARKIV,ZAK002902D1DARKIV,ZAK002902D2DARKIV)
    disp('Function Called: plotDataProcess() //Processing data for Zak0097')
    [TempI1D1,I1D1_40,I1D1_60,I1D1_80,I1D1_100,I1D1_120] = I1D1_dataProcess(ZAK002901D1DARKIV);
    I1D1 = [TempI1D1,I1D1_40,I1D1_60,I1D1_80,I1D1_100,I1D1_120];

    [TempI1D2,I1D2_40,I1D2_60,I1D2_80,I1D2_100,I1D2_120] = I1D2_dataProcess(ZAK002901D2DARKIV);
    I1D2 = [TempI1D2,I1D2_40,I1D2_60,I1D2_80,I1D2_100,I1D2_120];

    [TempI2D1,I2D1_40,I2D1_60,I2D1_80,I2D1_100,I2D1_120] = I2D1_dataProcess(ZAK002902D1DARKIV);
    I2D1 = [TempI2D1,I2D1_40,I2D1_60,I2D1_80,I2D1_100,I2D1_120];

    [TempI2D2,I2D2_40,I2D2_60,I2D2_80,I2D2_100,I2D2_120] = I2D2_dataProcess(ZAK002902D2DARKIV);
    I2D2 = [TempI2D2,I2D2_40,I2D2_60,I2D2_80,I2D2_100,I2D2_120];
end

function [TempI1D1,I1D1_40,I1D1_60,I1D1_80,I1D1_100,I1D1_120] = I1D1_dataProcess(ZAK002901D1DARKIV)
    disp('SubFunction Called: I1D1_dataProcess() Sub to: plotDataProcess()')
    TempI1D1 = ZAK002901D1DARKIV(:,"Var1");
    I1D1_40 = ZAK002901D1DARKIV(:,"Var2");
    I1D1_60 = ZAK002901D1DARKIV(:,"Var3");
    I1D1_80 = ZAK002901D1DARKIV(:,"Var4");
    I1D1_100 = ZAK002901D1DARKIV(:,"Var5");
    I1D1_120 = ZAK002901D1DARKIV(:,"Var6");
    end

function [TempI1D2,I1D2_40,I1D2_60,I1D2_80,I1D2_100,I1D2_120] = I1D2_dataProcess(ZAK002901D2DARKIV)
    disp('SubFunction Called: I1D2_dataProcess() Sub to: plotDataProcess()')
    TempI1D2 = ZAK002901D2DARKIV(:,"Var1");
    I1D2_40 = ZAK002901D2DARKIV(:,"Var2");
    I1D2_60 = ZAK002901D2DARKIV(:,"Var3");
    I1D2_80 = ZAK002901D2DARKIV(:,"Var4");
    I1D2_100 = ZAK002901D2DARKIV(:,"Var5");
    I1D2_120 = ZAK002901D2DARKIV(:,"Var6");
    end

function [TempI2D1,I2D1_40,I2D1_60,I2D1_80,I2D1_100,I2D1_120] = I2D1_dataProcess(ZAK002902D1DARKIV)
    disp('SubFunction Called: I2D1_dataProcess() Sub to: plotDataProcess()')
    TempI2D1 = ZAK002902D1DARKIV(:,"Var1");
    I2D1_40 = ZAK002902D1DARKIV(:,"Var2");
    I2D1_60 = ZAK002902D1DARKIV(:,"Var3");
    I2D1_80 = ZAK002902D1DARKIV(:,"Var4");
    I2D1_100 = ZAK002902D1DARKIV(:,"Var5");
    I2D1_120 = ZAK002902D1DARKIV(:,"Var6");
    end

function [TempI2D2,I2D2_40,I2D2_60,I2D2_80,I2D2_100,I2D2_120] = I2D2_dataProcess(ZAK002902D2DARKIV)
    disp('SubFunction Called: I2D2_dataProcess() Sub to: plotDataProcess()')
    TempI2D2 = ZAK002902D2DARKIV(:,"Var1");
    I2D2_40 = ZAK002902D2DARKIV(:,"Var2");
    I2D2_60 = ZAK002902D2DARKIV(:,"Var3");
    I2D2_80 = ZAK002902D2DARKIV(:,"Var4");
    I2D2_100 = ZAK002902D2DARKIV(:,"Var5");
    I2D2_120 = ZAK002902D2DARKIV(:,"Var6");
end


%**************ForPlotDataConversion*****END*********


% function output = plot(ZAKdata)
%     output = 1;
%     disp('Function Called: I2D2_dataProcess()')
%     figure(1)
%     hold on
%     for i = 1:4
%         subplot(2,2,i)
%         plotData(:,:) = ZAKdata(:,:,i);
%         for i = 2 : length(plotData)
%             %try
%                 temp = plotData(:,1);
%                 y = plotData(:,i);
%                 plot(y',temp')
%             %end
% 
%         end
%     end
% end

