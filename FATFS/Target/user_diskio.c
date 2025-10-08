/* USER CODE BEGIN Header */
/**
 ******************************************************************************
  * @file    user_diskio.c
  * @brief   This file includes a diskio driver skeleton to be completed by the user.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
 /* USER CODE END Header */

#ifdef USE_OBSOLETE_USER_CODE_SECTION_0
/*
 * Warning: the user section 0 is no more in use (starting from CubeMx version 4.16.0)
 * To be suppressed in the future.
 * Kept to ensure backward compatibility with previous CubeMx versions when
 * migrating projects.
 * User code previously added there should be copied in the new user sections before
 * the section contents can be deleted.
 */
/* USER CODE BEGIN 0 */
/* USER CODE END 0 */
#endif

/* USER CODE BEGIN DECL */

/* Includes ------------------------------------------------------------------*/
#include <string.h>
#include "ff_gen_drv.h"
#include "ff_gen_drv.h"
#include "usbd_storage_if.h"
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/
/* Disk status */
static volatile DSTATUS Stat = STA_NOINIT;

/* USER CODE END DECL */

/* Private function prototypes -----------------------------------------------*/
DSTATUS USER_initialize (BYTE pdrv);
DSTATUS USER_status (BYTE pdrv);
DRESULT USER_read (BYTE pdrv, BYTE *buff, DWORD sector, UINT count);
#if _USE_WRITE == 1
  DRESULT USER_write (BYTE pdrv, const BYTE *buff, DWORD sector, UINT count);
#endif /* _USE_WRITE == 1 */
#if _USE_IOCTL == 1
  DRESULT USER_ioctl (BYTE pdrv, BYTE cmd, void *buff);
#endif /* _USE_IOCTL == 1 */

Diskio_drvTypeDef  USER_Driver =
{
  USER_initialize,
  USER_status,
  USER_read,
#if  _USE_WRITE
  USER_write,
#endif  /* _USE_WRITE == 1 */
#if  _USE_IOCTL == 1
  USER_ioctl,
#endif /* _USE_IOCTL == 1 */
};

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Initializes a Drive
  * @param  pdrv: Physical drive number (0..)
  * @retval DSTATUS: Operation status
  */
DSTATUS USER_initialize(BYTE pdrv) {
    if (pdrv != 0) return STA_NOINIT;
    // For USB MSC, init is usually done by the USB stack already.
    Stat = 0;  // assume ready
    return Stat;
}

DSTATUS USER_status(BYTE pdrv) {
    if (pdrv != 0) return STA_NOINIT;
    // Could query USB ready state if needed
    return Stat;
}

DRESULT USER_read(BYTE pdrv, BYTE *buff, DWORD sector, UINT count) {
    if (pdrv != 0) return RES_PARERR;
    if (STORAGE_Read(0, buff, sector, count) == 0) {
        return RES_OK;
    }
    return RES_ERROR;
}

DRESULT USER_write(BYTE pdrv, const BYTE *buff, DWORD sector, UINT count) {
#if _USE_WRITE
    if (pdrv != 0) return RES_PARERR;
    if (STORAGE_Write(0, (uint8_t*)buff, sector, count) == 0) {
        return RES_OK;
    }
    return RES_ERROR;
#else
    return RES_WRPRT;
#endif
}

DRESULT USER_ioctl(BYTE pdrv, BYTE cmd, void *buff) {
    if (pdrv != 0) return RES_PARERR;

    switch (cmd) {
    case CTRL_SYNC:
        return RES_OK; // Nothing to sync for USB

    case GET_SECTOR_COUNT:
        *(DWORD*)buff = STORAGE_GetCapacityBlockCount(0);
        return RES_OK;

    case GET_SECTOR_SIZE:
        *(WORD*)buff = STORAGE_GetCapacityBlockSize(0);
        return RES_OK;

    case GET_BLOCK_SIZE:
        *(DWORD*)buff = 1;  // Erase block size in sectors (not critical for USB)
        return RES_OK;

    default:
        return RES_PARERR;
    }
}
