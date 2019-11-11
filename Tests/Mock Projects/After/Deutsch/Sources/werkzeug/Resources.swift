import Foundation

internal enum Resources {}
internal typealias Ressourcen = Resources

extension Resources {
  static let deutsch = String(
    data: Data(
      base64Encoded:
        "ewogICJhcmd1bWVudHMiIDogWwoKICBdLAogICJkZXNjcmlwdGlvbiIgOiAidHV0IGV0d2FzLiIsCiAgImRpc2N1c3Npb24iIDogIlBhcmFncmFmIGVpbnMuXG5aZWlsZSB6d2VpLlxuXG5QYXJhZ3JhZiB6d2VpLiIsCiAgImlkZW50aWZpZXIiIDogImRv4oCQc29tZXRoaW5nIiwKICAibmFtZSIgOiAiZXR3YXPigJB0dW4iLAogICJvcHRpb25zIiA6IFsKICAgIHsKICAgICAgImRlc2NyaXB0aW9uIiA6ICJCbGVuZGV0IEZhcmJlbiBhdXMgZGVyIEF1c2dhYmUgYXVzLiIsCiAgICAgICJpZGVudGlmaWVyIiA6ICJub+KAkGNvbG91ciIsCiAgICAgICJuYW1lIiA6ICJvaG5l4oCQZmFyYmVuIiwKICAgICAgInR5cGUiIDogewogICAgICAgICJkZXNjcmlwdGlvbiIgOiAiIiwKICAgICAgICAiaWRlbnRpZmllciIgOiAiQm9vbGVhbiIsCiAgICAgICAgIm5hbWUiIDogIkJvb2xlYW4iCiAgICAgIH0KICAgIH0sCiAgICB7CiAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBTcHJhY2hlIGFuc3RlbGxlIGRlcmVuIHp1IHZlcndlbmRlbiwgZGllIGluIGRlbiBFaW5zdGVsbHVuZ2VuIGFuZ2VnZWJlbiBpc3QuIiwKICAgICAgImlkZW50aWZpZXIiIDogImxhbmd1YWdlIiwKICAgICAgIm5hbWUiIDogInNwcmFjaGUiLAogICAgICAidHlwZSIgOiB7CiAgICAgICAgImRlc2NyaXB0aW9uIiA6ICJFaW5lIExpc3RlIElFVEYgU3ByYWNoYmV6ZWljaG51bmdlbiBvZGVyIFNER0Nvcm5lcnN0b25l4oCQU3ByYWNoc3ltYm9sZS4gRG9wcGVscHVua3RlIGdlYmVuIGRpZSBFcnNhdHpyZWloZW5mb2xnZSBhbi4gS29tbWF0YSBnZWJlbiBhbiwgZGFzcyBtZWhyZXJlIFNwcmFjaGVuIHZlcndlbmRldCB3ZXJkZW4gc29sbGVuLiBCZWlzcGllbGU6IOKAnmRlLURF4oCcIG9kZXIg4oCe8J+HqfCfh6pEReKAnCDihpIgRGV1dHNjaCBhdXMgRGV1dHNjaGxhbmQsIOKAnGJhcixkZTtmcuKAnSDihpIgYmVpZGUgQmFpcmlzY2ggdW5kIERldXRzY2gsIHNvbnN0IEZyYW56b8yIc2lzY2giLAogICAgICAgICJpZGVudGlmaWVyIiA6ICJsYW5ndWFnZSBwcmVmZXJlbmNlIiwKICAgICAgICAibmFtZSIgOiAiU3ByYWNoZWluc3RlbGx1bmciCiAgICAgIH0KICAgIH0KICBdLAogICJzdWJjb21tYW5kcyIgOiBbCiAgICB7CiAgICAgICJhcmd1bWVudHMiIDogWwogICAgICAgIHsKICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBiZWxpZWJpZ2UgWmVpY2hlbmtldHRlLiIsCiAgICAgICAgICAiaWRlbnRpZmllciIgOiAic3RyaW5nIiwKICAgICAgICAgICJuYW1lIiA6ICJaZWljaGVua2V0dGUiCiAgICAgICAgfQogICAgICBdLAogICAgICAiZGVzY3JpcHRpb24iIDogImlzdCBlaW4gQmVpc3BpZWxzdW50ZXJiZWZlaGwuIiwKICAgICAgImRpc2N1c3Npb24iIDogbnVsbCwKICAgICAgImlkZW50aWZpZXIiIDogInN1YmNvbW1hbmQiLAogICAgICAibmFtZSIgOiAidW50ZXJiZWZlaGwiLAogICAgICAib3B0aW9ucyIgOiBbCiAgICAgICAgewogICAgICAgICAgImRlc2NyaXB0aW9uIiA6ICJFaW5lIEFsdGVybmF0aXZlLiIsCiAgICAgICAgICAiaWRlbnRpZmllciIgOiAiYWx0ZXJuYXRpdmUiLAogICAgICAgICAgIm5hbWUiIDogImFsdGVybmF0aXZlIiwKICAgICAgICAgICJ0eXBlIiA6IHsKICAgICAgICAgICAgImRlc2NyaXB0aW9uIiA6ICJFaW5lIGJlbGllYmlnZSBaZWljaGVua2V0dGUuIiwKICAgICAgICAgICAgImlkZW50aWZpZXIiIDogInN0cmluZyIsCiAgICAgICAgICAgICJuYW1lIiA6ICJaZWljaGVua2V0dGUiCiAgICAgICAgICB9CiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkJsZW5kZXQgRmFyYmVuIGF1cyBkZXIgQXVzZ2FiZSBhdXMuIiwKICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJub+KAkGNvbG91ciIsCiAgICAgICAgICAibmFtZSIgOiAib2huZeKAkGZhcmJlbiIsCiAgICAgICAgICAidHlwZSIgOiB7CiAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiIiwKICAgICAgICAgICAgImlkZW50aWZpZXIiIDogIkJvb2xlYW4iLAogICAgICAgICAgICAibmFtZSIgOiAiQm9vbGVhbiIKICAgICAgICAgIH0KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBTcHJhY2hlIGFuc3RlbGxlIGRlcmVuIHp1IHZlcndlbmRlbiwgZGllIGluIGRlbiBFaW5zdGVsbHVuZ2VuIGFuZ2VnZWJlbiBpc3QuIiwKICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJsYW5ndWFnZSIsCiAgICAgICAgICAibmFtZSIgOiAic3ByYWNoZSIsCiAgICAgICAgICAidHlwZSIgOiB7CiAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBMaXN0ZSBJRVRGIFNwcmFjaGJlemVpY2hudW5nZW4gb2RlciBTREdDb3JuZXJzdG9uZeKAkFNwcmFjaHN5bWJvbGUuIERvcHBlbHB1bmt0ZSBnZWJlbiBkaWUgRXJzYXR6cmVpaGVuZm9sZ2UgYW4uIEtvbW1hdGEgZ2ViZW4gYW4sIGRhc3MgbWVocmVyZSBTcHJhY2hlbiB2ZXJ3ZW5kZXQgd2VyZGVuIHNvbGxlbi4gQmVpc3BpZWxlOiDigJ5kZS1EReKAnCBvZGVyIOKAnvCfh6nwn4eqREXigJwg4oaSIERldXRzY2ggYXVzIERldXRzY2hsYW5kLCDigJxiYXIsZGU7ZnLigJ0g4oaSIGJlaWRlIEJhaXJpc2NoIHVuZCBEZXV0c2NoLCBzb25zdCBGcmFuem/MiHNpc2NoIiwKICAgICAgICAgICAgImlkZW50aWZpZXIiIDogImxhbmd1YWdlIHByZWZlcmVuY2UiLAogICAgICAgICAgICAibmFtZSIgOiAiU3ByYWNoZWluc3RlbGx1bmciCiAgICAgICAgICB9CiAgICAgICAgfQogICAgICBdLAogICAgICAic3ViY29tbWFuZHMiIDogWwogICAgICAgIHsKICAgICAgICAgICJhcmd1bWVudHMiIDogWwoKICAgICAgICAgIF0sCiAgICAgICAgICAiZGVzY3JpcHRpb24iIDogInplaWd0IEdlYnJhdWNoc2luZm9ybWF0aW9uZW4gYW4uIiwKICAgICAgICAgICJkaXNjdXNzaW9uIiA6IG51bGwsCiAgICAgICAgICAiaWRlbnRpZmllciIgOiAi16LXlteo15QiLAogICAgICAgICAgIm5hbWUiIDogImhpbGZlIiwKICAgICAgICAgICJvcHRpb25zIiA6IFsKICAgICAgICAgICAgewogICAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiQmxlbmRldCBGYXJiZW4gYXVzIGRlciBBdXNnYWJlIGF1cy4iLAogICAgICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJub+KAkGNvbG91ciIsCiAgICAgICAgICAgICAgIm5hbWUiIDogIm9obmXigJBmYXJiZW4iLAogICAgICAgICAgICAgICJ0eXBlIiA6IHsKICAgICAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiIiwKICAgICAgICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJCb29sZWFuIiwKICAgICAgICAgICAgICAgICJuYW1lIiA6ICJCb29sZWFuIgogICAgICAgICAgICAgIH0KICAgICAgICAgICAgfSwKICAgICAgICAgICAgewogICAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBTcHJhY2hlIGFuc3RlbGxlIGRlcmVuIHp1IHZlcndlbmRlbiwgZGllIGluIGRlbiBFaW5zdGVsbHVuZ2VuIGFuZ2VnZWJlbiBpc3QuIiwKICAgICAgICAgICAgICAiaWRlbnRpZmllciIgOiAibGFuZ3VhZ2UiLAogICAgICAgICAgICAgICJuYW1lIiA6ICJzcHJhY2hlIiwKICAgICAgICAgICAgICAidHlwZSIgOiB7CiAgICAgICAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkVpbmUgTGlzdGUgSUVURiBTcHJhY2hiZXplaWNobnVuZ2VuIG9kZXIgU0RHQ29ybmVyc3RvbmXigJBTcHJhY2hzeW1ib2xlLiBEb3BwZWxwdW5rdGUgZ2ViZW4gZGllIEVyc2F0enJlaWhlbmZvbGdlIGFuLiBLb21tYXRhIGdlYmVuIGFuLCBkYXNzIG1laHJlcmUgU3ByYWNoZW4gdmVyd2VuZGV0IHdlcmRlbiBzb2xsZW4uIEJlaXNwaWVsZTog4oCeZGUtREXigJwgb2RlciDigJ7wn4ep8J+HqkRF4oCcIOKGkiBEZXV0c2NoIGF1cyBEZXV0c2NobGFuZCwg4oCcYmFyLGRlO2Zy4oCdIOKGkiBiZWlkZSBCYWlyaXNjaCB1bmQgRGV1dHNjaCwgc29uc3QgRnJhbnpvzIhzaXNjaCIsCiAgICAgICAgICAgICAgICAiaWRlbnRpZmllciIgOiAibGFuZ3VhZ2UgcHJlZmVyZW5jZSIsCiAgICAgICAgICAgICAgICAibmFtZSIgOiAiU3ByYWNoZWluc3RlbGx1bmciCiAgICAgICAgICAgICAgfQogICAgICAgICAgICB9CiAgICAgICAgICBdLAogICAgICAgICAgInN1YmNvbW1hbmRzIiA6IFsKCiAgICAgICAgICBdCiAgICAgICAgfQogICAgICBdCiAgICB9LAogICAgewogICAgICAiYXJndW1lbnRzIiA6IFsKCiAgICAgIF0sCiAgICAgICJkZXNjcmlwdGlvbiIgOiAiemVpZ3QgR2VicmF1Y2hzaW5mb3JtYXRpb25lbiBhbi4iLAogICAgICAiZGlzY3Vzc2lvbiIgOiBudWxsLAogICAgICAiaWRlbnRpZmllciIgOiAi16LXlteo15QiLAogICAgICAibmFtZSIgOiAiaGlsZmUiLAogICAgICAib3B0aW9ucyIgOiBbCiAgICAgICAgewogICAgICAgICAgImRlc2NyaXB0aW9uIiA6ICJCbGVuZGV0IEZhcmJlbiBhdXMgZGVyIEF1c2dhYmUgYXVzLiIsCiAgICAgICAgICAiaWRlbnRpZmllciIgOiAibm/igJBjb2xvdXIiLAogICAgICAgICAgIm5hbWUiIDogIm9obmXigJBmYXJiZW4iLAogICAgICAgICAgInR5cGUiIDogewogICAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIiIsCiAgICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJCb29sZWFuIiwKICAgICAgICAgICAgIm5hbWUiIDogIkJvb2xlYW4iCiAgICAgICAgICB9CiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkVpbmUgU3ByYWNoZSBhbnN0ZWxsZSBkZXJlbiB6dSB2ZXJ3ZW5kZW4sIGRpZSBpbiBkZW4gRWluc3RlbGx1bmdlbiBhbmdlZ2ViZW4gaXN0LiIsCiAgICAgICAgICAiaWRlbnRpZmllciIgOiAibGFuZ3VhZ2UiLAogICAgICAgICAgIm5hbWUiIDogInNwcmFjaGUiLAogICAgICAgICAgInR5cGUiIDogewogICAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkVpbmUgTGlzdGUgSUVURiBTcHJhY2hiZXplaWNobnVuZ2VuIG9kZXIgU0RHQ29ybmVyc3RvbmXigJBTcHJhY2hzeW1ib2xlLiBEb3BwZWxwdW5rdGUgZ2ViZW4gZGllIEVyc2F0enJlaWhlbmZvbGdlIGFuLiBLb21tYXRhIGdlYmVuIGFuLCBkYXNzIG1laHJlcmUgU3ByYWNoZW4gdmVyd2VuZGV0IHdlcmRlbiBzb2xsZW4uIEJlaXNwaWVsZTog4oCeZGUtREXigJwgb2RlciDigJ7wn4ep8J+HqkRF4oCcIOKGkiBEZXV0c2NoIGF1cyBEZXV0c2NobGFuZCwg4oCcYmFyLGRlO2Zy4oCdIOKGkiBiZWlkZSBCYWlyaXNjaCB1bmQgRGV1dHNjaCwgc29uc3QgRnJhbnpvzIhzaXNjaCIsCiAgICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJsYW5ndWFnZSBwcmVmZXJlbmNlIiwKICAgICAgICAgICAgIm5hbWUiIDogIlNwcmFjaGVpbnN0ZWxsdW5nIgogICAgICAgICAgfQogICAgICAgIH0KICAgICAgXSwKICAgICAgInN1YmNvbW1hbmRzIiA6IFsKCiAgICAgIF0KICAgIH0sCiAgICB7CiAgICAgICJhcmd1bWVudHMiIDogWwoKICAgICAgXSwKICAgICAgImRlc2NyaXB0aW9uIiA6ICJ6ZWlndCBkaWUgdmVyd2VuZGV0ZSBWZXJzaW9uIGFuLiIsCiAgICAgICJkaXNjdXNzaW9uIiA6IG51bGwsCiAgICAgICJpZGVudGlmaWVyIiA6ICJ2ZXJzaW9uIiwKICAgICAgIm5hbWUiIDogInZlcnNpb24iLAogICAgICAib3B0aW9ucyIgOiBbCiAgICAgICAgewogICAgICAgICAgImRlc2NyaXB0aW9uIiA6ICJCbGVuZGV0IEZhcmJlbiBhdXMgZGVyIEF1c2dhYmUgYXVzLiIsCiAgICAgICAgICAiaWRlbnRpZmllciIgOiAibm/igJBjb2xvdXIiLAogICAgICAgICAgIm5hbWUiIDogIm9obmXigJBmYXJiZW4iLAogICAgICAgICAgInR5cGUiIDogewogICAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIiIsCiAgICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJCb29sZWFuIiwKICAgICAgICAgICAgIm5hbWUiIDogIkJvb2xlYW4iCiAgICAgICAgICB9CiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkVpbmUgU3ByYWNoZSBhbnN0ZWxsZSBkZXJlbiB6dSB2ZXJ3ZW5kZW4sIGRpZSBpbiBkZW4gRWluc3RlbGx1bmdlbiBhbmdlZ2ViZW4gaXN0LiIsCiAgICAgICAgICAiaWRlbnRpZmllciIgOiAibGFuZ3VhZ2UiLAogICAgICAgICAgIm5hbWUiIDogInNwcmFjaGUiLAogICAgICAgICAgInR5cGUiIDogewogICAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkVpbmUgTGlzdGUgSUVURiBTcHJhY2hiZXplaWNobnVuZ2VuIG9kZXIgU0RHQ29ybmVyc3RvbmXigJBTcHJhY2hzeW1ib2xlLiBEb3BwZWxwdW5rdGUgZ2ViZW4gZGllIEVyc2F0enJlaWhlbmZvbGdlIGFuLiBLb21tYXRhIGdlYmVuIGFuLCBkYXNzIG1laHJlcmUgU3ByYWNoZW4gdmVyd2VuZGV0IHdlcmRlbiBzb2xsZW4uIEJlaXNwaWVsZTog4oCeZGUtREXigJwgb2RlciDigJ7wn4ep8J+HqkRF4oCcIOKGkiBEZXV0c2NoIGF1cyBEZXV0c2NobGFuZCwg4oCcYmFyLGRlO2Zy4oCdIOKGkiBiZWlkZSBCYWlyaXNjaCB1bmQgRGV1dHNjaCwgc29uc3QgRnJhbnpvzIhzaXNjaCIsCiAgICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJsYW5ndWFnZSBwcmVmZXJlbmNlIiwKICAgICAgICAgICAgIm5hbWUiIDogIlNwcmFjaGVpbnN0ZWxsdW5nIgogICAgICAgICAgfQogICAgICAgIH0KICAgICAgXSwKICAgICAgInN1YmNvbW1hbmRzIiA6IFsKICAgICAgICB7CiAgICAgICAgICAiYXJndW1lbnRzIiA6IFsKCiAgICAgICAgICBdLAogICAgICAgICAgImRlc2NyaXB0aW9uIiA6ICJ6ZWlndCBHZWJyYXVjaHNpbmZvcm1hdGlvbmVuIGFuLiIsCiAgICAgICAgICAiZGlzY3Vzc2lvbiIgOiBudWxsLAogICAgICAgICAgImlkZW50aWZpZXIiIDogItei15bXqNeUIiwKICAgICAgICAgICJuYW1lIiA6ICJoaWxmZSIsCiAgICAgICAgICAib3B0aW9ucyIgOiBbCiAgICAgICAgICAgIHsKICAgICAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkJsZW5kZXQgRmFyYmVuIGF1cyBkZXIgQXVzZ2FiZSBhdXMuIiwKICAgICAgICAgICAgICAiaWRlbnRpZmllciIgOiAibm/igJBjb2xvdXIiLAogICAgICAgICAgICAgICJuYW1lIiA6ICJvaG5l4oCQZmFyYmVuIiwKICAgICAgICAgICAgICAidHlwZSIgOiB7CiAgICAgICAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIiIsCiAgICAgICAgICAgICAgICAiaWRlbnRpZmllciIgOiAiQm9vbGVhbiIsCiAgICAgICAgICAgICAgICAibmFtZSIgOiAiQm9vbGVhbiIKICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH0sCiAgICAgICAgICAgIHsKICAgICAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkVpbmUgU3ByYWNoZSBhbnN0ZWxsZSBkZXJlbiB6dSB2ZXJ3ZW5kZW4sIGRpZSBpbiBkZW4gRWluc3RlbGx1bmdlbiBhbmdlZ2ViZW4gaXN0LiIsCiAgICAgICAgICAgICAgImlkZW50aWZpZXIiIDogImxhbmd1YWdlIiwKICAgICAgICAgICAgICAibmFtZSIgOiAic3ByYWNoZSIsCiAgICAgICAgICAgICAgInR5cGUiIDogewogICAgICAgICAgICAgICAgImRlc2NyaXB0aW9uIiA6ICJFaW5lIExpc3RlIElFVEYgU3ByYWNoYmV6ZWljaG51bmdlbiBvZGVyIFNER0Nvcm5lcnN0b25l4oCQU3ByYWNoc3ltYm9sZS4gRG9wcGVscHVua3RlIGdlYmVuIGRpZSBFcnNhdHpyZWloZW5mb2xnZSBhbi4gS29tbWF0YSBnZWJlbiBhbiwgZGFzcyBtZWhyZXJlIFNwcmFjaGVuIHZlcndlbmRldCB3ZXJkZW4gc29sbGVuLiBCZWlzcGllbGU6IOKAnmRlLURF4oCcIG9kZXIg4oCe8J+HqfCfh6pEReKAnCDihpIgRGV1dHNjaCBhdXMgRGV1dHNjaGxhbmQsIOKAnGJhcixkZTtmcuKAnSDihpIgYmVpZGUgQmFpcmlzY2ggdW5kIERldXRzY2gsIHNvbnN0IEZyYW56b8yIc2lzY2giLAogICAgICAgICAgICAgICAgImlkZW50aWZpZXIiIDogImxhbmd1YWdlIHByZWZlcmVuY2UiLAogICAgICAgICAgICAgICAgIm5hbWUiIDogIlNwcmFjaGVpbnN0ZWxsdW5nIgogICAgICAgICAgICAgIH0KICAgICAgICAgICAgfQogICAgICAgICAgXSwKICAgICAgICAgICJzdWJjb21tYW5kcyIgOiBbCgogICAgICAgICAgXQogICAgICAgIH0KICAgICAgXQogICAgfSwKICAgIHsKICAgICAgImFyZ3VtZW50cyIgOiBbCiAgICAgICAgewogICAgICAgICAgImRlc2NyaXB0aW9uIiA6ICJFaW5lIExpc3RlIElFVEYgU3ByYWNoYmV6ZWljaG51bmdlbiBvZGVyIFNER0Nvcm5lcnN0b25l4oCQU3ByYWNoc3ltYm9sZS4gRG9wcGVscHVua3RlIGdlYmVuIGRpZSBFcnNhdHpyZWloZW5mb2xnZSBhbi4gS29tbWF0YSBnZWJlbiBhbiwgZGFzcyBtZWhyZXJlIFNwcmFjaGVuIHZlcndlbmRldCB3ZXJkZW4gc29sbGVuLiBCZWlzcGllbGU6IOKAnmRlLURF4oCcIG9kZXIg4oCe8J+HqfCfh6pEReKAnCDihpIgRGV1dHNjaCBhdXMgRGV1dHNjaGxhbmQsIOKAnGJhcixkZTtmcuKAnSDihpIgYmVpZGUgQmFpcmlzY2ggdW5kIERldXRzY2gsIHNvbnN0IEZyYW56b8yIc2lzY2giLAogICAgICAgICAgImlkZW50aWZpZXIiIDogImxhbmd1YWdlIHByZWZlcmVuY2UiLAogICAgICAgICAgIm5hbWUiIDogIlNwcmFjaGVpbnN0ZWxsdW5nIgogICAgICAgIH0KICAgICAgXSwKICAgICAgImRlc2NyaXB0aW9uIiA6ICJzdGVsbHQgZGllIFNwcmFjaGVpbnN0ZWxsdW5nIGVpbi4gKERhcyBBcmd1bWVudCB3ZWdsYXNzZW4sIHVtIGFuIGRpZSBTeXN0ZW1laW5zdGVsbHVuZ2VuIHp1cnXMiGNrenVmYWxsZW4uKSIsCiAgICAgICJkaXNjdXNzaW9uIiA6IG51bGwsCiAgICAgICJpZGVudGlmaWVyIiA6ICJzZXTigJBsYW5ndWFnZSIsCiAgICAgICJuYW1lIiA6ICJzcHJhY2hl4oCQZWluc3RlbGxlbiIsCiAgICAgICJvcHRpb25zIiA6IFsKICAgICAgICB7CiAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkJsZW5kZXQgRmFyYmVuIGF1cyBkZXIgQXVzZ2FiZSBhdXMuIiwKICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJub+KAkGNvbG91ciIsCiAgICAgICAgICAibmFtZSIgOiAib2huZeKAkGZhcmJlbiIsCiAgICAgICAgICAidHlwZSIgOiB7CiAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiIiwKICAgICAgICAgICAgImlkZW50aWZpZXIiIDogIkJvb2xlYW4iLAogICAgICAgICAgICAibmFtZSIgOiAiQm9vbGVhbiIKICAgICAgICAgIH0KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBTcHJhY2hlIGFuc3RlbGxlIGRlcmVuIHp1IHZlcndlbmRlbiwgZGllIGluIGRlbiBFaW5zdGVsbHVuZ2VuIGFuZ2VnZWJlbiBpc3QuIiwKICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJsYW5ndWFnZSIsCiAgICAgICAgICAibmFtZSIgOiAic3ByYWNoZSIsCiAgICAgICAgICAidHlwZSIgOiB7CiAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBMaXN0ZSBJRVRGIFNwcmFjaGJlemVpY2hudW5nZW4gb2RlciBTREdDb3JuZXJzdG9uZeKAkFNwcmFjaHN5bWJvbGUuIERvcHBlbHB1bmt0ZSBnZWJlbiBkaWUgRXJzYXR6cmVpaGVuZm9sZ2UgYW4uIEtvbW1hdGEgZ2ViZW4gYW4sIGRhc3MgbWVocmVyZSBTcHJhY2hlbiB2ZXJ3ZW5kZXQgd2VyZGVuIHNvbGxlbi4gQmVpc3BpZWxlOiDigJ5kZS1EReKAnCBvZGVyIOKAnvCfh6nwn4eqREXigJwg4oaSIERldXRzY2ggYXVzIERldXRzY2hsYW5kLCDigJxiYXIsZGU7ZnLigJ0g4oaSIGJlaWRlIEJhaXJpc2NoIHVuZCBEZXV0c2NoLCBzb25zdCBGcmFuem/MiHNpc2NoIiwKICAgICAgICAgICAgImlkZW50aWZpZXIiIDogImxhbmd1YWdlIHByZWZlcmVuY2UiLAogICAgICAgICAgICAibmFtZSIgOiAiU3ByYWNoZWluc3RlbGx1bmciCiAgICAgICAgICB9CiAgICAgICAgfQogICAgICBdLAogICAgICAic3ViY29tbWFuZHMiIDogWwogICAgICAgIHsKICAgICAgICAgICJhcmd1bWVudHMiIDogWwoKICAgICAgICAgIF0sCiAgICAgICAgICAiZGVzY3JpcHRpb24iIDogInplaWd0IEdlYnJhdWNoc2luZm9ybWF0aW9uZW4gYW4uIiwKICAgICAgICAgICJkaXNjdXNzaW9uIiA6IG51bGwsCiAgICAgICAgICAiaWRlbnRpZmllciIgOiAi16LXlteo15QiLAogICAgICAgICAgIm5hbWUiIDogImhpbGZlIiwKICAgICAgICAgICJvcHRpb25zIiA6IFsKICAgICAgICAgICAgewogICAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiQmxlbmRldCBGYXJiZW4gYXVzIGRlciBBdXNnYWJlIGF1cy4iLAogICAgICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJub+KAkGNvbG91ciIsCiAgICAgICAgICAgICAgIm5hbWUiIDogIm9obmXigJBmYXJiZW4iLAogICAgICAgICAgICAgICJ0eXBlIiA6IHsKICAgICAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiIiwKICAgICAgICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJCb29sZWFuIiwKICAgICAgICAgICAgICAgICJuYW1lIiA6ICJCb29sZWFuIgogICAgICAgICAgICAgIH0KICAgICAgICAgICAgfSwKICAgICAgICAgICAgewogICAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBTcHJhY2hlIGFuc3RlbGxlIGRlcmVuIHp1IHZlcndlbmRlbiwgZGllIGluIGRlbiBFaW5zdGVsbHVuZ2VuIGFuZ2VnZWJlbiBpc3QuIiwKICAgICAgICAgICAgICAiaWRlbnRpZmllciIgOiAibGFuZ3VhZ2UiLAogICAgICAgICAgICAgICJuYW1lIiA6ICJzcHJhY2hlIiwKICAgICAgICAgICAgICAidHlwZSIgOiB7CiAgICAgICAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkVpbmUgTGlzdGUgSUVURiBTcHJhY2hiZXplaWNobnVuZ2VuIG9kZXIgU0RHQ29ybmVyc3RvbmXigJBTcHJhY2hzeW1ib2xlLiBEb3BwZWxwdW5rdGUgZ2ViZW4gZGllIEVyc2F0enJlaWhlbmZvbGdlIGFuLiBLb21tYXRhIGdlYmVuIGFuLCBkYXNzIG1laHJlcmUgU3ByYWNoZW4gdmVyd2VuZGV0IHdlcmRlbiBzb2xsZW4uIEJlaXNwaWVsZTog4oCeZGUtREXigJwgb2RlciDigJ7wn4ep8J+HqkRF4oCcIOKGkiBEZXV0c2NoIGF1cyBEZXV0c2NobGFuZCwg4oCcYmFyLGRlO2Zy4oCdIOKGkiBiZWlkZSBCYWlyaXNjaCB1bmQgRGV1dHNjaCwgc29uc3QgRnJhbnpvzIhzaXNjaCIsCiAgICAgICAgICAgICAgICAiaWRlbnRpZmllciIgOiAibGFuZ3VhZ2UgcHJlZmVyZW5jZSIsCiAgICAgICAgICAgICAgICAibmFtZSIgOiAiU3ByYWNoZWluc3RlbGx1bmciCiAgICAgICAgICAgICAgfQogICAgICAgICAgICB9CiAgICAgICAgICBdLAogICAgICAgICAgInN1YmNvbW1hbmRzIiA6IFsKCiAgICAgICAgICBdCiAgICAgICAgfQogICAgICBdCiAgICB9LAogICAgewogICAgICAiYXJndW1lbnRzIiA6IFsKCiAgICAgIF0sCiAgICAgICJkZXNjcmlwdGlvbiIgOiAiZW50ZmVybnQgendpc2NoZW5nZXNwZWljaGVydGUgRGF0ZW4uIiwKICAgICAgImRpc2N1c3Npb24iIDogbnVsbCwKICAgICAgImlkZW50aWZpZXIiIDogImVtcHR54oCQY2FjaGUiLAogICAgICAibmFtZSIgOiAiendpc2NoZW5zcGVpY2hlcuKAkGxlZXJlbiIsCiAgICAgICJvcHRpb25zIiA6IFsKICAgICAgICB7CiAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkJsZW5kZXQgRmFyYmVuIGF1cyBkZXIgQXVzZ2FiZSBhdXMuIiwKICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJub+KAkGNvbG91ciIsCiAgICAgICAgICAibmFtZSIgOiAib2huZeKAkGZhcmJlbiIsCiAgICAgICAgICAidHlwZSIgOiB7CiAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiIiwKICAgICAgICAgICAgImlkZW50aWZpZXIiIDogIkJvb2xlYW4iLAogICAgICAgICAgICAibmFtZSIgOiAiQm9vbGVhbiIKICAgICAgICAgIH0KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBTcHJhY2hlIGFuc3RlbGxlIGRlcmVuIHp1IHZlcndlbmRlbiwgZGllIGluIGRlbiBFaW5zdGVsbHVuZ2VuIGFuZ2VnZWJlbiBpc3QuIiwKICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJsYW5ndWFnZSIsCiAgICAgICAgICAibmFtZSIgOiAic3ByYWNoZSIsCiAgICAgICAgICAidHlwZSIgOiB7CiAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBMaXN0ZSBJRVRGIFNwcmFjaGJlemVpY2hudW5nZW4gb2RlciBTREdDb3JuZXJzdG9uZeKAkFNwcmFjaHN5bWJvbGUuIERvcHBlbHB1bmt0ZSBnZWJlbiBkaWUgRXJzYXR6cmVpaGVuZm9sZ2UgYW4uIEtvbW1hdGEgZ2ViZW4gYW4sIGRhc3MgbWVocmVyZSBTcHJhY2hlbiB2ZXJ3ZW5kZXQgd2VyZGVuIHNvbGxlbi4gQmVpc3BpZWxlOiDigJ5kZS1EReKAnCBvZGVyIOKAnvCfh6nwn4eqREXigJwg4oaSIERldXRzY2ggYXVzIERldXRzY2hsYW5kLCDigJxiYXIsZGU7ZnLigJ0g4oaSIGJlaWRlIEJhaXJpc2NoIHVuZCBEZXV0c2NoLCBzb25zdCBGcmFuem/MiHNpc2NoIiwKICAgICAgICAgICAgImlkZW50aWZpZXIiIDogImxhbmd1YWdlIHByZWZlcmVuY2UiLAogICAgICAgICAgICAibmFtZSIgOiAiU3ByYWNoZWluc3RlbGx1bmciCiAgICAgICAgICB9CiAgICAgICAgfQogICAgICBdLAogICAgICAic3ViY29tbWFuZHMiIDogWwogICAgICAgIHsKICAgICAgICAgICJhcmd1bWVudHMiIDogWwoKICAgICAgICAgIF0sCiAgICAgICAgICAiZGVzY3JpcHRpb24iIDogInplaWd0IEdlYnJhdWNoc2luZm9ybWF0aW9uZW4gYW4uIiwKICAgICAgICAgICJkaXNjdXNzaW9uIiA6IG51bGwsCiAgICAgICAgICAiaWRlbnRpZmllciIgOiAi16LXlteo15QiLAogICAgICAgICAgIm5hbWUiIDogImhpbGZlIiwKICAgICAgICAgICJvcHRpb25zIiA6IFsKICAgICAgICAgICAgewogICAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiQmxlbmRldCBGYXJiZW4gYXVzIGRlciBBdXNnYWJlIGF1cy4iLAogICAgICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJub+KAkGNvbG91ciIsCiAgICAgICAgICAgICAgIm5hbWUiIDogIm9obmXigJBmYXJiZW4iLAogICAgICAgICAgICAgICJ0eXBlIiA6IHsKICAgICAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiIiwKICAgICAgICAgICAgICAgICJpZGVudGlmaWVyIiA6ICJCb29sZWFuIiwKICAgICAgICAgICAgICAgICJuYW1lIiA6ICJCb29sZWFuIgogICAgICAgICAgICAgIH0KICAgICAgICAgICAgfSwKICAgICAgICAgICAgewogICAgICAgICAgICAgICJkZXNjcmlwdGlvbiIgOiAiRWluZSBTcHJhY2hlIGFuc3RlbGxlIGRlcmVuIHp1IHZlcndlbmRlbiwgZGllIGluIGRlbiBFaW5zdGVsbHVuZ2VuIGFuZ2VnZWJlbiBpc3QuIiwKICAgICAgICAgICAgICAiaWRlbnRpZmllciIgOiAibGFuZ3VhZ2UiLAogICAgICAgICAgICAgICJuYW1lIiA6ICJzcHJhY2hlIiwKICAgICAgICAgICAgICAidHlwZSIgOiB7CiAgICAgICAgICAgICAgICAiZGVzY3JpcHRpb24iIDogIkVpbmUgTGlzdGUgSUVURiBTcHJhY2hiZXplaWNobnVuZ2VuIG9kZXIgU0RHQ29ybmVyc3RvbmXigJBTcHJhY2hzeW1ib2xlLiBEb3BwZWxwdW5rdGUgZ2ViZW4gZGllIEVyc2F0enJlaWhlbmZvbGdlIGFuLiBLb21tYXRhIGdlYmVuIGFuLCBkYXNzIG1laHJlcmUgU3ByYWNoZW4gdmVyd2VuZGV0IHdlcmRlbiBzb2xsZW4uIEJlaXNwaWVsZTog4oCeZGUtREXigJwgb2RlciDigJ7wn4ep8J+HqkRF4oCcIOKGkiBEZXV0c2NoIGF1cyBEZXV0c2NobGFuZCwg4oCcYmFyLGRlO2Zy4oCdIOKGkiBiZWlkZSBCYWlyaXNjaCB1bmQgRGV1dHNjaCwgc29uc3QgRnJhbnpvzIhzaXNjaCIsCiAgICAgICAgICAgICAgICAiaWRlbnRpZmllciIgOiAibGFuZ3VhZ2UgcHJlZmVyZW5jZSIsCiAgICAgICAgICAgICAgICAibmFtZSIgOiAiU3ByYWNoZWluc3RlbGx1bmciCiAgICAgICAgICAgICAgfQogICAgICAgICAgICB9CiAgICAgICAgICBdLAogICAgICAgICAgInN1YmNvbW1hbmRzIiA6IFsKCiAgICAgICAgICBdCiAgICAgICAgfQogICAgICBdCiAgICB9CiAgXQp9"
    )!,
    encoding: String.Encoding.utf8
  )!

}
