# -----------------------------------------------------------------------------
#
# Copyright (C) 2015-2019 Infineon Technologies AG. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# - Redistributions of source code must retain the above copyright notice,
#   this list of conditions and the following disclaimer.
# - Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation.
#   and/or other materials provided with the distribution.
# - Neither the name of the copyright holders nor the names of its
#   contributors may be used to endorse or promote products derived from this
#   software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
# TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# To improve the quality of the software, users are encouraged to share
# modifications, enhancements or bug fixes with Infineon Technologies AG
# (support@infineon.com).
# 
# -----------------------------------------------------------------------------
# Subdirectory make file for 0_Src/AppSw/Tricore/BSW_Module/Device_Drivers
# !! Generated make file, modifications could be overwritten !!
#------------------------------------------------------------------------------


# Make-Rules:
# Make-rules for architecture: Tricore

#Make-rule to build file: Mcal_Adc.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Adc.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Adc.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Adc.o: 0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Adc.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Mcal_Adc.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Mcal_DFlash.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_DFlash.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_DFlash.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_DFlash.o: 0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_DFlash.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Mcal_DFlash.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Mcal_Gpio.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Gpio.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Gpio.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Gpio.o: 0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Gpio.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Mcal_Gpio.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Mcal_GtmTim.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_GtmTim.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_GtmTim.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_GtmTim.o: 0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_GtmTim.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Mcal_GtmTim.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Mcal_GtmTomPwm.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_GtmTomPwm.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_GtmTomPwm.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_GtmTomPwm.o: 0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_GtmTomPwm.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Mcal_GtmTomPwm.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Mcal_Multican.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Multican.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Multican.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Multican.o: 0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Multican.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Mcal_Multican.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Mcal_Smu.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Smu.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Smu.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Smu.o: 0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Smu.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Mcal_Smu.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Mcal_Spi.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Spi.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Spi.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Spi.o: 0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Spi.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Mcal_Spi.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Mcal_Stm.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Stm.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Stm.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Stm.o: 0_Src/AppSw/Tricore/BSW_Module/Device_Drivers/Mcal_Stm.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Mcal_Stm.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD
