unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, ComCtrls, Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    Label1: TLabel;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Timer3: TTimer;
    Image3: TImage;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    Timer8: TTimer;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);

    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  direc : Integer;
  Vidas : Integer;
  Vidasp : Integer;
  hor : Integer;
  ver : Integer;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   Image1.top := Image1.top + direc;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If key = 40 Then
                   Begin
                   direc := 4;
                   If Image1.top < 10 Then
                    Timer1.Enabled := True
                   Else
                       If Image1.Top < 293 Then
                    Timer1.Enabled := True
                       Else
                    Timer1.Enabled := False
                    End
   Else
   If key = 38 Then
                   Begin
                   direc := -4;
                   If Image1.top > 5 Then
                    Timer1.Enabled := True
                   Else
                       If Image1.Top > 293 Then
                    Timer1.Enabled := True
                       Else
                    Timer1.Enabled := False
                    End
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If (key = 38) or (key = 40) Then Timer1.Enabled := False;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
   ProgressBar1.Position := ProgressBar1.Position + 1;
end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin

   If Image3.Top > 320 Then Timer4.Enabled := True
   Else If Image3.Top = 320 Then Timer4.Enabled := True
        Else If timer4.Enabled = True Then Begin
                                           Timer4.Enabled := False;
                                           Image3.Top := Image3.Top + (ver);
                                           End
             Else If timer4.Enabled = False Then Image3.Top := Image3.Top + (ver)

end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  If Image3.Top < 5 Then Timer6.Enabled := True
   Else If Image3.Top = 5 Then Timer6.Enabled := True
        Else If timer6.Enabled = True Then Begin
                                            Timer6.Enabled := False;
                                            Image3.Top := Image3.Top - (ver)
                                             End
             Else If timer6.Enabled = False Then Image3.Top := Image3.Top - (ver)
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  If Image3.Top > (Image2.Top + 22) Then Image2.Top := Image2.Top + 5
  Else If Image3.Top < (Image2.Top + 32) Then Image2.Top := Image2.Top - 5
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin

   If Image3.Left < (Image1.Left + 8) Then
                                                     If (Image3.Top + 10) > Image1.Top Then
                                                                                    If (Image3.Top + 10) < (Image1.Top + 8) Then Timer7.Enabled := True
                                                                                    Else Timer7.Enabled := False
                                                     Else Timer7.Enabled := False
   Else Begin
          Timer7.Enabled := False;
          Image3.Left := Image3.Left - (Hor)
        End;



   //If Image3.Left > 20 Then Image3.Left := Image3.Left - 6
        //Else If Image3.Left = 20 Then Image3.Left := Image3.Left - 6
             //Else Timer7.Enabled := True
                                      
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
     If (Image3.Left + 19) > Image2.Left Then
                                    If (Image3.Top + 10) > Image2.Top Then
                                                                       If (Image3.Top + 10) < (Image2.Top + 8) Then
                                                                                                                             Timer5.Enabled := True
                                                                       Else Timer5.Enabled := False
                                    Else Timer5.Enabled := False
     Else Begin
          Timer5.Enabled := False;
          Image3.Left := Image3.Left + (Hor)
        End;





 {  If Image3.Left > 390 Then Timer5.Enabled := True
   Else If Image3.Left = 390 Then Timer5.Enabled := True
        Else Begin
               Timer5.Enabled := False;
               Image3.Left := Image3.Left + (hor);
             End

  }


end;

procedure TForm1.Timer8Timer(Sender: TObject);
begin
   If Image3.Left < 7 Then Begin
                             Timer4.Enabled := False;
                             Timer5.Enabled := False;
                             Timer6.Enabled := False;
                             Timer7.Enabled := False
                             End;
   If Image3.Left > 399 Then Begin
                             Timer4.Enabled := False;
                             Timer5.Enabled := False;
                             Timer6.Enabled := False;
                             Timer7.Enabled := False
                             End;
   If ProgressBar1.Position = 10 Then begin
                                         Timer5.Interval := 25;
                                         Timer7.Interval := 25
                                       End;
   If ProgressBar1.Position = 60 Then begin
                                         Timer5.Interval := 20;
                                         Timer7.Interval := 20
                                       End;
   If ProgressBar1.Position = 110 Then begin
                                         Timer5.Interval := 15;
                                         Timer7.Interval := 15
                                       End;
   If ProgressBar1.Position = 160 Then begin
                                         Timer5.Interval := 10;
                                         Timer7.Interval := 10
                                       End;
   If ProgressBar1.Position = 200 Then begin
                                         Timer5.Interval := 5;
                                         Timer7.Interval := 5
                                       End;
   If Vidas = 3 Then SpeedButton2.Enabled := True;
   If Vidas = 2 Then SpeedButton2.Enabled := True;
   If Vidas = 1 Then SpeedButton2.Enabled := True;
   If Vidas = 0 Then SpeedButton2.Enabled := False;
   If Vidas > 1 Then If Vidasp = 3 Then SpeedButton2.Enabled := True;
   If Vidas > 1 Then If Vidasp = 2 Then SpeedButton2.Enabled := True;
   If Vidas > 1 Then If Vidasp = 1 Then SpeedButton2.Enabled := True;
   If Vidas > 1 Then If Vidasp = 0 Then SpeedButton2.Enabled := False;

end;



procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
   ProgressBar1.Position := 1;
   Image3.Top := 152;
   Image3.Left := 292;
   Timer2.Enabled := True;
   Timer4.Enabled := True;
   Timer5.Enabled := True;
   Timer8.Enabled := True;
   Timer3.Enabled := True;
   ver := 6;
   hor := 3;
   If Image3.Left < 100 Then Vidas := Vidas - 1
   Else Vidasp := Vidasp - 1;

   Label3.Caption := IntToStr(Vidas);
   Label5.Caption := IntToStr(Vidasp)
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
   ProgressBar1.Position := 1;
   Vidas := 3;
   Vidasp := 3;
   Image3.Top := 152;
   Image3.Left := 292;
   Timer2.Enabled := True;
   Timer4.Enabled := True;
   Timer5.Enabled := True;
   Timer8.Enabled := True;
   Timer3.Enabled := True;
   ver := 6;
   hor := 3;
   Label3.Caption := IntToStr(Vidas);
   Label5.Caption := IntToStr(Vidasp)
end;

end.
