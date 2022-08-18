# A project for the integrated OBC and LDC in Electric Vehicle
Software for an integrated OBC/LDC converter using Tricore TC234P to control power conversion in electric vehicle. The converter takes requests from the Vehicle Control Unit(VCU) via CAN and control the charging power between high voltage DC bus and battery storage system.

# What was done?
- Develop a low-level basic firmware for the used peripheral including GTM, CAN, SMU, SPI, STM, ADC, DFLASH
- Design PI controller software for LDC and OBC converter to control the output voltage and current via duty and frequency PWM respectively.
- Fault detection feature is also developed to detect the error in voltage, current and temperature sensors, and other components. The DTC code of each fault in real-time will be stored in EEPROM memory. The UDS service requests can be sent to the converter and read the DTC code of each failure. 
- UDS service makes it possible to interrogate the fault memory of the individual control units and update a new firmware or to understand the environment and operating conditions of an ECU to be able to diagnose faulty or otherwise undesirable behavior.
