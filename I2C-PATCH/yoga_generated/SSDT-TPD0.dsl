/*
 * Find _CRS:          5F 43 52 53
 * Replace XCRS:       58 43 52 53
 * Target Bridge TPD0: 54504430
 */
DefinitionBlock("", "SSDT", 2, "hack", "I2Cpatch", 0)
{
    External(_SB.PCI0.I2C0.TPD0, DeviceObj)
    External(_SB.PCI0.I2C0.TPD0.SBFB, IntObj)
    External(_SB.PCI0.I2C0.TPD0.SBFI, IntObj)
    External(OSYS, FieldUnitObj)
    External(SDM0, FieldUnitObj)
    Scope(_SB.PCI0.I2C0.TPD0)
    {
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((OSYS < 0x07DC))
                {
                    Return (ConcatenateResTemplate (SBFB, SBFI)) // Usually this return won't function, please check your Windows Patch
                }

                If ((SDM0 == Zero))
                {
                    Return (ConcatenateResTemplate (SBFB, SBFI))
                }

                Return (ConcatenateResTemplate (SBFB, SBFI))
            }
    }
}