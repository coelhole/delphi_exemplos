unit ubase64tomemstream;

interface

uses
  Classes, SysUtils, IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME;

function base64toMemoryStream(const base64string:string; out error:string):TMemoryStream;

implementation

function base64toMemoryStream(const base64string:string; out error:string):TMemoryStream;
var
  Decoder:TIdDecoderMIME;
begin
  try
    Decoder := TIdDecoderMIME.Create(nil);
    try
      result:=TMemoryStream.Create;
      Decoder.DecodeStream(base64string,result);
    finally
      Decoder.Free;
    end;
  except
    on E:Exception do
      error:=E.ClassName+#13#10+E.Message;
  end;
end;

end.
 