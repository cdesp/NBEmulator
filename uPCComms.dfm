object dmCommd: TdmCommd
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 320
  Width = 306
  object PCCom: TApdWinsockPort
    WsLocalAddresses.Strings = (
      '192.168.1.72')
    WsLocalAddressIndex = 0
    WsPort = 'telnet'
    WsSocksServerInfo.Port = 0
    WsTelnet = False
    AutoOpen = False
    Baud = 9600
    BufferFull = 3072
    BufferResume = 1024
    ComNumber = 1
    HWFlowOptions = [hwfUseDTR, hwfRequireDSR]
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
    RTS = False
    UseEventWord = False
    Left = 48
    Top = 40
  end
end
