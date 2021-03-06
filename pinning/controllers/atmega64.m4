dnl
dnl atmega64.m4
dnl
dnl   Copyright (c) 2008 by Christian Dietrich <stettberger@dokucode.de>
dnl   Copyright (c) 2008 by Stefan Siegl <stesie@brokenpipe.de>
dnl   Copyright (c) 2008 by Jochen Roessner <jochen@lugrot.de>
dnl   Copyright (c) 2009 by Thorsten Schroeder <ths@dev.io>
dnl  
dnl   This program is free software; you can redistribute it and/or modify
dnl   it under the terms of the GNU General Public License as published by 
dnl   the Free Software Foundation; either version 2 of the License, or
dnl   (at your option) any later version.
dnl  
dnl   This program is distributed in the hope that it will be useful,
dnl   but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl   GNU General Public License for more details.
dnl  
dnl   You should have received a copy of the GNU General Public License
dnl   along with this program; if not, write to the Free Software
dnl   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.


ifdef(`need_spi', `dnl
/* spi defines */
pin(SPI_MOSI, PB2, OUTPUT)
pin(SPI_MISO, PB3)
pin(SPI_SCK, PB1, OUTPUT)
')dnl

#define ADC_CHANNELS 8

/* MCU doesn't support toggling pins by writing to PINx register */
#define PINx_TOGGLE_WORKAROUND

