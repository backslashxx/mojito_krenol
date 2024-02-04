/* Copyright (c) 2015, 2017 The Linux Foundation. All rights reserved.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 and
 * only version 2 as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

#ifndef __QCOM_RPM_SMD_REGULATOR_H
#define __QCOM_RPM_SMD_REGULATOR_H

/* custom regulator table, undervolt one bin down */
#define RPM_SMD_REGULATOR_LEVEL_NONE		0
#define RPM_SMD_REGULATOR_LEVEL_RETENTION	8
#define RPM_SMD_REGULATOR_LEVEL_RETENTION_PLUS	16
#define RPM_SMD_REGULATOR_LEVEL_MIN_SVS		32
#define RPM_SMD_REGULATOR_LEVEL_LOW_SVS		48
#define RPM_SMD_REGULATOR_LEVEL_SVS		64
#define RPM_SMD_REGULATOR_LEVEL_SVS_PLUS	128
#define RPM_SMD_REGULATOR_LEVEL_NOM		192
#define RPM_SMD_REGULATOR_LEVEL_NOM_PLUS	256
#define RPM_SMD_REGULATOR_LEVEL_TURBO		320
#define RPM_SMD_REGULATOR_LEVEL_TURBO_NO_CPR	384
#define RPM_SMD_REGULATOR_LEVEL_BINNING		416

#endif
