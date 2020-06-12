1. Put VoodooI2C and the Satellite into Clover/Kexts/Other
2. Add rename(s) to Clover config.plist

++++++++++++++++++++++++++++++++++++++

    Find _CRS:          5F 43 52 53
    Replace XCRS:       58 43 52 53
    Target Bridge TPD0: 54504430

Please use the Rename(s) above in the given order

++++++++++++++++++++++++++++++++++++++

3. Place SSDT aml files into Clover/ACPI/patched