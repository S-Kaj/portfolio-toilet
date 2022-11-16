# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NetworkManager
  class EndpointProvider
    def initialize(rule_set = nil)
      @@rule_set ||= begin
        endpoint_rules = Aws::Json.load(Base64.decode64(RULES))
        Aws::Endpoints::RuleSet.new(
          version: endpoint_rules['version'],
          service_id: endpoint_rules['serviceId'],
          parameters: endpoint_rules['parameters'],
          rules: endpoint_rules['rules']
        )
      end
      @provider = Aws::Endpoints::RulesProvider.new(rule_set || @@rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end

    # @api private
    RULES = <<-JSON
eyJ2ZXJzaW9uIjoiMS4wIiwicGFyYW1ldGVycyI6eyJSZWdpb24iOnsiYnVp
bHRJbiI6IkFXUzo6UmVnaW9uIiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1bWVu
dGF0aW9uIjoiVGhlIEFXUyByZWdpb24gdXNlZCB0byBkaXNwYXRjaCB0aGUg
cmVxdWVzdC4iLCJ0eXBlIjoiU3RyaW5nIn0sIlVzZUR1YWxTdGFjayI6eyJi
dWlsdEluIjoiQVdTOjpVc2VEdWFsU3RhY2siLCJyZXF1aXJlZCI6dHJ1ZSwi
ZGVmYXVsdCI6ZmFsc2UsImRvY3VtZW50YXRpb24iOiJXaGVuIHRydWUsIHVz
ZSB0aGUgZHVhbC1zdGFjayBlbmRwb2ludC4gSWYgdGhlIGNvbmZpZ3VyZWQg
ZW5kcG9pbnQgZG9lcyBub3Qgc3VwcG9ydCBkdWFsLXN0YWNrLCBkaXNwYXRj
aGluZyB0aGUgcmVxdWVzdCBNQVkgcmV0dXJuIGFuIGVycm9yLiIsInR5cGUi
OiJCb29sZWFuIn0sIlVzZUZJUFMiOnsiYnVpbHRJbiI6IkFXUzo6VXNlRklQ
UyIsInJlcXVpcmVkIjp0cnVlLCJkZWZhdWx0IjpmYWxzZSwiZG9jdW1lbnRh
dGlvbiI6IldoZW4gdHJ1ZSwgc2VuZCB0aGlzIHJlcXVlc3QgdG8gdGhlIEZJ
UFMtY29tcGxpYW50IHJlZ2lvbmFsIGVuZHBvaW50LiBJZiB0aGUgY29uZmln
dXJlZCBlbmRwb2ludCBkb2VzIG5vdCBoYXZlIGEgRklQUyBjb21wbGlhbnQg
ZW5kcG9pbnQsIGRpc3BhdGNoaW5nIHRoZSByZXF1ZXN0IHdpbGwgcmV0dXJu
IGFuIGVycm9yLiIsInR5cGUiOiJCb29sZWFuIn0sIkVuZHBvaW50Ijp7ImJ1
aWx0SW4iOiJTREs6OkVuZHBvaW50IiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1
bWVudGF0aW9uIjoiT3ZlcnJpZGUgdGhlIGVuZHBvaW50IHVzZWQgdG8gc2Vu
ZCB0aGlzIHJlcXVlc3QiLCJ0eXBlIjoiU3RyaW5nIn19LCJydWxlcyI6W3si
Y29uZGl0aW9ucyI6W3siZm4iOiJhd3MucGFydGl0aW9uIiwiYXJndiI6W3si
cmVmIjoiUmVnaW9uIn1dLCJhc3NpZ24iOiJQYXJ0aXRpb25SZXN1bHQifV0s
InR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoi
aXNTZXQiLCJhcmd2IjpbeyJyZWYiOiJFbmRwb2ludCJ9XX0seyJmbiI6InBh
cnNlVVJMIiwiYXJndiI6W3sicmVmIjoiRW5kcG9pbnQifV0sImFzc2lnbiI6
InVybCJ9XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6
W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQ
UyJ9LHRydWVdfV0sImVycm9yIjoiSW52YWxpZCBDb25maWd1cmF0aW9uOiBG
SVBTIGFuZCBjdXN0b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0
eXBlIjoiZXJyb3IifSx7ImNvbmRpdGlvbnMiOltdLCJ0eXBlIjoidHJlZSIs
InJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMi
LCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0cnVlXX1dLCJlcnJv
ciI6IkludmFsaWQgQ29uZmlndXJhdGlvbjogRHVhbHN0YWNrIGFuZCBjdXN0
b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0eXBlIjoiZXJyb3Ii
fSx7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOnsicmVmIjoi
RW5kcG9pbnQifSwicHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlw
ZSI6ImVuZHBvaW50In1dfV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJzdHJp
bmdFcXVhbHMiLCJhcmd2IjpbeyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJy
ZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwibmFtZSJdfSwiYXdzIl19XSwidHlw
ZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29s
ZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9LHRydWVdfSx7
ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxT
dGFjayJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsi
Zm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0
In0sInN1cHBvcnRzRklQUyJdfV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwi
YXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQ
YXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3RhY2siXX1dfV0sInR5
cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2lu
dCI6eyJ1cmwiOiJodHRwczovL25ldHdvcmttYW5hZ2VyLWZpcHMue1JlZ2lv
bn0uYXBpLmF3cyIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVtZXMiOlt7Im5h
bWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoibmV0d29ya21hbmFnZXIiLCJz
aWduaW5nUmVnaW9uIjoidXMtd2VzdC0yIn1dfSwiaGVhZGVycyI6e319LCJ0
eXBlIjoiZW5kcG9pbnQifV19LHsiY29uZGl0aW9ucyI6W10sImVycm9yIjoi
RklQUyBhbmQgRHVhbFN0YWNrIGFyZSBlbmFibGVkLCBidXQgdGhpcyBwYXJ0
aXRpb24gZG9lcyBub3Qgc3VwcG9ydCBvbmUgb3IgYm90aCIsInR5cGUiOiJl
cnJvciJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMi
LCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBTIn0sdHJ1ZV19XSwidHlwZSI6InRy
ZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1
YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJy
ZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNGSVBTIl19XX1dLCJ0
eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbXSwiZW5kcG9p
bnQiOnsidXJsIjoiaHR0cHM6Ly9uZXR3b3JrbWFuYWdlci1maXBzLntSZWdp
b259LmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVz
IjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6Im5ldHdvcmttYW5h
Z2VyIiwic2lnbmluZ1JlZ2lvbiI6InVzLXdlc3QtMiJ9XX0sImhlYWRlcnMi
Ont9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNvbmRpdGlvbnMiOltdLCJl
cnJvciI6IkZJUFMgaXMgZW5hYmxlZCBidXQgdGhpcyBwYXJ0aXRpb24gZG9l
cyBub3Qgc3VwcG9ydCBGSVBTIiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRp
dGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6
IlVzZUR1YWxTdGFjayJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMi
Olt7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3Yi
Olt0cnVlLHsiZm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0
aW9uUmVzdWx0In0sInN1cHBvcnRzRHVhbFN0YWNrIl19XX1dLCJ0eXBlIjoi
dHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbXSwiZW5kcG9pbnQiOnsi
dXJsIjoiaHR0cHM6Ly9uZXR3b3JrbWFuYWdlci57UmVnaW9ufS5hcGkuYXdz
IiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0
Iiwic2lnbmluZ05hbWUiOiJuZXR3b3JrbWFuYWdlciIsInNpZ25pbmdSZWdp
b24iOiJ1cy13ZXN0LTIifV19LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRw
b2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJEdWFsU3RhY2sg
aXMgZW5hYmxlZCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3VwcG9y
dCBEdWFsU3RhY2siLCJ0eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9ucyI6
W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vbmV0d29ya21hbmFnZXIu
dXMtd2VzdC0yLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhT
Y2hlbWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6Im5ldHdv
cmttYW5hZ2VyIiwic2lnbmluZ1JlZ2lvbiI6InVzLXdlc3QtMiJ9XX0sImhl
YWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNvbmRpdGlvbnMi
Olt7ImZuIjoic3RyaW5nRXF1YWxzIiwiYXJndiI6W3siZm4iOiJnZXRBdHRy
IiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0sIm5hbWUiXX0s
ImF3cy11cy1nb3YiXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25k
aXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYi
OiJVc2VGSVBTIn0sdHJ1ZV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwiYXJn
diI6W3sicmVmIjoiVXNlRHVhbFN0YWNrIn0sdHJ1ZV19XSwidHlwZSI6InRy
ZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1
YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJy
ZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNGSVBTIl19XX0seyJm
biI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0
ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0
c0R1YWxTdGFjayJdfV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29u
ZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vbmV0d29y
a21hbmFnZXItZmlwcy57UmVnaW9ufS5hcGkuYXdzIiwicHJvcGVydGllcyI6
eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUi
OiJuZXR3b3JrbWFuYWdlciIsInNpZ25pbmdSZWdpb24iOiJ1cy1nb3Ytd2Vz
dC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19LHsi
Y29uZGl0aW9ucyI6W10sImVycm9yIjoiRklQUyBhbmQgRHVhbFN0YWNrIGFy
ZSBlbmFibGVkLCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3VwcG9y
dCBvbmUgb3IgYm90aCIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25z
IjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VG
SVBTIn0sdHJ1ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0
aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJm
biI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQi
fSwic3VwcG9ydHNGSVBTIl19XX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpb
eyJjb25kaXRpb25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9u
ZXR3b3JrbWFuYWdlci1maXBzLntSZWdpb259LmFtYXpvbmF3cy5jb20iLCJw
cm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1lIjoic2lndjQiLCJz
aWduaW5nTmFtZSI6Im5ldHdvcmttYW5hZ2VyIiwic2lnbmluZ1JlZ2lvbiI6
InVzLWdvdi13ZXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRw
b2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJGSVBTIGlzIGVu
YWJsZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90IHN1cHBvcnQgRklQ
UyIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6ImJv
b2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0
cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpb
eyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0
QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBw
b3J0c0R1YWxTdGFjayJdfV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3si
Y29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vbmV0
d29ya21hbmFnZXIue1JlZ2lvbn0uYXBpLmF3cyIsInByb3BlcnRpZXMiOnsi
YXV0aFNjaGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoi
bmV0d29ya21hbmFnZXIiLCJzaWduaW5nUmVnaW9uIjoidXMtZ292LXdlc3Qt
MSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNv
bmRpdGlvbnMiOltdLCJlcnJvciI6IkR1YWxTdGFjayBpcyBlbmFibGVkIGJ1
dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IER1YWxTdGFjayIs
InR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpbXSwiZW5kcG9pbnQi
OnsidXJsIjoiaHR0cHM6Ly9uZXR3b3JrbWFuYWdlci51cy1nb3Ytd2VzdC0x
LmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpb
eyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6Im5ldHdvcmttYW5hZ2Vy
Iiwic2lnbmluZ1JlZ2lvbiI6InVzLWdvdi13ZXN0LTEifV19LCJoZWFkZXJz
Ijp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbeyJm
biI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBTIn0s
dHJ1ZV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoi
VXNlRHVhbFN0YWNrIn0sdHJ1ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6
W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6
W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRp
b25SZXN1bHQifSwic3VwcG9ydHNGSVBTIl19XX0seyJmbiI6ImJvb2xlYW5F
cXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7
InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJd
fV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10s
ImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vbmV0d29ya21hbmFnZXItZmlw
cy57UmVnaW9ufS57UGFydGl0aW9uUmVzdWx0I2R1YWxTdGFja0Ruc1N1ZmZp
eH0iLCJwcm9wZXJ0aWVzIjp7fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5k
cG9pbnQifV19LHsiY29uZGl0aW9ucyI6W10sImVycm9yIjoiRklQUyBhbmQg
RHVhbFN0YWNrIGFyZSBlbmFibGVkLCBidXQgdGhpcyBwYXJ0aXRpb24gZG9l
cyBub3Qgc3VwcG9ydCBvbmUgb3IgYm90aCIsInR5cGUiOiJlcnJvciJ9XX0s
eyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2Ijpb
eyJyZWYiOiJVc2VGSVBTIn0sdHJ1ZV19XSwidHlwZSI6InRyZWUiLCJydWxl
cyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJn
diI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0
aXRpb25SZXN1bHQifSwic3VwcG9ydHNGSVBTIl19XX1dLCJ0eXBlIjoidHJl
ZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbXSwidHlwZSI6InRyZWUiLCJy
dWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0
dHBzOi8vbmV0d29ya21hbmFnZXItZmlwcy57UmVnaW9ufS57UGFydGl0aW9u
UmVzdWx0I2Ruc1N1ZmZpeH0iLCJwcm9wZXJ0aWVzIjp7fSwiaGVhZGVycyI6
e319LCJ0eXBlIjoiZW5kcG9pbnQifV19XX0seyJjb25kaXRpb25zIjpbXSwi
ZXJyb3IiOiJGSVBTIGlzIGVuYWJsZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRv
ZXMgbm90IHN1cHBvcnQgRklQUyIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25k
aXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYi
OiJVc2VEdWFsU3RhY2sifSx0cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVz
IjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2
IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRp
dGlvblJlc3VsdCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJdfV19XSwidHlwZSI6
InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7
InVybCI6Imh0dHBzOi8vbmV0d29ya21hbmFnZXIue1JlZ2lvbn0ue1BhcnRp
dGlvblJlc3VsdCNkdWFsU3RhY2tEbnNTdWZmaXh9IiwicHJvcGVydGllcyI6
e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNvbmRp
dGlvbnMiOltdLCJlcnJvciI6IkR1YWxTdGFjayBpcyBlbmFibGVkIGJ1dCB0
aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IER1YWxTdGFjayIsInR5
cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpbXSwidHlwZSI6InRyZWUi
LCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJzdHJpbmdFcXVhbHMi
LCJhcmd2IjpbeyJyZWYiOiJSZWdpb24ifSwiYXdzLWdsb2JhbCJdfV0sImVu
ZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vbmV0d29ya21hbmFnZXIudXMtd2Vz
dC0yLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVz
IjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6Im5ldHdvcmttYW5h
Z2VyIiwic2lnbmluZ1JlZ2lvbiI6InVzLXdlc3QtMiJ9XX0sImhlYWRlcnMi
Ont9fSwidHlwZSI6ImVuZHBvaW50In0seyJjb25kaXRpb25zIjpbeyJmbiI6
InN0cmluZ0VxdWFscyIsImFyZ3YiOlt7InJlZiI6IlJlZ2lvbiJ9LCJhd3Mt
dXMtZ292LWdsb2JhbCJdfV0sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8v
bmV0d29ya21hbmFnZXIudXMtZ292LXdlc3QtMS5hbWF6b25hd3MuY29tIiwi
cHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwi
c2lnbmluZ05hbWUiOiJuZXR3b3JrbWFuYWdlciIsInNpZ25pbmdSZWdpb24i
OiJ1cy1nb3Ytd2VzdC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5k
cG9pbnQifSx7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJo
dHRwczovL25ldHdvcmttYW5hZ2VyLntSZWdpb259LntQYXJ0aXRpb25SZXN1
bHQjZG5zU3VmZml4fSIsInByb3BlcnRpZXMiOnt9LCJoZWFkZXJzIjp7fX0s
InR5cGUiOiJlbmRwb2ludCJ9XX1dfV19

    JSON
  end
end
