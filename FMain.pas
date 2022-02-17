unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.Samples.Spin, Math, VCLTee.Series, VCLTee.BubbleCh, Vcl.ExtDlgs,
  Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    mainPanel: TPanel;
    btnHome: TButton;
    btnTugas: TButton;
    btnExit: TButton;
    cmd1Panel: TPanel;
    infoPanel: TPanel;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    rbtnAND: TRadioButton;
    rbtnOR: TRadioButton;
    rbtnXOR: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    btnInit1: TButton;
    btnAnn1: TButton;
    btnRecall1: TButton;
    btnClear1: TButton;
    interface1Panel: TPanel;
    interface2Panel: TPanel;
    Chart2: TChart;
    Chart3: TChart;
    Chart1: TChart;
    Series1: TPointSeries;
    Chart4: TChart;
    Series2: TLineSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Chart5: TChart;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Series15: TBarSeries;
    Chart6: TChart;
    Chart7: TChart;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    OpenTextFileDialog1: TOpenTextFileDialog;
    btnUTS: TButton;
    GroupBox4: TGroupBox;
    rbtnTopoA: TRadioButton;
    rbtnTopoB: TRadioButton;
    cmd2Panel: TPanel;
    btnInit2: TButton;
    btnAnnTopoA: TButton;
    btnRecallTopoA: TButton;
    btnClear2: TButton;
    Chart8: TChart;
    Chart9: TChart;
    Chart10: TChart;
    Series16: TLineSeries;
    Series17: TLineSeries;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series20: TBarSeries;
    Series21: TLineSeries;
    Series22: TLineSeries;
    Series23: TLineSeries;
    Series24: TLineSeries;
    Series25: TLineSeries;
    Series26: TLineSeries;
    Series27: TLineSeries;
    Series28: TLineSeries;
    Series29: TBarSeries;
    GroupBox5: TGroupBox;
    Memo2: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    btnAnnTopoB: TButton;
    btnRecallTopoB: TButton;
    Series30: TBarSeries;
    Series31: TBarSeries;
    Series32: TBarSeries;
    Series33: TBarSeries;
    Series34: TBarSeries;
    rbtnGP: TRadioButton;
    Chart16: TChart;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Chart11: TChart;
    Series35: TLineSeries;
    Series36: TLineSeries;
    Series37: TLineSeries;
    Series38: TLineSeries;
    Series39: TLineSeries;
    Series40: TLineSeries;
    procedure btnHomeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnTugasClick(Sender: TObject);
    procedure display1;
    procedure display2;
    procedure displayhome;
    procedure viewinit(batas :integer);
    procedure viewannvalue;
    procedure viewrecallvalue(batas :integer);
    procedure inputvalue;
    procedure init;
    procedure process1(batas :integer; in1,in2 :extended);
    //procedure process2(batas :integer; in1,in2 :extended);
    procedure topofilecreated;
    procedure weight_in_filecreated;
    procedure weight_hid_filecreated;
    procedure weight_out_filecreated;
    procedure openfile_w_in;
    procedure openfile_w_hid;
    procedure openfile_w_out;
    procedure open_trainingfile;
    procedure recall_gaitfile;
    //procedure Fuzzy;
    procedure btnAnn1Click(Sender: TObject);
    procedure btnInit1Click(Sender: TObject);
    procedure btnInit2Click(Sender: TObject);
    procedure btnRecall1Click(Sender: TObject);
    procedure btnClear1Click(Sender: TObject);
    procedure btnClear2Click(Sender: TObject);
    procedure btnUTSClick(Sender: TObject);
    procedure btnAnnTopoAClick(Sender: TObject);
    procedure rbtnTopoAClick(Sender: TObject);
    procedure rbtnTopoBClick(Sender: TObject);
    procedure btnRecallTopoAClick(Sender: TObject);
    procedure rbtnANDClick(Sender: TObject);
    procedure rbtnORClick(Sender: TObject);
    procedure rbtnXORClick(Sender: TObject);
    procedure btnAnnTopoBClick(Sender: TObject);
    procedure btnRecallTopoBClick(Sender: TObject);
    procedure btnClear3Click(Sender: TObject);
    procedure rbtnGPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  x1, x2 :array [1..100] of extended;
  y, outfix :array [1..100,1..6] of extended;
  x :array [1..2] of extended;
  th :array [1..3] of extended;
  th1, th2, th3, error :array [1..9999999] of extended;
  yL, errorL, derrorL  :array [1..3,1..8] of extended;
  weight :array [1..3,1..8,1..8] of extended;
  temp, e: extended;
  rendah, sedang, tinggi :extended;
  datlim2, input, output, hidden1, hidden2, m: integer;
  myfile :textfile;
  MainForm: TMainForm;

const
  datlim = 4;
  alpha = 0.115;
  error_lim = 1e-5;

implementation

{$R *.dfm}
procedure TMainForm.inputvalue;
begin
  x1[1] := 0.0;
  x1[2] := 1.0;
  x1[3] := 0.0;
  x1[4] := 1.0;

  x2[1] := 0.0;
  x2[2] := 0.0;
  x2[3] := 1.0;
  x2[4] := 1.0;

  input   := strtoint(SpinEdit1.Text);
  output  := strtoint(SpinEdit2.Text);
  hidden1 := strtoint(SpinEdit3.Text);
  hidden2 := strtoint(SpinEdit4.Text);
end;

procedure TMainForm.init;
var i,j :integer;
begin
  input   := strtoint(SpinEdit1.Text);
  output  := strtoint(SpinEdit2.Text);
  hidden1 := strtoint(SpinEdit3.Text);
  hidden2 := strtoint(SpinEdit4.Text);
  
  for i:=1 to input do
  begin
    for j:=1 to hidden1 do
    begin
      weight[1,j,i] := randg(0,0.5);
    end;
  end;

  for i:=1 to hidden1 do
  begin
    for j:=1 to hidden2 do
    begin
      weight[2,j,i] := randg(0,0.5);
    end;
  end;

  for i := 1 to hidden2 do
  begin
    for j := 1 to output do
    begin
      weight[3,j,i] := randg(0,0.5);
    end;
  end;

  th[1] := 0.1;
  th[2] := 0.1;
  th[3] := 0.1;
end;

procedure TMainForm.viewinit(batas :integer);
var i,j :integer;
begin
  for i := 1 to batas do
  begin
    memo1.Lines.Add('x1[' + inttostr(i) + '] = ' + floattostr(x1[i]));
  end;

  memo1.Lines.Add(' ');
  for i := 1 to batas do
  begin
    memo1.Lines.Add('x2[' + inttostr(i) + '] = ' + floattostr(x2[i]));
  end;

  memo1.Lines.Add(' ');
  for i := 1 to batas do
  begin
    memo1.Lines.Add('y[' + inttostr(i) + '] = ' + floattostr(y[i,1]));
  end;

  if rbtnTopoB.Checked = true then
  begin
    memo1.Lines.Add(' ');
    for i := 1 to batas do
    begin
      memo1.Lines.Add('y1['+inttostr(i)+'] = '+floattostr(y[i,1])+' '+'y2['+inttostr(i)+'] = '+floattostr(y[i,2])+' '+'y3['+inttostr(i)+'] = '+floattostr(y[i,3])+' '+'y4['+inttostr(i)+'] = '+floattostr(y[i,4])+' '+'y5['+inttostr(i)+'] = '+floattostr(y[i,5])+' '+'y5['+inttostr(i)+'] = '+floattostr(y[i,6]));
    end;
  end;

  memo1.Lines.Add(' ');
  memo1.Lines.Add('weight input (w1) ' + inttostr(hidden1) + 'x' + inttostr(input) + ' :');
  for i:=1 to input do
  begin
    for j:=1 to hidden1 do
    begin
      memo1.Lines.Add('w1[' + inttostr(j) + ',' + inttostr(i) + '] = ' + floattostr(weight[1,j,i]));
    end;
  end;

  memo1.Lines.Add(' ');
  memo1.Lines.Add('weight hidden (w2) ' + inttostr(hidden2) + 'x' + inttostr(hidden1) + ' :');
  for i:=1 to hidden1 do
  begin
    for j:=1 to hidden2 do
    begin
      memo1.Lines.Add('w2[' + inttostr(j) + ',' + inttostr(i) + '] = ' + floattostr(weight[2,j,i]));
    end;
  end;

  memo1.Lines.Add(' ');
  memo1.Lines.Add('weight output (w3) ' + inttostr(output) + 'x' + inttostr(hidden2) + ' :');
  for i := 1 to hidden2 do
  begin
    for j := 1 to output do
    begin
      memo1.Lines.Add('w3[' + inttostr(j) + ',' + inttostr(i) + '] = ' + floattostr(weight[3,j,i]));
    end;
  end;
end;

procedure TMainForm.viewannvalue;
var i,j : integer;
begin
  memo1.Lines.Add(' ');
  memo1.Lines.Add('Network has learned successfully');
  memo1.Lines.Add('Iteration = '+ Edit1.Text);
  memo1.Lines.Add('SSE = ' + Edit2.Text);
  memo1.Lines.Add(' ');
  memo1.Lines.Add('Optimal connection weights: ');

  memo1.Lines.Add('weight input (w1) ' + inttostr(hidden1) + 'x' + inttostr(input) + ' :');
  for i:=1 to input do
  begin
    for j:=1 to hidden1 do
    begin
      memo1.Lines.Add('w1[' + inttostr(j) + ',' + inttostr(i) + '] = ' + floattostr(weight[1,j,i]));
    end;
  end;

  memo1.Lines.Add(' ');
  memo1.Lines.Add('weight hidden (w2) ' + inttostr(hidden2) + 'x' + inttostr(hidden1) + ' :');
  for i:=1 to hidden1 do
  begin
    for j:=1 to hidden2 do
    begin
      memo1.Lines.Add('w2[' + inttostr(j) + ',' + inttostr(i) + '] = ' + floattostr(weight[2,j,i]));
    end;
  end;

  memo1.Lines.Add(' ');
  memo1.Lines.Add('weight output (w3) ' + inttostr(output) + 'x' + inttostr(hidden2) + ' :');
  for i := 1 to hidden2 do
  begin
    for j := 1 to output do
    begin
      memo1.Lines.Add('w3[' + inttostr(j) + ',' + inttostr(i) + '] = ' + floattostr(weight[3,j,i]));
    end;
  end;
  memo1.Lines.Add('');
  memo1.Lines.Add('Network ready to be tested, Please do Recall session !');
end;

procedure TMainForm.viewrecallvalue(batas: Integer);
var
  i,j :integer;
begin
  memo1.Lines.Add('Recall Output: ');
  for i := 1 to batas do
  begin
    for j := 1 to output do
    begin
      memo1.Lines.Add('Output test [' + inttostr(i) + '] = ' + floattostr(outfix[i,j]));
    end;
  end;

  memo1.Lines.Add(' ');
  memo1.Lines.Add('Recall abs Error: ');
  for i := 1 to batas do
  begin
    memo1.Lines.Add('Error test [' + inttostr(i) + '] = ' + floattostr(error[i]));
  end;

  memo1.Lines.Add(' ');
  memo1.Lines.Add('Congrats.. Network has been tested successfully !');
end;

procedure TMainForm.process1(batas :integer; in1,in2 :extended);
label start, loop;
var
  i,j,k: Integer;
begin
  m := 1;
  start:
    i:=1;
    e:= 0;
  loop:
    //feedforward
    x[1] := x1[i];
    x[2] := x2[i];

    {layar 1: y2 //output layer 2}
    for j := 1 to hidden1 do
    begin
      temp := 0;
      for k := 1 to input do
      begin
        temp := temp + x[k]*weight[1,j,k];
      end;
      temp  := temp - th[1];
      yL[1,j] := 1/(1+exp(-temp));
    end;

    {layer 2: yL2 //output layer 2}
    for j := 1 to hidden2 do
    begin
      temp := 0;
      for k := 1 to hidden1 do
      begin
        temp := temp + yL[1,k]*weight[2,j,k];
      end;
      temp  := temp - th[2];
      yL[2,j] := 1/(1 + exp(-temp));
    end;

    {layer 3: yL3 // output layer 3}
    for j := 1 to output do
    begin
      temp := 0;
      for k := 1 to hidden2 do
      begin
        temp := temp + yL[2,k]*weight[3,j,k];
      end;
      temp   := temp - th[3];
      yL[3,j] := 1/(1 + exp(-temp));
      outfix[i,j] := yL[3,j];
    end;

    {finding error}
    for j := 1 to output do
    begin
      errorL[3,j]  := y[i,j] - yL[3,j]; //output node error
      derrorL[3,j] := errorL[3,j]*yL[3,j]*(1 - yL[3,j]); // eq 3.56 (layer terluar)
      e := e + 0.5*(sqr(errorL[3,j])); //SSE (weigthed sum squarred error)
    end;
    error[m] := e;

    for j := 1 to hidden2 do
    begin
      temp := 0;
      for k := 1 to output do
      begin
        temp := temp + weight[3,k,j]*errorL[3,k];
      end;
      errorL[2,j] := temp;
      derrorL[2,j] := errorL[2,j]*yL[2,j]*(1 - yL[2,j]);
    end;

    for j := 1 to hidden1 do
    begin
      temp := 0;
      for k := 1 to hidden2 do
      begin
        temp := temp + weight[2,k,j]*errorL[2,k];
      end;
      errorL[1,j] := temp;
      derrorL[1,j] := errorL[1,j]*yL[1,j]*(1 - yL[1,j]); // eq 3.57 (selain layer terluar)
    end;

    {Updating weight}
    {Layer 3: Hidden Layer 3 -> output}
    for j := 1 to hidden2 do
    begin
      for k := 1 to output do
      begin
        weight[3,k,j] := weight[3,k,j] + in1*derrorL[3,k]*yL[2,j]; // Eq 3.55
      end;
    end;
    for j := 1 to output do
    begin
      th[3] := th[3] - in1*derrorL[3,j];
    end;

    {Layer 2: Hidden Layer 2 -> Hidden Layer 1}
    for j := 1 to hidden1 do
    begin
      for k := 1 to hidden2 do
      begin
        weight[2,k,j] := weight[2,k,j] + in1*derrorL[2,k]*yL[1,j];
      end;
    end;
    for j := 1 to hidden2 do
    begin
      th[2] := th[2] - in1*derrorL[2,j];
    end;

    {Layer 1: Hidden Layer 1 -> input}
    for j := 1 to input do
    begin
      for k := 1 to hidden1 do
      begin
        weight[1,k,j] := weight[1,k,j] + in1*derrorL[1,k]*x[j];
      end;
    end;
    for j := 1 to hidden1 do
    begin
      th[1] := th[1] - in1*derrorL[1,j];
    end;

    th1[m] := th[1];
    th2[m] := th[2];
    th3[m] := th[3];

    if i < batas then
    begin
      inc(i);
      inc(m);
      goto loop;
    end
    else if e > in2 then
    begin
      inc(m);
      goto start;
    end;
end;

{procedure TMainForm.Fuzzy;
var
  i :integer;
begin
  for i := 0 to 22 do //heel
  begin
    //rendah
    if x1[i] < 1.011 then
    begin
      rendah := 1
    end;
    if (x1[i] >= 1.011) and (x1[i] <= 1.66) then
    begin
      rendah := (x1[i] - 1.011) /(1.66 - 1.011)
    end;
    if x1[i] > 1.864 then
    begin
      rendah := 0;
    end;

    //sedang
    if x1[i] < 1.011 then
    begin
      sedang := 0;
    end;
    if (x1[i] >= 1.011) and (x1[i] <= 1.34)  then
    begin
      sedang := (x1[i] - 1.011)/(1.34 - 1.011)
    end;
    if (x1[i] >= 1.34) and (x1[i] <= 1.66) then
    begin
      sedang := (x1[i] - 1.34)/(1.66 - 1.34)
    end;
    if x1[i] > 1.864 then
    begin
      sedang := 0;
    end;

    //tinggi
    if x1[i] < 1.011 then
    begin
      tinggi := 0
    end;
    if (x1[i] >= 1.011) and (x1[i] <= 1.864) then
    begin
      tinggi := (x1[i] - 1.011) /(1.864 - 1.011)
    end;
    if x1[i] > 1.864 then
    begin
      tinggi := 1
    end;

    Series38.AddXY(i,rendah);
    Series39.AddXY(i,sedang);
    Series40.AddXY(i,tinggi);
  end;
end;}

procedure TMainForm.topofilecreated;
begin
  rewrite(myfile);
  write(myfile,inttostr(input),' ',inttostr(hidden1),' ',inttostr(hidden2),' ',inttostr(output));
  writeln(myfile,' ');
  write(myfile,' ',Edit1.Text);
  writeln(myfile,' ');
  write(myfile,' ',Edit2.Text);
  closefile(myfile);
end;

procedure TMainForm.weight_in_filecreated;
var i,j :integer;
begin
  rewrite(myfile);
  for i := 1 to input do
  begin
    for j := 1 to hidden1 do
    begin
      writeln(myfile,weight[1,j,i]);
    end;
  end;
  closefile(myfile);
end;

procedure TMainForm.weight_hid_filecreated;
var i,j :integer;
begin
  rewrite(myfile);
  for i := 1 to hidden1 do
  begin
    for j := 1 to hidden2 do
    begin
      writeln(myfile,weight[2,j,i]);
    end;
  end;
  closefile(myfile);
end;

procedure TMainForm.weight_out_filecreated;
var i,j :integer;
begin
  rewrite(myfile);
  for i := 1 to hidden2 do
  begin
    for j := 1 to output do
    begin
      writeln(myfile,weight[3,j,i]);
    end;
  end;
  closefile(myfile);
end;

procedure TMainForm.openfile_w_in;
var i,j :integer;
begin
  reset(myfile);
  for i := 1 to input do
  begin
    for j := 1 to hidden1 do
    begin
      read(myfile,weight[1,j,i]);
    end;
    readln(myfile);
  end;
  closefile(myfile);
end;

procedure TMainForm.openfile_w_hid;
var i,j :integer;
begin
  reset(myfile);
  for i := 1 to hidden1 do
  begin
    for j := 1 to hidden2 do
    begin
      read(myfile,weight[2,j,i]);
    end;
    readln(myfile);
  end;
  closefile(myfile);
end;

procedure TMainForm.openfile_w_out;
var i,j :integer;
begin
  reset(myfile);
  for i := 1 to hidden2 do
  begin
    for j := 1 to output do
    begin
      read(myfile,weight[3,j,i]);
    end;
    readln(myfile);
  end;
  closefile(myfile);
end;

procedure TMainForm.open_trainingfile;
var i :integer;
begin
  i := 1;
  reset(myfile);
  read(myfile,datlim2);
  while not eof(myfile) do
  begin
    readln(myfile,x1[i],x2[i],y[i,1]);
    i := i + 1;
  end;
  closefile(myfile);
end;

procedure TMainForm.recall_gaitfile;
var
  i :integer;
  del1,del2 :string;
  ambil :TStringList;
begin
  input   := strtoint(SpinEdit1.Text);
  output  := strtoint(SpinEdit2.Text);
  hidden1 := strtoint(SpinEdit3.Text);
  hidden2 := strtoint(SpinEdit4.Text);

  ShowMessage('Recall using last optimized weight');

  if OpenTextFileDialog1.Execute = true then
  begin
    i := 1;
    ambil := TStringList.Create;
    assignfile(myfile,OpenTextFileDialog1.FileName);
    reset(myfile);
    readln(myfile,del1);
    ambil.Delimiter := '(';
    readln(myfile,del2);
    ambil.DelimitedText := del2;
    while not eof(myfile) do
    begin
      i := i + 1;
      readln(myfile,x1[i],x2[i],y[i,1]);
    end;
    closefile(myfile);
    datlim2 := i;
  end;
end;

procedure TMainForm.btnInit1Click(Sender: TObject);
var i: integer;
begin
  display2;
  GroupBox1.Visible := true;
  GroupBox5.Visible := false;
  memo1.Clear;
  memo1.ScrollBars := ssboth;
  btnAnn1.Enabled := true;
  Series1.Clear; Series3.Clear;

  if rbtnAND.Checked = true then
  begin
    y[1,1] := 0.0;
    y[2,1] := 0.0;
    y[3,1] := 0.0;
    y[4,1] := 1.0;
    inputvalue;

    for i := 1 to datlim do
    begin
      Series1.AddXY(x1[i],x2[i]);
      Series3.AddXY(i,y[i,1]);
    end;

    init;
    memo1.Lines.Add('AND Data to be Learned');
    viewinit(datlim);
    memo1.Lines.Add(' ');
    memo1.Lines.Add('Network has ready to learning session !');
  end;

  if rbtnOR.Checked = true then
  begin
    y[1,1] := 0.0;
    y[2,1] := 1.0;
    y[3,1] := 1.0;
    y[4,1] := 1.0;
    inputvalue;

    for i := 1 to datlim do
    begin
      Series1.AddXY(x1[i],x2[i]);
      Series3.AddXY(i,y[i,1]);
    end;

    init;
    memo1.Lines.Add('OR Data to be Learned');
    viewinit(datlim);
    memo1.Lines.Add(' ');
    memo1.Lines.Add('Network has ready to learning session !');
  end;

  if rbtnXOR.Checked = true then
  begin
    y[1,1] := 0.0;
    y[2,1] := 1.0;
    y[3,1] := 1.0;
    y[4,1] := 0.0;
    inputvalue;

    for i := 1 to datlim do
    begin
      Series1.AddXY(x1[i],x2[i]);
      Series3.AddXY(i,y[i,1]);
    end;

    init;
    memo1.Lines.Add('XOR Data to be Learned');
    viewinit(datlim);
    memo1.Lines.Add(' ');
    memo1.Lines.Add('Network has ready to learning session !');
  end;

  if rbtnGP.Checked = true then
  begin
    if FileExists('training.txt') = false then
    begin
      ShowMessage('File Training is Missing !');
    end;
    assignfile(myfile,'training.txt');
    open_trainingfile;

    for i := 1 to datlim2 do
    begin
      Series8.AddXY(i,x1[i]);
      Series9.AddXY(i,x2[i]);
      Series10.AddXY(i,y[i,1]);
    end;

    init;
    memo1.Lines.Add('Gait Data to be Learned');
    viewinit(datlim2);
    memo1.Lines.Add(' ');
    memo1.Lines.Add('Network has ready to learning session !');
  end;
  ShowMessage('Next, click The ANN Training Button !!');
end;

procedure TMainForm.btnAnn1Click(Sender: TObject);
var i :integer;
begin
  Series2.Clear; Series5.Clear; Series6.Clear; Series7.Clear;
  memo1.ScrollBars := ssboth;

  if rbtnAND.Checked = true then
  begin
    y[1,1] := 0.0;
    y[2,1] := 0.0;
    y[3,1] := 0.0;
    y[4,1] := 1.0;
    inputvalue;

    process1(datlim,alpha,error_lim);
    Edit1.Text := inttostr(m);
    Edit2.Text := floattostr(error[m]);
    for i := 1 to m do
    begin
      Series2.AddXY(i,error[i]);
      Series5.AddXY(i,th1[i]);
      Series6.AddXY(i,th2[i]);
      Series7.AddXY(i,th3[i]);
    end;

    viewannvalue;
    assignfile(myfile,'ANDtopo.txt');
    topofilecreated;
    assignfile(myfile,'ANDW_in.txt');
    weight_in_filecreated;
    assignfile(myfile,'ANDW_hidden.txt');
    weight_hid_filecreated;
    assignfile(myfile,'ANDW_out.txt');
    weight_out_filecreated;
  end;

  if rbtnOR.Checked = true then
  begin
    y[1,1] := 0.0;
    y[2,1] := 1.0;
    y[3,1] := 1.0;
    y[4,1] := 1.0;
    inputvalue;

    process1(datlim,alpha,error_lim);
    Edit1.Text := inttostr(m);
    Edit2.Text := floattostr(error[m]);
    for i := 1 to m do
    begin
      Series2.AddXY(i,error[i]);
      Series5.AddXY(i,th1[i]);
      Series6.AddXY(i,th2[i]);
      Series7.AddXY(i,th3[i]);
    end;

    viewannvalue;
    assignfile(myfile,'ORtopo.txt');
    topofilecreated;
    assignfile(myfile,'ORW_in.txt');
    weight_in_filecreated;
    assignfile(myfile,'ORW_hidden.txt');
    weight_hid_filecreated;
    assignfile(myfile,'ORW_out.txt');
    weight_out_filecreated;
  end;

  if rbtnXOR.Checked = true then
  begin
    y[1,1] := 0.0;
    y[2,1] := 1.0;
    y[3,1] := 1.0;
    y[4,1] := 0.0;
    inputvalue;

    process1(datlim,alpha,error_lim);
    Edit1.Text := inttostr(m);
    Edit2.Text := floattostr(error[m]);
    for i := 1 to m do
    begin
      Series2.AddXY(i,error[i]);
      Series5.AddXY(i,th1[i]);
      Series6.AddXY(i,th2[i]);
      Series7.AddXY(i,th3[i]);
    end;

    viewannvalue;
    assignfile(myfile,'XORtopo.txt');
    topofilecreated;
    assignfile(myfile,'XORW_in.txt');
    weight_in_filecreated;
    assignfile(myfile,'XORW_hidden.txt');
    weight_hid_filecreated;
    assignfile(myfile,'XORW_out.txt');
    weight_out_filecreated;
  end;

  if rbtnGP.Checked = true then
  begin
    input   := strtoint(SpinEdit1.Text);
    output  := strtoint(SpinEdit2.Text);
    hidden1 := strtoint(SpinEdit3.Text);
    hidden2 := strtoint(SpinEdit4.Text);

    process1(datlim2,alpha,error_lim);
    Edit1.Text := inttostr(m);
    Edit2.Text := floattostr(error[m]);
    for i := 1 to m do
    begin
      Series11.AddXY(i,error[i]);
      Series12.AddXY(i,th1[i]);
      Series13.AddXY(i,th2[i]);
      Series14.AddXY(i,th3[i]);
    end;

    viewannvalue;
    assignfile(myfile,'gaittopo.txt');
    topofilecreated;
    assignfile(myfile,'gaitW_in.txt');
    weight_in_filecreated;
    assignfile(myfile,'gaitW_hidden.txt');
    weight_hid_filecreated;
    assignfile(myfile,'gaitW_out.txt');
    weight_out_filecreated;
    //fuzzy;
  end;
  ShowMessage('Congratulation!!');
  ShowMessage('Next, click the Recall or Clear to move the another task');
end;

procedure TMainForm.btnRecall1Click(Sender: TObject);
var
  i,j :integer;
begin
  display2;
  GroupBox1.Visible := true;
  GroupBox5.Visible := false;
  memo1.ScrollBars := ssboth;
  Series1.Clear; Series2.Clear; Series3.Clear; Series4.Clear;
  Series5.Clear; Series6.Clear; Series7.Clear;
  Series8.Clear;  Series9.Clear;  Series10.Clear; Series11.Clear;
  Series12.Clear; Series13.Clear; Series14.Clear; Series15.Clear;
  ShowMessage('Recall using last optimized weight');

  if rbtnAND.Checked = true then
  begin
    y[1,1] := 0.0;
    y[2,1] := 0.0;
    y[3,1] := 0.0;
    y[4,1] := 1.0;
    inputvalue;

    if FileExists('ANDW_in.txt') = false then
    begin
      ShowMessage('File Optimized Weight Not Found !');
      ShowMessage('Please do the learning session first...');
    end;
    assignfile(myfile,'ANDW_in.txt');
    openfile_w_in;

    assignfile(myfile,'ANDW_hidden.txt');
    openfile_w_hid;

    assignfile(myfile,'ANDW_out.txt');
    openfile_w_out;

    process1(datlim,alpha,error_lim);
    viewrecallvalue(datlim);
    for i := 1 to datlim do
    begin
      for j := 1 to output do
      begin
        Series4.AddXY(i,outfix[i,j]);
      end;
      Series1.AddXY(x1[i],x2[i]);
      Series3.AddXY(i,y[i,1]);
    end;
  end;

  if rbtnOR.Checked = true then
  begin
    y[1,1] := 0.0;
    y[2,1] := 1.0;
    y[3,1] := 1.0;
    y[4,1] := 1.0;
    inputvalue;

    if FileExists('ORW_in.txt') = false then
    begin
      ShowMessage('File Optimized Weight Not Found !');
      ShowMessage('Please do the learning session first...');
    end;
    assignfile(myfile,'ORW_in.txt');
    openfile_w_in;

    assignfile(myfile,'ORW_hidden.txt');
    openfile_w_hid;

    assignfile(myfile,'ORW_out.txt');
    openfile_w_out;

    process1(datlim,alpha,error_lim);
    for i := 1 to datlim do
    begin
      for j := 1 to output do
      begin
        Series4.AddXY(i,outfix[i,j]);
      end;
      Series1.AddXY(x1[i],x2[i]);
      Series3.AddXY(i,y[i,1]);
    end;
    viewrecallvalue(datlim);
  end;

  if rbtnXOR.Checked = true then
  begin
    y[1,1] := 0.0;
    y[2,1] := 1.0;
    y[3,1] := 1.0;
    y[4,1] := 0.0;
    inputvalue;

    if FileExists('XORW_in.txt') = false then
    begin
      ShowMessage('File Optimized Weight Not Found !');
      ShowMessage('Please do the learning session first...');
    end;
    assignfile(myfile,'XORW_in.txt');
    openfile_w_in;

    assignfile(myfile,'XORW_hidden.txt');
    openfile_w_hid;

    assignfile(myfile,'XORW_out.txt');
    openfile_w_out;

    process1(datlim,alpha,error_lim);
    for i := 1 to datlim do
    begin
      for j := 1 to output do
      begin
        Series4.AddXY(i,outfix[i,j]);
      end;
      Series1.AddXY(x1[i],x2[i]);
      Series3.AddXY(i,y[i,1]);
    end;
    viewrecallvalue(datlim);
  end;

  if rbtnGP.Checked = true then
  begin
    recall_gaitfile;
    if FileExists('gaitW_in.txt') = false then
    begin
      ShowMessage('File Optimized Weight Not Found !');
      ShowMessage('Please do the learning session first...');
    end;
    assignfile(myfile,'gaitW_in.txt');
    openfile_w_in;

    assignfile(myfile,'gaitW_hidden.txt');
    openfile_w_hid;

    assignfile(myfile,'gaitW_out.txt');
    openfile_w_out;

    process1(datlim2,alpha,error_lim);
    for i := 1 to datlim2 do
    begin
      for j := 1 to output do
      begin
        Series15.AddXY(i,outfix[i,j]);
      end;
      Series8.AddXY(i,x1[i]);
      Series9.AddXY(i,x2[i]);
      Series10.AddXY(i,y[i,1]);
    end;
    viewrecallvalue(datlim2);
  end;
end;

procedure TMainForm.btnClear1Click(Sender: TObject);
begin
  Series1.Clear; Series2.Clear; Series3.Clear; Series4.Clear;
  Series5.Clear; Series6.Clear; Series7.Clear;
  Series8.Clear;  Series9.Clear;  Series10.Clear; Series11.Clear;
  Series12.Clear; Series13.Clear; Series14.Clear; Series15.Clear;
  rbtnAND.Checked := false; rbtnOR.Checked := false;
  rbtnXOR.Checked := false; rbtnGP.Checked := false;
  Edit1.Clear; Edit2.Clear;
  ShowMessage('Ready to do run... ');
  displayhome;
end;

procedure TMainForm.btnClear2Click(Sender: TObject);
begin
  Series8.Clear;  Series9.Clear;  Series10.Clear; Series11.Clear;
  Series12.Clear; Series13.Clear; Series14.Clear; Series15.Clear;
  Edit1.Clear; Edit2.Clear;
  ShowMessage('Ready to do run... ');
  displayhome;
end;

procedure TMainForm.btnInit2Click(Sender: TObject);
var i :integer;
begin
  display2;
  interface1Panel.Visible := false;
  interface2Panel.Visible := true;
  memo1.Clear;
  memo2.Clear;
  memo1.ScrollBars := ssboth;

  if rbtnTopoA.Checked = true then
  begin
    chart10.Visible := true;
    chart8.Visible  := false;
    btnAnnTopoA.Enabled := true;
    btnAnnTopoB.Visible := false;
    GroupBox1.Visible := true;
    GroupBox5.Visible := false;

    if FileExists('traininga.txt') = false then
    begin
      ShowMessage('File Training is Missing !');
    end;
    assignfile(myfile,'traininga.txt');
    open_trainingfile;

    for i := 1 to datlim2 do
    begin
      Series17.AddXY(i,x1[i]);
      Series18.AddXY(i,x2[i]);
      Series19.AddXY(i,y[i,1]);
    end;

    init;
    memo1.Lines.Add('Gait Data to be Learned');
    viewinit(datlim2);
    memo1.Lines.Add(' ');
    memo1.Lines.Add('Network has ready to learning session !');
  end;

  if rbtnTopoB.Checked = true then
  begin
    chart10.Visible := false;
    chart8.Visible  := true;
    btnAnnTopoA.Visible := false;
    btnAnnTopoB.Enabled := true;
    GroupBox1.Visible := true;
    GroupBox5.Visible := false;

    if FileExists('trainingb.txt') = false then
    begin
      ShowMessage('File Training is Missing !');
    end;
    assignfile(myfile,'trainingb.txt');
    i := 1;
    reset(myfile);
    read(myfile,datlim2);
    while not eof(myfile) do
    begin
      readln(myfile,x1[i],x2[i],y[i,1],y[i,2],y[i,3],y[i,4],y[i,5],y[i,6]);
      i := i + 1;
    end;
    closefile(myfile);

    for i := 1 to datlim2 do
    begin
      Series21.AddXY(i,x1[i]);
      Series22.AddXY(i,x2[i]);
      Series23.AddXY(i,y[i,1]);
      Series24.AddXY(i,y[i,2]);
      Series25.AddXY(i,y[i,3]);
      Series26.AddXY(i,y[i,4]);
      Series27.AddXY(i,y[i,5]);
      Series28.AddXY(i,y[i,6]);
    end;

    init;
    memo1.Lines.Add('Gait Data to be Learned');
    viewinit(datlim2);
    memo1.Lines.Add(' ');
    memo1.Lines.Add('Network has ready to learning session !');
  end;
  ShowMessage('Next, click The ANN Training Button !!');
end;

procedure TMainForm.btnAnnTopoAClick(Sender: TObject);
const
  alpha1 = 0.115;
  error_lim1 = 0.19;
var
  i: Integer;
begin
  input   := SpinEdit1.Value;
  output  := strtoint(SpinEdit2.Text);
  hidden1 := strtoint(SpinEdit3.Text);
  hidden2 := strtoint(SpinEdit4.Text);

  process1(datlim2,alpha1,error_lim1);
  Edit1.Text := inttostr(m);
  Edit2.Text := floattostr(error[m]);
  for i := 1 to m do
  begin
    series16.AddXY(i,error[i]);
  end;

  viewannvalue;
  assignfile(myfile,'gaitA_topo.txt');
  topofilecreated;
  assignfile(myfile,'gaitA_W_in.txt');
  weight_in_filecreated;
  assignfile(myfile,'gaitA_W_hidden.txt');
  weight_hid_filecreated;
  assignfile(myfile,'gaitA_W_out.txt');
  weight_out_filecreated;
  ShowMessage('Congratulation!!');
  ShowMessage('Next, click the Recall or Clear to move the another task');
end;

procedure TMainForm.btnRecallTopoAClick(Sender: TObject);
const
  alpha1 = 0.115;
  error_lim1 = 0.19;
var i,j :integer;
begin
  display2;
  interface1Panel.Visible := false;
  interface2Panel.Visible := false;
  memo1.ScrollBars := ssboth;
  Series16.Clear; Series17.Clear; Series18.Clear; Series19.Clear; Series20.Clear;

  recall_gaitfile;
  if FileExists('gaitA_W_in.txt') = false then
  begin
    ShowMessage('File Optimized Weight Not Found !');
    ShowMessage('Please do the learning session first...');
  end;
  assignfile(myfile,'gaitA_W_in.txt');
  openfile_w_in;
  assignfile(myfile,'gaitA_W_hidden.txt');
  openfile_w_hid;
  assignfile(myfile,'gaitA_W_out.txt');
  openfile_w_out;

  process1(datlim2,alpha1,error_lim1);
  for i := 1 to datlim2 do
  begin
    for j := 1 to output do
    begin
      Series20.AddXY(i,outfix[i,j]);
    end;
    Series17.AddXY(i,x1[i]);
    Series18.AddXY(i,x2[i]);
    Series19.AddXY(i,y[i,1]);
  end;
  viewrecallvalue(datlim2);
end;

procedure TMainForm.btnAnnTopoBClick(Sender: TObject);
var i :integer;
const
  alpha2 = 0.115;
  error_lim2 = 1.5;
begin
  input   := SpinEdit1.Value;
  output  := strtoint(SpinEdit2.Text);
  hidden1 := strtoint(SpinEdit3.Text);
  hidden2 := strtoint(SpinEdit4.Text);

  process1(datlim2,alpha2,error_lim2);
  Edit1.Text := inttostr(m);
  Edit2.Text := floattostr(e);

  for i := 1 to m do
  begin
    series16.AddXY(i,error[i]);
  end;

  viewannvalue;
  assignfile(myfile,'gaitB_topo.txt');
  topofilecreated;
  assignfile(myfile,'gaitB_W_in.txt');
  weight_in_filecreated;
  assignfile(myfile,'gaitB_W_hidden.txt');
  weight_hid_filecreated;
  assignfile(myfile,'gaitB_W_out.txt');
  weight_out_filecreated;
  ShowMessage('Congratulation!!');
  ShowMessage('Next, click the Recall or Clear to move the another task');
end;

procedure TMainForm.btnRecallTopoBClick(Sender: TObject);
const
  alpha2 = 0.115;
  error_lim2 = 1.5;
var
  i :integer;
  del1,del2 :string;
  ambil :TStringList;
begin
  display2;
  interface1Panel.Visible := false;
  interface2Panel.Visible := false;
  memo1.ScrollBars := ssboth;
  Series16.Clear; Series21.Clear; Series22.Clear; Series23.Clear; Series24.Clear;
  Series25.Clear; Series26.Clear; Series27.Clear; Series28.Clear; Series29.Clear;
  Series30.Clear; Series31.Clear; Series32.Clear; Series33.Clear; Series34.Clear;

  input   := strtoint(SpinEdit1.Text);
  output  := strtoint(SpinEdit2.Text);
  hidden1 := strtoint(SpinEdit3.Text);
  hidden2 := strtoint(SpinEdit4.Text);

  ShowMessage('Recall using last optimized weight');

  if OpenTextFileDialog1.Execute = true then
  begin
    i := 1;
    ambil := TStringList.Create;
    assignfile(myfile,OpenTextFileDialog1.FileName);
    reset(myfile);
    readln(myfile,del1);
    ambil.Delimiter := '(';
    readln(myfile,del2);
    ambil.DelimitedText := del2;
    while not eof(myfile) do
    begin
      i := i + 1;
      readln(myfile,x1[i],x2[i],y[i,1],y[i,2],y[i,3],y[i,4],y[i,5],y[i,6]);
    end;
    closefile(myfile);
    datlim2 := i;
  end;

  if FileExists('gaitB_W_in.txt') = false then
  begin
    ShowMessage('File Optimized Weight Not Found !');
    ShowMessage('Please do the learning session first...');
  end;
  assignfile(myfile,'gaitB_W_in.txt');
  openfile_w_in;
  assignfile(myfile,'gaitB_W_hidden.txt');
  openfile_w_hid;
  assignfile(myfile,'gaitB_W_out.txt');
  openfile_w_out;

  process1(datlim2,alpha2,error_lim2);
  Series16.Clear;
  for i := 1 to datlim2 do
  begin
    Series21.AddXY(i,x1[i]);
    Series22.AddXY(i,x2[i]);
    Series23.AddXY(i,y[i,1]);
    Series24.AddXY(i,y[i,2]);
    Series25.AddXY(i,y[i,3]);
    Series26.AddXY(i,y[i,4]);
    Series27.AddXY(i,y[i,5]);
    Series28.AddXY(i,y[i,6]);
    Series29.AddXY(i,outfix[i,1]);
    Series30.AddXY(i,outfix[i,2]);
    Series31.AddXY(i,outfix[i,3]);
    Series32.AddXY(i,outfix[i,4]);
    Series33.AddXY(i,outfix[i,5]);
    Series34.AddXY(i,outfix[i,6]);
  end;
  viewrecallvalue(datlim2);
end;

procedure TMainForm.btnClear3Click(Sender: TObject);
begin
  Series21.Clear; Series22.Clear; Series23.Clear; Series24.Clear; Series25.Clear; Series26.Clear; Series27.Clear;
  Series28.Clear; Series29.Clear; Series30.Clear; Series31.Clear; Series32.Clear; Series33.Clear; Series34.Clear;
  Series16.Clear; Series17.Clear; Series18.Clear; Series19.Clear; Series20.Clear;
  memo2.Clear;  rbtnTopoA.Checked := false; rbtnTopoB.Checked := false;
  Edit1.Clear; Edit2.Clear;
  ShowMessage('Ready to do run... ');
  displayhome;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  memo1.Clear;
  memo1.Lines.Add('Welcome to Multilayer Perceptron Network with EBPA Program.');
  memo1.Lines.Add(' ');
  memo1.Lines.Add('Created by Achmad Fachturrohman 07311740000025.');
  memo1.Lines.Add(' ');
  memo1.Lines.Add('Choose what you will to find out to begin !');
  infoPanel.Color := $00A1470D;
end;

procedure TMainForm.rbtnANDClick(Sender: TObject);
begin
  SpinEdit2.Value := 1;
  SpinEdit3.Value := 8;
  SpinEdit4.Value := 8;
  interface1Panel.Visible := true;
  interface2Panel.Visible := false;
end;

procedure TMainForm.rbtnGPClick(Sender: TObject);
begin
  SpinEdit2.Value := 1;
  SpinEdit3.Value := 8;
  SpinEdit4.Value := 8;
  interface1Panel.Visible := false;
  interface2Panel.Visible := true;
end;

procedure TMainForm.rbtnORClick(Sender: TObject);
begin
  SpinEdit2.Value := 1;
  SpinEdit3.Value := 8;
  SpinEdit4.Value := 8;
  interface1Panel.Visible := true;
  interface2Panel.Visible := false;
end;

procedure TMainForm.rbtnXORClick(Sender: TObject);
begin
  SpinEdit2.Value := 1;
  SpinEdit3.Value := 8;
  SpinEdit4.Value := 8;
  interface1Panel.Visible := true;
  interface2Panel.Visible := false;
end;

procedure TMainForm.btnHomeClick(Sender: TObject);
begin
  displayhome;
end;

procedure TMainForm.btnTugasClick(Sender: TObject);
begin
  display1;
  cmd1Panel.Visible := true;
  cmd2Panel.Visible := false;
  Groupbox4.Visible := false;
  btnAnn1.Enabled := false;
  ShowMessage('Before do Initialization Select The Function Firstly !!');
end;

procedure TMainForm.btnUTSClick(Sender: TObject);
begin
  display1;
  cmd1Panel.Visible := false;
  cmd2Panel.Visible := true;
  Groupbox3.Visible := false;
  Groupbox4.Visible := true;
  btnAnnTopoA.Enabled := false;
  btnAnnTopoB.Enabled := false;
  btnAnnTopoA.Visible := true;
  btnAnnTopoB.Visible := true;
  btnRecallTopoA.Visible := true;
  btnRecallTopoB.Visible := true;
  ShowMessage('Before do Initialization Select The Topology Firstly !!');
end;

procedure TMainForm.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.display1;
begin
  MainForm.Width := 755;
  MainForm.Height := 481;
  MainForm.Position := poDesktopCenter;
  interface1Panel.Visible := false;
  interface2Panel.Visible := false;
  infoPanel.Left := 321;
  infoPanel.Width := 417;
  infoPanel.Color := $00FF8A44;
  memo1.Left := 176;
  memo1.Height :=425;
  memo1.Top := 8;
  memo1.Clear;
  memo1.Lines.Add('Please do initialization network value or test the optimized network !');
  memo1.Lines.Add(' ');
  Groupbox2.Visible := true;
  Groupbox3.Visible := true;
end;

procedure TMainForm.display2;
begin
  MainForm.Height := 481;
  MainForm.Width := 1350;
  MainForm.Position := poDesktopCenter;
  interface1Panel.Left := 738;
  interface2Panel.Left := 738;
  memo1.Height := 315;
  memo1.Top := 118;
end;

procedure TMainForm.displayhome;
begin
  infoPanel.Color := $00A1470D;
  infoPanel.Visible := true;
  infoPanel.Width := 249;
  infoPanel.Left := 184;
  MainForm.Width := 451;
  MainForm.Height:= 481;
  MainForm.Position := poDesktopCenter;
  Groupbox1.Visible := false;
  Groupbox2.Visible := false;
  Groupbox3.Visible := false;
  Groupbox4.Visible := false;
  Groupbox5.Visible := false;
  memo1.Left := 8;
  memo1.Height := 425;
  memo1.Top := 8;
  cmd1Panel.Visible := false;
  cmd2Panel.Visible := false;
  interface1Panel.Visible := false;
  interface2Panel.Visible := false;
  memo1.Clear;
  memo1.Lines.Add('Welcome to Multilayer Perceptron Network with EBPA Program.');
  memo1.Lines.Add(' ');
  memo1.Lines.Add('Created by Achmad Fachturrohman 07311740000025.');
  memo1.Lines.Add(' ');
  memo1.Lines.Add('Choose Logic Function or Gait Phase to begin!');
end;

procedure TMainForm.rbtnTopoAClick(Sender: TObject);
begin
  SpinEdit2.Value := 1;
  btnRecallTopoB.Visible := false;
end;

procedure TMainForm.rbtnTopoBClick(Sender: TObject);
begin
  SpinEdit2.Value := 6;
  btnRecallTopoA.Visible := false;
end;

end.
