unit ufiletobase64string;

interface

uses
  Classes, IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME;

function tobase64(const filename:string):string;

implementation

function tobase64(const filename:string):string;
var
  Base64Encoder:TIdEncoderMIME;
  MemStream:TMemoryStream;
begin
  MemStream:=TMemoryStream.Create;
  try
    Base64Encoder:=TIdEncoderMIME.Create(nil);
    try
      MemStream.LoadFromFile(filename);
      result:=Base64Encoder.Encode(MemStream);
    finally
      Base64Encoder.Free;
    end;
  finally
    MemStream.Free;
  end;
end;

end.
 