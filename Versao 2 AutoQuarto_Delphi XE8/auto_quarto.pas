unit auto_quarto;
 {
    CORRIGIR ERROS:
      android widget
      ajust size
  }
interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Layouts, FMX.TabControl,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, FMX.Notification,
  FMX.ScrollBox, FMX.Memo, IdStack;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TCPClient: TIdTCPClient;
    NotificationCenter: TNotificationCenter;
    FramedScrollBox1: TFramedScrollBox;
    Panel1: TPanel;
    btnFiltro: TButton;
    Label1: TLabel;
    Panel10: TPanel;
    btnAcessRodrigo: TButton;
    Label12: TLabel;
    Panel11: TPanel;
    btnAcessSueli: TButton;
    Label13: TLabel;
    Panel2: TPanel;
    btnComputador: TButton;
    Label2: TLabel;
    Panel3: TPanel;
    btnTelevisao: TButton;
    Label3: TLabel;
    Panel4: TPanel;
    btnLuz: TButton;
    Label4: TLabel;
    Panel5: TPanel;
    btnAutoPc: TButton;
    Label5: TLabel;
    Panel6: TPanel;
    btnPorta: TButton;
    Label7: TLabel;
    Panel7: TPanel;
    btnAutoTrancar: TButton;
    Label8: TLabel;
    Panel8: TPanel;
    btnAutoLuz: TButton;
    Label9: TLabel;
    Panel9: TPanel;
    btnAcessAdriana: TButton;
    Label11: TLabel;
    FramedScrollBox2: TFramedScrollBox;
    Button1: TButton;
    Button2: TButton;
    Panel19: TPanel;
    Label23: TLabel;
    edit_url: TEdit;
    Panel20: TPanel;
    Label24: TLabel;
    edit_port: TEdit;
    Panel21: TPanel;
    Label25: TLabel;
    FramedScrollBox3: TFramedScrollBox;
    Panel12: TPanel;
    Label14: TLabel;
    editAdriana: TEdit;
    Panel13: TPanel;
    Label15: TLabel;
    editRodrigo: TEdit;
    Panel14: TPanel;
    Label16: TLabel;
    editRoot: TEdit;
    Panel15: TPanel;
    btnEstadoPorta: TButton;
    Label18: TLabel;
    Panel16: TPanel;
    btnEstadoJanela: TButton;
    Label19: TLabel;
    Panel17: TPanel;
    Label21: TLabel;
    pbLuminosidade: TProgressBar;
    Panel18: TPanel;
    Label22: TLabel;
    trackLuminosidade: TTrackBar;
    Panel22: TPanel;
    editTemperatura: TEdit;
    Panel23: TPanel;
    Label29: TLabel;
    editLigarLamp: TEdit;
    Panel24: TPanel;
    Label30: TLabel;
    editPCHora1: TEdit;
    editPCMinuto1: TEdit;
    editPCHora2: TEdit;
    editPCMinuto2: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Panel25: TPanel;
    Label34: TLabel;
    editLampHora: TEdit;
    editLampMinuto: TEdit;
    Label36: TLabel;
    editRefresh: TEdit;
    debug: TMemo;
    debug2: TLabel;
    Label27: TLabel;
    Panel26: TPanel;
    Button3: TButton;
    Label6: TLabel;
    Panel27: TPanel;
    Button4: TButton;
    Label10: TLabel;
    Timer1: TTimer;
    CheckBox1: TCheckBox;
    procedure Button14Click(Sender: TObject);
    procedure btnPortaClick(Sender: TObject);
    procedure btnLuzClick(Sender: TObject);
    procedure btnComputadorClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnTelevisaoClick(Sender: TObject);
    procedure btnAutoTrancarClick(Sender: TObject);
    procedure btnAutoLuzClick(Sender: TObject);
    procedure btnAutoPcClick(Sender: TObject);
    procedure btnAcessAdrianaClick(Sender: TObject);
    procedure btnAcessRodrigoClick(Sender: TObject);
    procedure btnAcessSueliClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure editLigarLampKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editPCHora1KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editPCMinuto1KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editPCHora2KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editPCMinuto2KeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editLampHoraKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editLampMinutoKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edit_portKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editRefreshKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editLigarLampExit(Sender: TObject);
    procedure editPCHora1Exit(Sender: TObject);
    procedure editLampHoraExit(Sender: TObject);

    procedure processData ( packetsToProcess:String);
    procedure sendData(input:String);
    procedure trackLuminosidadeDragLeave(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    emergency: Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TForm1.btnAcessAdrianaClick(Sender: TObject);
begin
Form1.sendData('4!0');
end;

procedure TForm1.btnAcessRodrigoClick(Sender: TObject);
begin
Form1.sendData('5!0');
end;

procedure TForm1.btnAcessSueliClick(Sender: TObject);
begin
Form1.sendData('20!0');
end;

procedure TForm1.btnAutoLuzClick(Sender: TObject);
begin
Form1.sendData('13!0');
end;

procedure TForm1.btnAutoPcClick(Sender: TObject);
begin
Form1.sendData('15!0');
end;

procedure TForm1.btnAutoTrancarClick(Sender: TObject);
begin
 Form1.sendData('17!0');
end;

procedure TForm1.btnComputadorClick(Sender: TObject);
begin
Form1.sendData('2!0');
end;

procedure TForm1.btnFiltroClick(Sender: TObject);
begin
Form1.sendData('18!0');
end;

procedure TForm1.btnLuzClick(Sender: TObject);
begin
Form1.btnLuz.Enabled:=false;
Form1.sendData('1!0');
Form1.btnLuz.Enabled:=true;
end;

procedure TForm1.btnPortaClick(Sender: TObject);
begin
Form1.sendData('0!0');
end;

procedure TForm1.btnTelevisaoClick(Sender: TObject);
begin
Form1.sendData('3!0');
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Form1.sendData('7!0');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
edit_port.Text := '80';
edit_url.Text  :=  GStack.ResolveHost('quartoautomatico.no-ip.biz');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit_port.Text := '1000';
edit_url.Text  := '192.168.25.6';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form1.sendData('7!0');
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
Form1.Timer1.Enabled:=Form1.CheckBox1.Enabled;
end;

procedure TForm1.editLampHoraExit(Sender: TObject);
begin
  if Form1.editLampHora.Text.ToInteger>=24 then
    Form1.editLampHora.Text:='0';
  if Form1.editLampMinuto.Text.ToInteger>=60 then
    Form1.editLampMinuto.Text:='0';

  sendData('14!'+Form1.editLampHora.Text+':'+Form1.editLampMinuto.Text);
end;

procedure TForm1.editLampHoraKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if not CharInSet(KeyChar,['0'..'9']) then
  begin
    KeyChar := #0;
  end;
end;

procedure TForm1.editLampMinutoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if not CharInSet(KeyChar,['0'..'9']) then
  begin
    KeyChar := #0;
  end;
end;

procedure TForm1.editLigarLampExit(Sender: TObject);
begin
if Form1.editLigarLamp.Text.ToInteger>=24 then
    Form1.editLigarLamp.Text:='0';
 sendData('21!'+Form1.editLigarLamp.Text);
end;

procedure TForm1.editLigarLampKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if not CharInSet(KeyChar,['0'..'9']) then
  begin
    KeyChar := #0;
  end;
end;

procedure TForm1.editPCHora1Exit(Sender: TObject);
begin
if Form1.editPCHora1.Text.ToInteger>=24 then
    Form1.editPCHora1.Text:='0';
if Form1.editPCMinuto1.Text.ToInteger>=60 then
    Form1.editPCMinuto1.Text:='0';
if Form1.editPCHora2.Text.ToInteger>=24 then
    Form1.editPCHora2.Text:='0';
if Form1.editPCMinuto2.Text.ToInteger>=60 then
    Form1.editPCMinuto2.Text:='0';
sendData('16!'+Form1.editPCHora1.Text+':'+Form1.editPCMinuto1.Text+Form1.editPCHora2.Text+':'+Form1.editPCMinuto2.Text);
end;

procedure TForm1.editPCHora1KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if not CharInSet(KeyChar,['0'..'9']) then
  begin
    KeyChar := #0;
  end;
end;

procedure TForm1.editPCHora2KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if not CharInSet(KeyChar,['0'..'9']) then
  begin
    KeyChar := #0;
  end;
end;

procedure TForm1.editPCMinuto1KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if not CharInSet(KeyChar,['0'..'9']) then
  begin
    KeyChar := #0;
  end;
end;

procedure TForm1.editPCMinuto2KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if not CharInSet(KeyChar,['0'..'9']) then
  begin
    KeyChar := #0;
  end;
end;

procedure TForm1.editRefreshKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  Form1.Timer1.Interval:=1000*Form1.editRefresh.Text.ToInteger();
  if not CharInSet(KeyChar,['0'..'9']) then
  begin
    KeyChar := #0;
  end;
end;

procedure TForm1.edit_portKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if not CharInSet(KeyChar,['0'..'9']) then
  begin
    KeyChar := #0;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.Timer1.Enabled:=false;
Form1.emergency:=false;
Form1.Timer1.Interval:=1000*Form1.editRefresh.Text.ToInteger();
edit_port.Text := '80';
edit_url.Text  :=  'quartoautomatico.no-ip.biz';
end;


procedure TForm1.sendData (input:String);
var
i:Integer;
output:String;
begin
  Form1.TCPClient.Host :=GStack.ResolveHost(Form1.edit_url.Text);
  if Form1.edit_port.Text<>'' then
    Form1.TCPClient.Port := Form1.edit_port.Text.ToInteger;
  Form1.TCPClient.ConnectTimeout := 5000;
  output:='';
  if Form1.TCPClient.Connected=false then
  try
    Form1.TCPClient.Connect;
    Form1.TCPClient.IOHandler.Write('129854!'+input+'??');
    if Form1.TCPClient.IOHandler.InputBufferIsEmpty then
    for i := 0 to 21 do
    begin
     output.Insert(input.Length+1,Form1.TCPClient.IOHandler.ReadLn());
     if i<21 then
     output.Insert(input.Length+1,char(10));
    end;
    Form1.TCPClient.IOHandler.InputBuffer.clear;
    Form1.TCPClient.Disconnect();
  except
    Form1.TCPClient.IOHandler.InputBuffer.clear;
    Form1.TCPClient.Disconnect();
    Form1.Timer1.Enabled:=false;
  end;
  Form1.debug.Text:=output;
  Form1.processData(output);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
Notification: TNotification;
begin
Form1.sendData('7!0');
        if Form1.emergency then
        begin
          Notification := NotificationCenter.CreateNotification;
          Notification.Name:='EMERGENCIA';
          Notification.AlertBody := 'Algo aconteceu no laboratorio';
          Notification.EnableSound := True;
          NotificationCenter.PresentNotification(Notification);
        end;
end;

procedure TForm1.trackLuminosidadeDragLeave(Sender: TObject);
begin
sendData('6!'+trackLuminosidade.Value.ToString());
end;

procedure TForm1.processData(packetsToProcess:String);
var
  field, value, temp:String;
  i,j,k,lastPacket:Integer;
begin
  if (packetsToProcess = '') or (packetsToProcess = char(10)+char(10)) then exit;
  field := '-1';
  value := '-1';
  lastPacket:=1;

  for i := 1 to packetsToProcess.Length do   //verificar se deve se adicionar  1
    if packetsToProcess[i] = '!' then
    begin
      field := '0';
      value := '0';
      for j := lastPacket to i-1 do //verificar se deve se adicionar  1
        if packetsToProcess[j]<>char(10) then
          field.Insert(field.Length+1,packetsToProcess[j]);
      for j := i+1 to packetsToprocess.Length do    //verificar se deve se adicionar  1
        if packetsToProcess[j]<>char(10) then
        begin
          value.Insert(value.Length+1,packetsToProcess[j]);
        end
        else
        begin
          lastPacket:=j;
          break;
        end;


      case field.toInteger() of
        1:
            if value.ToInteger()=0 then
            begin
              Form1.btnLuz.Text:='Apagada';
              Form1.btnLuz.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnLuz.Text:='Acesa';
              Form1.btnLuz.TintColor := TAlphaColors.Green;
            end;
        2: if value.ToInteger()=0 then
            begin
              Form1.btnComputador.Text:='Desligado';
              Form1.btnComputador.TintColor := TAlphaColors.Red;
             end
          else
            begin;
              Form1.btnComputador.Text:='Ligado';
              Form1.btnComputador.TintColor := TAlphaColors.Green;
            end;
        3: if value.ToInteger()=1 then
            begin
              Form1.btnTelevisao.Text:='Desligada';
              Form1.btnTelevisao.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnTelevisao.Text:='Ligada';
              Form1.btnTelevisao.TintColor := TAlphaColors.Green;
            end;
        4: if value.ToInteger()=0 then
            begin
              Form1.btnAcessAdriana.Text:='Negar';
              Form1.btnAcessAdriana.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnAcessAdriana.Text:='Permitir';
              Form1.btnAcessAdriana.TintColor := TAlphaColors.Green;
            end;
        5: if value.ToInteger()=0 then
            begin
              Form1.btnAcessRodrigo.Text:='Negar';
              Form1.btnAcessRodrigo.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnAcessRodrigo.Text:='Permitir';
              Form1.btnAcessRodrigo.TintColor := TAlphaColors.Green;
            end;
        6:  Form1.pbLuminosidade.Value := value.ToInteger();
        7: if value.ToInteger()=0 then
            begin
              Form1.btnEstadoPorta.Text:='Aberta';
              Form1.btnEstadoPorta.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnEstadoPorta.Text:='Fechada';
              Form1.btnEstadoPorta.TintColor := TAlphaColors.Green;
            end;
        8: if value.ToInteger()=0 then
            begin
              Form1.btnEstadoJanela.Text:='Aberta';
              Form1.btnEstadoJanela.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnEstadoJanela.Text:='Fechada';
              Form1.btnEstadoJanela.TintColor := TAlphaColors.Green;
            end;
        9: if value.ToInteger()=0 then
            begin
              Form1.emergency:=false;
            end
          else
            begin
              Form1.emergency:=true;
            end;
        10: Form1.editAdriana.Text:=value;
        11: Form1.editRodrigo.Text:=value;
        12: Form1.editRoot.Text:=value;
        13: if value.ToInteger()=0 then
            begin
              Form1.btnAutoLuz.Text:='Não';
              Form1.btnAutoLuz.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnAutoLuz.Text:='Sim';
              Form1.btnAutoLuz.TintColor := TAlphaColors.Green;
            end;
        14: begin
            temp:='';
              for k := 1 to value.Length do
              begin
                if value[k]=':' then
                begin
                  temp.Insert(temp.Length+1,value[k-2]+value[k-1]);
                  Form1.editLampHora.Text:=temp;
                  temp:='';
                  temp.Insert(temp.Length+1,value[k+1]+value[k+2]);
                  Form1.editLampMinuto.Text:=temp;
                end;
              end;
            end;
        15: if value.ToInteger()=0 then
            begin
              Form1.btnAutoPc.Text:='Não';
              Form1.btnAutoPc.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnAutoPc.Text:='Sim';
              Form1.btnAutoPc.TintColor := TAlphaColors.Green;
            end;
        16: begin
             temp:='';
              for k := 1 to value.Length do
              begin
                if value[k]=':' then
                begin
                  temp.Insert(temp.Length+1,value[k-2]+value[k-1]);
                  Form1.editPCHora1.Text:=temp;
                  temp:='';
                  temp.Insert(temp.Length+1,value[k+1]+value[k+2]);
                  Form1.editPCMinuto1.Text:=temp;
                  break;
                end;
              end;

              temp:='';
              for k:=k+1 to value.Length do
              begin
                if value[k]=':' then
                begin
                  temp.Insert(temp.Length+1,value[k-2]+value[k-1]);
                  Form1.editPCHora2.Text:=temp;
                  temp:='';
                  temp.Insert(temp.Length+1,value[k+1]+value[k+2]);
                  Form1.editPCMinuto2.Text:=temp;
                end;
                break;
              end;
            end;
        17: if value.ToInteger()=0 then
            begin
              Form1.btnAutoTrancar.Text:='Não';
              Form1.btnAutoTrancar.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnAutoTrancar.Text:='Sim';
              Form1.btnAutoTrancar.TintColor := TAlphaColors.Green;
            end;
        18: if value.ToInteger()=0 then
            begin
              Form1.btnFiltro.Text:='Desligado';
              Form1.btnFiltro.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnFiltro.Text:='Ligado';
              Form1.btnFiltro.TintColor := TAlphaColors.Green;
            end;
        19: Form1.editTemperatura.Text:=value.ToInteger.ToString;
        20: if value.ToInteger()=0 then
            begin
              Form1.btnAcessSueli.Text:='Negar';
              Form1.btnAcessSueli.TintColor := TAlphaColors.Red;
            end
          else
            begin
              Form1.btnAcessSueli.Text:='Permitir';
              Form1.btnAcessSueli.TintColor := TAlphaColors.Green;
            end;
        21:Form1.editLigarLamp.Text:=value;
        else
        if value.ToInteger()=0 then
          begin
            Form1.btnPorta.Text:='Destrancada';
            Form1.btnPorta.TintColor := TAlphaColors.Red;
          end
        else
          begin
            Form1.btnPorta.Text:='Trancada';
            Form1.btnPorta.TintColor := TAlphaColors.Green;
          end;
      end;
    end;


end;

end.
