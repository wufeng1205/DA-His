object OperationTreeView: TOperationTreeView
  Left = 608
  Top = 86
  Align = alClient
  BorderStyle = bsNone
  Caption = #25805#20316#30446#24405
  ClientHeight = 517
  ClientWidth = 217
  Color = clCaptionText
  TransparentColor = True
  TransparentColorValue = clFuchsia
  ParentFont = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object OperationTree: TTreeView
    Left = 0
    Top = 0
    Width = 217
    Height = 517
    Align = alClient
    BevelInner = bvNone
    BorderStyle = bsNone
    HideSelection = False
    Indent = 15
    ReadOnly = True
    RightClickSelect = True
    RowSelect = True
    ShowRoot = False
    TabOrder = 0
    OnChange = OperationTreeChange
    OnContextPopup = OperationTreeContextPopup
    OnCustomDrawItem = OperationTreeCustomDrawItem
    OnDblClick = OperationTreeDblClick
    OnKeyPress = OperationTreeKeyPress
  end
end
