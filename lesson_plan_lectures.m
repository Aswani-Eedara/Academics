display('Program for creating a column of dates according to your time table inputs. Date:15/NOV/2019 Verson:1')% for ECA
display('Author: Aswani Kumar Eedara Dept. Electrical & Electronics Engineering Inst.: SITE')
display('Enter your number periods from sunday to saturday')
% periods(1)=0
% 
%      periods(2)=input('Enter total number periods on monday for the course=')
%      periods(3)=input('Enter total number periods on  tuesday for the course=')
%      periods(4)=input('Enter total number periods on wednesday for the course=')
%      periods(5)=input('Enter total number periods on thursday for the course=')
%      periods(6)=input('Enter total number periods on friday for the course=')
%      periods(7)=input('Enter total number periods on saturday for the course=')
%      
     
%periods=[0 1 1 1 0 1 1]'

periods=[0 0 2 1 1 1 0 ]' % for FACTS IV Sect.-A lectures
%periods=[0 1 0 0 0 1 0]' % for FACTS IV Sect.-A Tutorials

%input(
% enter starting of semester 
            % YEAR, MM,DD
t1 = datetime(2019,11,18,'Format','dd/MM/yyyy ');
% enter clsong date of instructions of semester 
            % YEAR, MM,DD
t2 = datetime(2020,03,21,'Format','dd/MM/yyyy ');

% t1 = datetime(2018,11,19,'Format','dd-MMM-yyyy eee');
% t2 = datetime(2019,03,23,'Format','dd-MMM-yyyy eee');
t = t1:t2;
t'
% enter your number periods from sunday to saturday
%periods=[0 0 2 0 2 1 1]
day=[ 1 2 3 4 5 6 7]
i=1,j=1
%tnp=5;%total_numberof_periods per week
tnp=sum(periods);%total_numberof_periods per week
in=zeros(1,tnp)
for i=1:7
if periods(i)==1
    in(j)=day(i)
    j=j+1
elseif periods(i)==2
    in(j)=day(i)
    j=j+1
     in(j)=day(i)
     j=j+1
end
end
nowk=19% 18 % number of weeks 
d=NaT(tnp, nowk,'Format','dd/MM/yyyy ');
for k=1:tnp
    d(k,:)=dateshift(t1,'dayofweek',in(k),1:nowk);
end
% dates=d(:,'Format','dd-MMM-yyyy eee')
%  workspace;
%  formatOut = 'mm/dd/yy';
%  datess=datestr(dates,formatOut)
%  xlswrite('SpecialElectricalMachines.xls',datess);
 ddd=[d(:,1);d(:,2);d(:,3);d(:,4);d(:,5);d(:,6);d(:,7);d(:,8);d(:,9);d(:,10);d(:,11);d(:,12);d(:,13);d(:,14);d(:,15);d(:,16);d(:,17);d(:,18);d(:,19)]
