clc
clear

%"Void Main() Here"

%loading Zak0097
[ZAK002901D1DARKIV,ZAK002901D2DARKIV,ZAK002902D1DARKIV,ZAK002902D2DARKIV] = loadDataZak0097();
%Processing data Zak0097
[I1D1,I1D2,I2D1,I2D2] = plotDataProcess(ZAK002901D1DARKIV,ZAK002901D2DARKIV,ZAK002902D1DARKIV,ZAK002902D2DARKIV);

I1D1 = table2array(I1D1);
I1D2 = table2array(I1D2);
I2D1 = table2array(I2D1);
I2D2 = table2array(I2D2);

ZAKdata = [I1D1,I1D2,I2D1,I2D2];

output = plot(ZAKdata)







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

function output = plot(ZAKdata)
    figure(1)
    hold on
    subplot(2,2,4)
    for plotData = ZAKdata
        plot(plotData(:,1),plotData(:,2))
    end
end

function output = plotTheIV_DarkCurrent()
    
end