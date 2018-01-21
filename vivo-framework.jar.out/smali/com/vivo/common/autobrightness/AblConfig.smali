.class public Lcom/vivo/common/autobrightness/AblConfig;
.super Ljava/lang/Object;
.source "AblConfig.java"


# static fields
.field public static final ALS_MEMORY_3_POINT:I = 0x1

.field public static final ALS_MEMORY_ALL_POINT:I = 0x0

.field public static final ARG_DISABLE_DEBUG:Ljava/lang/String; = "disabled"

.field public static final ARG_ENABLE_DEBUG:Ljava/lang/String; = "enabled"

.field public static final CMD_DEBUG:Ljava/lang/String; = "--debug"

.field private static final COLOR_BLACK:I = 0x1

.field private static final COLOR_WITHE:I = 0x0

.field private static DEBUG:Z = false

.field public static final KEY_CONFIG_BRIGHTNESS_LUMA:Ljava/lang/String; = "BrightnessLuma"

.field public static final KEY_CONFIG_BRIGHTNESS_MEMORY:Ljava/lang/String; = "BrightnessMemory"

.field public static final KEY_CONFIG_BRIGHTNESS_NORMAL:Ljava/lang/String; = "BrightnessNormal"

.field public static final KEY_CONFIG_BRIGHTNESS_SUPER_POWER:Ljava/lang/String; = "BrightnessSuperPower"

.field public static final KEY_CONFIG_LIGHT_MEMORY_LEVEL_DOWN:Ljava/lang/String; = "LightMemoryLevelDown"

.field public static final KEY_CONFIG_LIGHT_MEMORY_LEVEL_UP:Ljava/lang/String; = "LightMemoryLevelUp"

.field public static final KEY_CONFIG_LIGHT_NORMAL_LEVEL_DOWN:Ljava/lang/String; = "LightNormalLevelDown"

.field public static final KEY_CONFIG_LIGHT_NORMAL_LEVEL_UP:Ljava/lang/String; = "LightNormalLevelUp"

.field public static final KEY_CONFIG_LUMA_BOUNDARY:Ljava/lang/String; = "LumaBoundary"

.field public static final KEY_CONFIG_WARNING_DEFAULT:Ljava/lang/String; = "{WARNING-DEFAULT}"

.field private static final LCM_COLOR_PATH:Ljava/lang/String; = "/sys/lcm/lcm_color"

.field private static final LCM_ID_PATH:Ljava/lang/String; = "/sys/lcm/lcm_id"

.field public static final PROP_ANIMATE_DOWN:Ljava/lang/String; = "persist.animate.down"

.field public static final PROP_ANIMATE_UP:Ljava/lang/String; = "persist.animate.up"

.field public static final PROP_BOARD_PLATFORM:Ljava/lang/String; = "ro.board.platform"

.field public static final PROP_CAM_CANCELED:Ljava/lang/String; = "debug.scene_info.cam_canceled"

.field public static final PROP_CAM_LEVEL:Ljava/lang/String; = "debug.luma.cam_level"

.field public static final PROP_CONFIG_ALS_MEMORY:Ljava/lang/String; = "persist.als.use_memory"

.field public static final PROP_CONFIG_ALS_MEMORY_POINT:Ljava/lang/String; = "persist.als.memory_point"

.field public static final PROP_DEBUG_PMS_LIGHT:Ljava/lang/String; = "debug.pms.lightlog"

.field public static final PROP_LIGHT_LEVEL:Ljava/lang/String; = "debug.luma.light_level"

.field public static final PROP_PRODUCT_MODEL:Ljava/lang/String; = "ro.product.model.bbk"

.field public static final PROP_PRODUCT_VERSION:Ljava/lang/String; = "ro.vivo.product.version"

.field public static final PROP_RUN_CAM_SVC:Ljava/lang/String; = "debug.luma.run_cam"

.field public static final PROP_SCENE_INFO:Ljava/lang/String; = "debug.scene_info.scene"

.field public static final PROP_SCENE_INFO_LUX:Ljava/lang/String; = "debug.scene_info.lux"

.field public static final PROP_SCENE_INFO_RESULT:Ljava/lang/String; = "debug.scene_info.result"

.field public static final PROP_SCENE_SCENE:Ljava/lang/String; = "debug.scene_info.scene"

.field public static final PROP_SCREEN_LEVEL:Ljava/lang/String; = "debug.luma.screen_level"

.field public static final TAG_ERROR:Ljava/lang/String; = "AutoBrightnessERROR:"

.field public static final TAG_FATAL:Ljava/lang/String; = "AutoBrightnessFATAL:"

.field public static final TAG_WARNING:Ljava/lang/String; = "AutoBrightnessWARNING:"

.field private static final mAlsMemorySolution:I

.field private static final mAppCanChangeBrightnessWitheList:[Ljava/lang/String;

.field private static final mAppNeedDelayAnswer:[Ljava/lang/String;

.field private static final mBoardPlatform:Ljava/lang/String;

.field private static final mBrightnessModeRestore:Z

.field private static final mBrightnessModeRestoreList:[Ljava/lang/String;

.field private static final mBrightnessSceneRatioList:[Ljava/lang/String;

.field private static final mCameraLumaDebounce:I

.field private static final mCollectDataVer2ndList:[Ljava/lang/String;

.field private static final mCollectDataVer2ndPlatform:[Ljava/lang/String;

.field private static final mCollectMemoryParameter:Z

.field private static final mCollectMemoryParameterList:[Ljava/lang/String;

.field private static final mCollectUseDuration:Z

.field private static final mCollectUseDurationList:[Ljava/lang/String;

.field private static final mFirstFewSeconds:I

.field private static final mFixedBrightDelayTime:I

.field private static final mFixedDarkDelayTime:I

.field private static final mFixedStartCameraDelayTime:I

.field private static final mIsCollectAutobrightApplyHistory:Z

.field private static final mIsCollectDataVer2nd:Z

.field private static final mIsFrontCameraNotSupportLuma:Z

.field private static final mIsMaxBrightnessLimit:Z

.field private static final mIsUseBrightnessSceneRatio:Z

.field private static final mIsUseLightThresholdVer2nd:Z

.field private static final mIsUseRgbSensor:Z

.field private static final mIsUseWakeLightSensor:Z

.field private static final mLcmAckChangeFlickering:Z

.field private static final mLcmAckChangeFlickeringList:[Ljava/lang/String;

.field private static final mLcmColor:I

.field private static final mLcmDimChangeFickeringList:[Ljava/lang/String;

.field private static final mLcmDimChangeFlickering:Z

.field private static final mLcmFlickering:Z

.field private static final mLcmFlickeringList:[Ljava/lang/String;

.field private static final mLcmGetAutoBriSwitch:Z

.field private static final mLcmGetAutoBrightSwitchList:[Ljava/lang/String;

.field private static final mLcmThresholdHigh:I

.field private static final mLightSensorDarkerQuickDebounce:I

.field private static final mLightSensorDebounce:I

.field private static final mLightSensorQuickDebounce:I

.field private static final mLightThresholdVer2ndList:[Ljava/lang/String;

.field private static final mLuxMedianBufferLen:I

.field private static final mMaxBrightnessLimitList:[Ljava/lang/String;

.field private static final mOpEntry:Ljava/lang/String;

.field private static final mPhoneNotUseCamera:Z

.field private static final mPhoneNotUseCameraList:[Ljava/lang/String;

.field private static final mProductBoard:Ljava/lang/String;

.field private static final mScreenLevelCount:I

.field private static final mUse2048GrayScaleBacklight:Z

.field private static final mUseAlsMemory:Z

.field private static final mUseCameraLuma:Z

.field private static final mUseFixedDelayTime:Z

.field private static final mUseMemoryBrightessLowThreshold:Z

.field private static final mUseRgbSensorList:[Ljava/lang/String;

.field private static final mUseWakeLightSensorList:[Ljava/lang/String;

.field private static final model:Ljava/lang/String;

.field private static final use2048GrayScaleBacklightList:[Ljava/lang/String;

.field private static final use3MemoryPoint:[Ljava/lang/String;

.field private static final useAlsMemoryList:[Ljava/lang/String;

.field private static final useCameraLumaList:[Ljava/lang/String;

.field private static final useFixedDelayTimeList:[Ljava/lang/String;

.field private static final useMedianList:[Ljava/lang/String;

.field private static final useTendencyList:[Ljava/lang/String;

.field private static final userCameraLumaListEquals:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const-string v0, "debug.pms.lightlog"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->DEBUG:Z

    .line 61
    const-string v0, "ro.product.model.bbk"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    .line 62
    const-string v0, "ro.product.board"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mProductBoard:Ljava/lang/String;

    .line 63
    const-string v0, "ro.vivo.op.entry"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mOpEntry:Ljava/lang/String;

    .line 64
    const-string v0, "ro.board.platform"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mBoardPlatform:Ljava/lang/String;

    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pd1304cl"

    aput-object v1, v0, v3

    const-string v1, "pd1304cf"

    aput-object v1, v0, v4

    const-string v1, "pd1304cv"

    aput-object v1, v0, v5

    const-string v1, "pd1419"

    aput-object v1, v0, v6

    const-string v1, "pd1420"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->useTendencyList:[Ljava/lang/String;

    .line 72
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v3

    const-string v1, "b"

    aput-object v1, v0, v4

    const-string v1, "c"

    aput-object v1, v0, v5

    const-string v1, "d"

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->useMedianList:[Ljava/lang/String;

    .line 80
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pd1401"

    aput-object v1, v0, v3

    const-string v1, "pd1410"

    aput-object v1, v0, v4

    const-string v1, "pd1302"

    aput-object v1, v0, v5

    const-string v1, "pd1403l"

    aput-object v1, v0, v6

    const-string v1, "pd1403f"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pd1403v"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pd1408"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pd1401bl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pd1420"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pd1408bl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pd1421l"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pd1422"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pd1421v"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pd1421f_ex"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pd1502"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pd1510"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pd1304dw_ex"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pd1503"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pd1503f_ex"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pd1505w_ex"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pd1505bw_ex"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pd1405"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "pd1415"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "pd1419"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pd1501"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "pd1515"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "pd1309cw_ex"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "pd1516"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "pd1522"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "pd1505f_ex"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "pd1523"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pd1309f_ex"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pd1524"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "pd1602"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "pd1603"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "pd1505"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "td1602"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "td1603"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "pd1613"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "pd1612"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "pd1621"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "td1605"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->useCameraLumaList:[Ljava/lang/String;

    .line 122
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pd1421"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->useFixedDelayTimeList:[Ljava/lang/String;

    .line 130
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pd1421"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->userCameraLumaListEquals:[Ljava/lang/String;

    .line 132
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pd1401bl"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->use2048GrayScaleBacklightList:[Ljava/lang/String;

    .line 144
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.qiyi.video"

    aput-object v1, v0, v3

    const-string v1, "org.iqiyi.video"

    aput-object v1, v0, v4

    const-string v1, "com.sohu.sohuvideo"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mAppNeedDelayAnswer:[Ljava/lang/String;

    .line 145
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.settings"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mAppCanChangeBrightnessWitheList:[Ljava/lang/String;

    .line 150
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->useAlsMemoryList:[Ljava/lang/String;

    .line 155
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->use3MemoryPoint:[Ljava/lang/String;

    .line 164
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectUseDurationList:[Ljava/lang/String;

    .line 169
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectMemoryParameterList:[Ljava/lang/String;

    .line 174
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pd1421"

    aput-object v1, v0, v3

    const-string v1, "pd1408"

    aput-object v1, v0, v4

    const-string v1, "pd1405"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmFlickeringList:[Ljava/lang/String;

    .line 175
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pd1415"

    aput-object v1, v0, v3

    const-string v1, "pd1501"

    aput-object v1, v0, v4

    const-string v1, "pd1515"

    aput-object v1, v0, v5

    const-string v1, "pd1522"

    aput-object v1, v0, v6

    const-string v1, "pd1516"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pd1602"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pd1603"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "td1602"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "td1603"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pd1613"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pd1616"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pd1610"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pd1617"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pd1619"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmDimChangeFickeringList:[Ljava/lang/String;

    .line 176
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "mt6750"

    aput-object v1, v0, v3

    const-string v1, "msm8937"

    aput-object v1, v0, v4

    const-string v1, "msm8953"

    aput-object v1, v0, v5

    const-string v1, "msm8996"

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mBrightnessModeRestoreList:[Ljava/lang/String;

    .line 182
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pd1304dw_ex"

    aput-object v1, v0, v3

    const-string v1, "pd1505w_ex"

    aput-object v1, v0, v4

    const-string v1, "pd1505bw_ex"

    aput-object v1, v0, v5

    const-string v1, "pd1309cw_ex"

    aput-object v1, v0, v6

    const-string v1, "pd1510"

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmAckChangeFlickeringList:[Ljava/lang/String;

    .line 183
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pd1602"

    aput-object v1, v0, v3

    const-string v1, "pd1603"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmGetAutoBrightSwitchList:[Ljava/lang/String;

    .line 185
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "msm8952"

    aput-object v1, v0, v3

    const-string v1, "msm8996"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseWakeLightSensorList:[Ljava/lang/String;

    .line 186
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pd1610"

    aput-object v1, v0, v3

    const-string v1, "pd1616"

    aput-object v1, v0, v4

    const-string v1, "pd1624"

    aput-object v1, v0, v5

    const-string v1, "pd1617"

    aput-object v1, v0, v6

    const-string v1, "pd1619"

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseRgbSensorList:[Ljava/lang/String;

    .line 188
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pd1603"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mPhoneNotUseCameraList:[Ljava/lang/String;

    .line 189
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pd1610"

    aput-object v1, v0, v3

    const-string v1, "pd1617"

    aput-object v1, v0, v4

    const-string v1, "pd1619"

    aput-object v1, v0, v5

    const-string v1, "pd1616"

    aput-object v1, v0, v6

    const-string v1, "pd1624"

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mMaxBrightnessLimitList:[Ljava/lang/String;

    .line 191
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pd1610"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectDataVer2ndList:[Ljava/lang/String;

    .line 192
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pd1613"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mLightThresholdVer2ndList:[Ljava/lang/String;

    .line 194
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "msm8952"

    aput-object v1, v0, v3

    const-string v1, "msm8953"

    aput-object v1, v0, v4

    const-string v1, "msm8937"

    aput-object v1, v0, v5

    const-string v1, "msm8996"

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectDataVer2ndPlatform:[Ljava/lang/String;

    .line 197
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mBrightnessSceneRatioList:[Ljava/lang/String;

    .line 931
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isFrontCameraNotSupportLumaInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsFrontCameraNotSupportLuma:Z

    .line 932
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseCameraLumaInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseCameraLuma:Z

    .line 933
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUse2048GrayScaleBacklightInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mUse2048GrayScaleBacklight:Z

    .line 934
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getScreenLevelCountInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mScreenLevelCount:I

    .line 935
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseAlsMemoryInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseAlsMemory:Z

    .line 936
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLuxMedianBufferLenInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mLuxMedianBufferLen:I

    .line 937
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getFirstFewSecondsInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mFirstFewSeconds:I

    .line 938
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLightSensorQcuickDebounceInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mLightSensorQuickDebounce:I

    .line 939
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getCameraLumaDebounceInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mCameraLumaDebounce:I

    .line 940
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLightSensorDarkerQuickDebounceInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mLightSensorDarkerQuickDebounce:I

    .line 941
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLightSensorDebounceInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mLightSensorDebounce:I

    .line 942
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseMemoryBrightnessLowThresholdInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseMemoryBrightessLowThreshold:Z

    .line 943
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getAlsMemorySolutionInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mAlsMemorySolution:I

    .line 944
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectUseDurationInnger()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectUseDuration:Z

    .line 945
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectMemoryParameterInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectMemoryParameter:Z

    .line 946
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isLcmFlickeringInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmFlickering:Z

    .line 947
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseFixedDarkDelayTimeInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseFixedDelayTime:Z

    .line 948
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getFixedDarkDelayTimeInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mFixedDarkDelayTime:I

    .line 949
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getFixedBrightDelayTimeInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mFixedBrightDelayTime:I

    .line 950
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->mFixedStartCameraDelayTimeInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mFixedStartCameraDelayTime:I

    .line 951
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isLcmAckChangeFlickeringInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmAckChangeFlickering:Z

    .line 952
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isLcmDimChangeFickeringInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmDimChangeFlickering:Z

    .line 953
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isLcmGetAutoBriSwitchInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmGetAutoBriSwitch:Z

    .line 954
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseWakeLightSensorInnger()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsUseWakeLightSensor:Z

    .line 955
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isBrightnessModeRestoreInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mBrightnessModeRestore:Z

    .line 956
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensorInnger()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsUseRgbSensor:Z

    .line 957
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isPhoneNotUseCameraInnger()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mPhoneNotUseCamera:Z

    .line 958
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isMaxBrightessLimitInnger()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsMaxBrightnessLimit:Z

    .line 959
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectDataVer2ndInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsCollectDataVer2nd:Z

    .line 960
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseBrightnessSceneRatioInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsUseBrightnessSceneRatio:Z

    .line 961
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseLightThresholdVer2ndInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsUseLightThresholdVer2nd:Z

    .line 962
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLcmThresholdHighInner()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmThresholdHigh:I

    .line 963
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectAutobrightApplyHistoryInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsCollectAutobrightApplyHistory:Z

    .line 964
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLcmColor()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmColor:I

    .line 965
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlsMemorySolution()I
    .locals 1

    .prologue
    .line 495
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mAlsMemorySolution:I

    return v0
.end method

.method private static getAlsMemorySolutionInner()I
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 480
    const-string v7, "persist.als.memory_point"

    const-string v8, "unkown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "point":Ljava/lang/String;
    const-string v7, "3"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v5

    .line 483
    :cond_1
    const-string v7, "all"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 484
    goto :goto_0

    .line 486
    :cond_2
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->use3MemoryPoint:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 487
    .local v4, "x":Ljava/lang/String;
    sget-object v7, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "x":Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 491
    goto :goto_0
.end method

.method public static getCameraLumaDebounce()I
    .locals 1

    .prologue
    .line 440
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mCameraLumaDebounce:I

    return v0
.end method

.method private static getCameraLumaDebounceInner()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public static getFirstFewSeconds()I
    .locals 1

    .prologue
    .line 424
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mFirstFewSeconds:I

    return v0
.end method

.method private static getFirstFewSecondsInner()I
    .locals 1

    .prologue
    .line 420
    const/16 v0, 0xbb8

    return v0
.end method

.method public static getFixedBrightDelayTime()I
    .locals 1

    .prologue
    .line 650
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mFixedBrightDelayTime:I

    return v0
.end method

.method private static getFixedBrightDelayTimeInner()I
    .locals 1

    .prologue
    .line 654
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getFixedDarkDelayTime()I
    .locals 1

    .prologue
    .line 643
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mFixedDarkDelayTime:I

    return v0
.end method

.method private static getFixedDarkDelayTimeInner()I
    .locals 1

    .prologue
    .line 646
    const/16 v0, 0x157c

    return v0
.end method

.method public static getFixedStartCameraDelayTime()I
    .locals 1

    .prologue
    .line 658
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mFixedStartCameraDelayTime:I

    return v0
.end method

.method public static getLcmColor()I
    .locals 6

    .prologue
    .line 754
    const-string v4, "ro.product.model.bbk"

    const-string v5, "unkown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "model":Ljava/lang/String;
    const-string v4, "/sys/lcm/lcm_id"

    invoke-static {v4}, Lcom/vivo/services/DeviceParaProvideService;->readKernelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "data":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    .line 758
    :cond_0
    const/4 v3, 0x0

    .line 776
    :cond_1
    :goto_0
    return v3

    .line 760
    :cond_2
    const/4 v3, 0x0

    .line 761
    .local v3, "ret":I
    const-string v4, "pd1619"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 762
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 763
    const/4 v3, 0x1

    goto :goto_0

    .line 765
    :cond_3
    const-string v4, "pd1610"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 766
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "22"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 767
    const/4 v3, 0x1

    goto :goto_0

    .line 769
    :cond_4
    const-string v4, "pd1624"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "pd1616"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 770
    :cond_5
    const-string v4, "/sys/lcm/lcm_color"

    invoke-static {v4}, Lcom/vivo/services/DeviceParaProvideService;->readKernelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, "data_rest":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 772
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static getLcmThresholdHigh()I
    .locals 1

    .prologue
    .line 566
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmThresholdHigh:I

    return v0
.end method

.method private static getLcmThresholdHighInner()I
    .locals 2

    .prologue
    .line 556
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    const-string v1, "pd1616"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const/16 v0, 0x3c

    .line 561
    :goto_0
    return v0

    .line 558
    :cond_0
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    const-string v1, "pd1624"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    const/4 v0, 0x2

    goto :goto_0

    .line 561
    :cond_1
    const/16 v0, 0x5a

    goto :goto_0
.end method

.method public static getLightSensorDarkerQuickDebounce()I
    .locals 1

    .prologue
    .line 452
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mLightSensorDarkerQuickDebounce:I

    return v0
.end method

.method private static getLightSensorDarkerQuickDebounceInner()I
    .locals 1

    .prologue
    .line 444
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUse2048GrayScaleBacklightInner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const/16 v0, 0xbb8

    .line 447
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x5dc

    goto :goto_0
.end method

.method public static getLightSensorDebounce()I
    .locals 1

    .prologue
    .line 464
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseFixedDelayTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getFixedDarkDelayTime()I

    move-result v0

    .line 467
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mLightSensorDebounce:I

    goto :goto_0
.end method

.method private static getLightSensorDebounceInner()I
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUse2048GrayScaleBacklightInner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const/16 v0, 0xbb8

    .line 459
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9c4

    goto :goto_0
.end method

.method public static getLightSensorQcuickDebounce()I
    .locals 1

    .prologue
    .line 432
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mLightSensorQuickDebounce:I

    return v0
.end method

.method private static getLightSensorQcuickDebounceInner()I
    .locals 1

    .prologue
    .line 428
    const/16 v0, 0x64

    return v0
.end method

.method public static getLightSmoothThreshold()I
    .locals 1

    .prologue
    .line 333
    const/16 v0, 0x8

    return v0
.end method

.method public static getLuxMedianBufferLen()I
    .locals 1

    .prologue
    .line 404
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mLuxMedianBufferLen:I

    return v0
.end method

.method private static getLuxMedianBufferLenInner()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 408
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->mProductBoard:Ljava/lang/String;

    const-string v2, "bbk6752_lwt_kk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    const/16 v0, 0xd

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    const-string v2, "pd1421v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    const-string v2, "pd1421f_ex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static getObjectUncoverActionTimeout()I
    .locals 1

    .prologue
    .line 665
    const/16 v0, 0xc8

    return v0
.end method

.method public static getRectifiedCoefficient(Ljava/lang/String;)F
    .locals 3
    .param p0, "sensorName"    # Ljava/lang/String;

    .prologue
    .line 841
    const/high16 v0, 0x3f800000    # 1.0f

    .line 842
    .local v0, "mRectifiedCoefficient":F
    const-string v1, "ro.hardware.bbk"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PD1401CL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 843
    const-string v1, "persist.sys.als_cali_flag"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    const v0, 0x3f5eb852    # 0.87f

    .line 864
    :cond_0
    :goto_0
    return v0

    .line 846
    :cond_1
    const-string v1, "ro.hardware.bbk"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PD1501D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 847
    const-string v1, "persist.sys.als_cali_flag"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    const v0, 0x3f947ae1    # 1.16f

    goto :goto_0

    .line 850
    :cond_2
    const-string v1, "ro.hardware.bbk"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PD1421V"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ro.hardware.bbk"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PD1421F_EX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ro.hardware.bbk"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PD1421M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "APDS9920"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 855
    :cond_3
    const-string v1, "persist.sys.als_cali_flag"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    const v0, 0x3fa51eb8    # 1.29f

    goto :goto_0

    .line 858
    :cond_4
    const-string v1, "ro.hardware.bbk"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PD1523"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "APDS9922"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    const-string v1, "persist.sys.als_cali_flag"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    const v0, 0x3f451eb8    # 0.77f

    goto/16 :goto_0
.end method

.method public static getRectifiedLux(FLjava/lang/String;)F
    .locals 7
    .param p0, "light"    # F
    .param p1, "sensorName"    # Ljava/lang/String;

    .prologue
    const/high16 v6, 0x43fa0000    # 500.0f

    .line 780
    move v1, p0

    .line 781
    .local v1, "rectifiedLux":F
    const-string v2, "persist.sys.light_threshold"

    const-string v3, "500"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 783
    .local v0, "lightThreshold":F
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 784
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 786
    :cond_0
    float-to-double v2, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 787
    move v1, p0

    .line 837
    :goto_0
    return v1

    .line 790
    :cond_1
    const-string v2, "ro.hardware.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PD1401CL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 791
    const-string v2, "persist.sys.als_cali_flag"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 792
    mul-float v2, p0, v6

    const v3, 0x3f5eb852    # 0.87f

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    goto :goto_0

    .line 794
    :cond_2
    move v1, p0

    goto :goto_0

    .line 796
    :cond_3
    const-string v2, "ro.hardware.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PD1501D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 797
    const-string v2, "persist.sys.als_cali_flag"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 798
    mul-float v2, p0, v6

    const v3, 0x3f947ae1    # 1.16f

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    goto :goto_0

    .line 800
    :cond_4
    move v1, p0

    goto :goto_0

    .line 802
    :cond_5
    const-string v2, "ro.hardware.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PD1421V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ro.hardware.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PD1421F_EX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ro.hardware.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PD1421M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "APDS9920"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 807
    :cond_6
    const-string v2, "persist.sys.als_cali_flag"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 808
    mul-float v2, p0, v6

    const v3, 0x3fa51eb8    # 1.29f

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    goto/16 :goto_0

    .line 810
    :cond_7
    move v1, p0

    goto/16 :goto_0

    .line 812
    :cond_8
    const-string v2, "ro.hardware.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PD1523"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "APDS9922"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 814
    const-string v2, "persist.sys.als_cali_flag"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 815
    mul-float v2, p0, v6

    const v3, 0x3f451eb8    # 0.77f

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    goto/16 :goto_0

    .line 817
    :cond_9
    move v1, p0

    goto/16 :goto_0

    .line 819
    :cond_a
    const-string v2, "ro.hardware.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PD1613F_EX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "APDS-9922"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 821
    const-string v2, "persist.sys.als_cali_flag"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 822
    mul-float v2, p0, v6

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    goto/16 :goto_0

    .line 824
    :cond_b
    move v1, p0

    goto/16 :goto_0

    .line 826
    :cond_c
    sget-object v2, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    const-string v3, "pd1616"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Lcom/vivo/common/autobrightness/AblConfig;->mLcmColor:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 827
    const-string v2, "persist.sys.als_cali_flag"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 828
    mul-float v2, p0, v6

    const v3, 0x3f4b4396    # 0.794f

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    goto/16 :goto_0

    .line 830
    :cond_d
    move v1, p0

    goto/16 :goto_0

    .line 833
    :cond_e
    mul-float v2, p0, v6

    div-float v1, v2, v0

    goto/16 :goto_0
.end method

.method public static getScreenLevelCount()I
    .locals 1

    .prologue
    .line 276
    sget v0, Lcom/vivo/common/autobrightness/AblConfig;->mScreenLevelCount:I

    return v0
.end method

.method private static getScreenLevelCountInner()I
    .locals 3

    .prologue
    const/16 v0, 0xb

    .line 267
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    const-string v2, "pd1408"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    const-string v2, "pd1401bl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseAlsMemoryInner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const/16 v0, 0x89

    goto :goto_0
.end method

.method public static isBrightnessModeRestore()Z
    .locals 1

    .prologue
    .line 595
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mBrightnessModeRestore:Z

    return v0
.end method

.method private static isBrightnessModeRestoreInner()Z
    .locals 5

    .prologue
    .line 599
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mBrightnessModeRestoreList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 600
    .local v1, "board":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/autobrightness/AblConfig;->mBoardPlatform:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 601
    const/4 v4, 0x1

    .line 604
    .end local v1    # "board":Ljava/lang/String;
    :goto_1
    return v4

    .line 599
    .restart local v1    # "board":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "board":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isCanChangeBrightnessApp(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 373
    if-nez p0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v4

    .line 376
    :cond_1
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mAppCanChangeBrightnessWitheList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 377
    .local v3, "x":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    const/4 v4, 0x1

    goto :goto_0

    .line 376
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isCollectAutobrightApplyHistory()Z
    .locals 1

    .prologue
    .line 923
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsCollectAutobrightApplyHistory:Z

    return v0
.end method

.method private static isCollectAutobrightApplyHistoryInner()Z
    .locals 1

    .prologue
    .line 927
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensorInnger()Z

    move-result v0

    return v0
.end method

.method public static isCollectDataVer2nd()Z
    .locals 1

    .prologue
    .line 888
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsCollectDataVer2nd:Z

    return v0
.end method

.method private static isCollectDataVer2ndInner()Z
    .locals 6

    .prologue
    .line 869
    const/4 v3, 0x0

    .line 870
    .local v3, "ret":Z
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectDataVer2ndList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 871
    .local v4, "x":Ljava/lang/String;
    sget-object v5, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 872
    const/4 v3, 0x1

    .line 876
    .end local v4    # "x":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    .line 877
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectDataVer2ndPlatform:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 878
    .restart local v4    # "x":Ljava/lang/String;
    sget-object v5, Lcom/vivo/common/autobrightness/AblConfig;->mBoardPlatform:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 879
    const/4 v3, 0x1

    .line 884
    .end local v4    # "x":Ljava/lang/String;
    :cond_1
    return v3

    .line 870
    .restart local v4    # "x":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isCollectMemoryParameter()Z
    .locals 1

    .prologue
    .line 517
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectMemoryParameter:Z

    return v0
.end method

.method private static isCollectMemoryParameterInner()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 521
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseAlsMemoryInner()Z

    move-result v6

    if-nez v6, :cond_1

    .line 534
    .local v0, "arr$":[Ljava/lang/String;
    .local v1, "i$":I
    .local v2, "len$":I
    :cond_0
    :goto_0
    return v4

    .line 525
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    move v4, v5

    .line 526
    goto :goto_0

    .line 529
    :cond_2
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectMemoryParameterList:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 530
    .local v3, "x":Ljava/lang/String;
    sget-object v6, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 531
    goto :goto_0

    .line 529
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isCollectUseDuration()Z
    .locals 1

    .prologue
    .line 499
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectUseDuration:Z

    return v0
.end method

.method private static isCollectUseDurationInnger()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 504
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 513
    .local v0, "arr$":[Ljava/lang/String;
    .local v1, "i$":I
    .local v2, "len$":I
    :cond_0
    :goto_0
    return v4

    .line 508
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_1
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mCollectUseDurationList:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 509
    .local v3, "x":Ljava/lang/String;
    sget-object v5, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 513
    .end local v3    # "x":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 725
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->DEBUG:Z

    return v0
.end method

.method public static isFrontCameraNotSupportLuma()Z
    .locals 1

    .prologue
    .line 682
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsFrontCameraNotSupportLuma:Z

    return v0
.end method

.method private static isFrontCameraNotSupportLumaInner()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 671
    new-array v5, v6, [Ljava/lang/String;

    const-string v8, "/sys/bus/platform/drivers/qcom,hi255a"

    aput-object v8, v5, v7

    .line 672
    .local v5, "paths":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 673
    .local v2, "cameraPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    .local v1, "cameraDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 678
    .end local v1    # "cameraDir":Ljava/io/File;
    .end local v2    # "cameraPath":Ljava/lang/String;
    :goto_1
    return v6

    .line 672
    .restart local v1    # "cameraDir":Ljava/io/File;
    .restart local v2    # "cameraPath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "cameraDir":Ljava/io/File;
    .end local v2    # "cameraPath":Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 678
    goto :goto_1
.end method

.method public static isLcmAckChangeFlickering()Z
    .locals 1

    .prologue
    .line 607
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmAckChangeFlickering:Z

    return v0
.end method

.method private static isLcmAckChangeFlickeringInner()Z
    .locals 5

    .prologue
    .line 611
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmAckChangeFlickeringList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 612
    .local v3, "x":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 613
    const/4 v4, 0x1

    .line 616
    .end local v3    # "x":Ljava/lang/String;
    :goto_1
    return v4

    .line 611
    .restart local v3    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isLcmDimChangeFickering()Z
    .locals 1

    .prologue
    .line 576
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmDimChangeFlickering:Z

    return v0
.end method

.method private static isLcmDimChangeFickeringInner()Z
    .locals 5

    .prologue
    .line 580
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmDimChangeFickeringList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 581
    .local v3, "x":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    const/4 v4, 0x1

    .line 585
    .end local v3    # "x":Ljava/lang/String;
    :goto_1
    return v4

    .line 580
    .restart local v3    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isLcmFlickering()Z
    .locals 1

    .prologue
    .line 542
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmFlickering:Z

    return v0
.end method

.method private static isLcmFlickeringInner()Z
    .locals 5

    .prologue
    .line 546
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmFlickeringList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 547
    .local v3, "x":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    const/4 v4, 0x1

    .line 551
    .end local v3    # "x":Ljava/lang/String;
    :goto_1
    return v4

    .line 546
    .restart local v3    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isLcmGetAutoBriSwitch()Z
    .locals 1

    .prologue
    .line 619
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmGetAutoBriSwitch:Z

    return v0
.end method

.method private static isLcmGetAutoBriSwitchInner()Z
    .locals 5

    .prologue
    .line 622
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mLcmGetAutoBrightSwitchList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 623
    .local v3, "x":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    const/4 v4, 0x1

    .line 627
    .end local v3    # "x":Ljava/lang/String;
    :goto_1
    return v4

    .line 622
    .restart local v3    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isMaxBrightessLimit()Z
    .locals 1

    .prologue
    .line 712
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsMaxBrightnessLimit:Z

    return v0
.end method

.method private static isMaxBrightessLimitInnger()Z
    .locals 5

    .prologue
    .line 716
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mMaxBrightnessLimitList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 717
    .local v3, "x":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 718
    const/4 v4, 0x1

    .line 721
    .end local v3    # "x":Ljava/lang/String;
    :goto_1
    return v4

    .line 716
    .restart local v3    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isNeedDelayAnswerApp(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 361
    if-nez p0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v4

    .line 364
    :cond_1
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mAppNeedDelayAnswer:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 365
    .local v3, "x":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 366
    const/4 v4, 0x1

    goto :goto_0

    .line 364
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isOpEntry()Z
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mOpEntry:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC_SC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneNotUseCamera()Z
    .locals 1

    .prologue
    .line 741
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mPhoneNotUseCamera:Z

    return v0
.end method

.method private static isPhoneNotUseCameraInnger()Z
    .locals 5

    .prologue
    .line 745
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mPhoneNotUseCameraList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 746
    .local v3, "x":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    const/4 v4, 0x1

    .line 750
    .end local v3    # "x":Ljava/lang/String;
    :goto_1
    return v4

    .line 745
    .restart local v3    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isUse2048GrayScaleBacklight()Z
    .locals 1

    .prologue
    .line 346
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mUse2048GrayScaleBacklight:Z

    return v0
.end method

.method private static isUse2048GrayScaleBacklightInner()Z
    .locals 3

    .prologue
    .line 336
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->use2048GrayScaleBacklightList:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->use2048GrayScaleBacklightList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 338
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    sget-object v2, Lcom/vivo/common/autobrightness/AblConfig;->use2048GrayScaleBacklightList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const/4 v1, 0x1

    .line 343
    :goto_1
    return v1

    .line 337
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isUseAlsMemory()Z
    .locals 1

    .prologue
    .line 385
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseAlsMemory:Z

    return v0
.end method

.method private static isUseAlsMemoryInner()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 389
    const-string v7, "persist.als.use_memory"

    const-string v8, "unknow"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "use":Ljava/lang/String;
    const-string v7, "no"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v5

    .line 392
    :cond_1
    const-string v7, "yes"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 393
    goto :goto_0

    .line 395
    :cond_2
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->useAlsMemoryList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 396
    .local v4, "x":Ljava/lang/String;
    sget-object v7, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 397
    goto :goto_0

    .line 395
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isUseBrightnessSceneRatio()Z
    .locals 1

    .prologue
    .line 892
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsUseBrightnessSceneRatio:Z

    return v0
.end method

.method private static isUseBrightnessSceneRatioInner()Z
    .locals 7

    .prologue
    .line 896
    const/4 v3, 0x0

    .line 897
    .local v3, "ret":Z
    const-string v5, "debug.abl.sceneratio"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 898
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mBrightnessSceneRatioList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 899
    .local v4, "x":Ljava/lang/String;
    sget-object v5, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 900
    const/4 v3, 0x1

    .line 904
    .end local v4    # "x":Ljava/lang/String;
    :cond_0
    return v3

    .line 898
    .restart local v4    # "x":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isUseCameraLuma()Z
    .locals 1

    .prologue
    .line 318
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseCameraLuma:Z

    return v0
.end method

.method private static isUseCameraLumaInner()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 298
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isOpEntry()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 315
    .local v1, "i":I
    :cond_0
    :goto_0
    return v5

    .line 301
    .end local v1    # "i":I
    :cond_1
    sget-object v7, Lcom/vivo/common/autobrightness/AblConfig;->useCameraLumaList:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_4

    .line 302
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v7, Lcom/vivo/common/autobrightness/AblConfig;->useCameraLumaList:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_4

    .line 303
    sget-object v7, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    sget-object v8, Lcom/vivo/common/autobrightness/AblConfig;->useCameraLumaList:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 304
    sget-object v7, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    const-string v8, "pd1419"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/vivo/common/autobrightness/AblConfig;->mIsFrontCameraNotSupportLuma:Z

    if-nez v7, :cond_0

    :cond_2
    move v5, v6

    .line 306
    goto :goto_0

    .line 302
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    :cond_4
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->userCameraLumaListEquals:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 311
    .local v4, "m":Ljava/lang/String;
    sget-object v7, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v6

    .line 312
    goto :goto_0

    .line 310
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static isUseFixedDarkDelayTimeInner()Z
    .locals 2

    .prologue
    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 636
    const/4 v0, 0x1

    .line 638
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUseFixedDelayTime()Z
    .locals 1

    .prologue
    .line 631
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseFixedDelayTime:Z

    return v0
.end method

.method public static isUseLightSmooth()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public static isUseLightTendency()Z
    .locals 3

    .prologue
    .line 255
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->useTendencyList:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->useTendencyList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 257
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    sget-object v2, Lcom/vivo/common/autobrightness/AblConfig;->useTendencyList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x1

    .line 263
    :goto_1
    return v1

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isUseLightThresholdVer2nd()Z
    .locals 1

    .prologue
    .line 908
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsUseLightThresholdVer2nd:Z

    return v0
.end method

.method private static isUseLightThresholdVer2ndInner()Z
    .locals 6

    .prologue
    .line 912
    const/4 v3, 0x0

    .line 913
    .local v3, "ret":Z
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mLightThresholdVer2ndList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 914
    .local v4, "x":Ljava/lang/String;
    sget-object v5, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 915
    const/4 v3, 0x1

    .line 919
    .end local v4    # "x":Ljava/lang/String;
    :cond_0
    return v3

    .line 913
    .restart local v4    # "x":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isUseLuxMedian()Z
    .locals 3

    .prologue
    .line 280
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->useMedianList:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->useMedianList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 282
    sget-object v1, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    sget-object v2, Lcom/vivo/common/autobrightness/AblConfig;->useMedianList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x1

    .line 288
    :goto_1
    return v1

    .line 281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isUseMemoryBrightnessLowThreshold()Z
    .locals 1

    .prologue
    .line 475
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseMemoryBrightessLowThreshold:Z

    return v0
.end method

.method private static isUseMemoryBrightnessLowThresholdInner()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public static isUseRgbSensor()Z
    .locals 1

    .prologue
    .line 699
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsUseRgbSensor:Z

    return v0
.end method

.method private static isUseRgbSensorInnger()Z
    .locals 5

    .prologue
    .line 703
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseRgbSensorList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 704
    .local v3, "x":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/autobrightness/AblConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 705
    const/4 v4, 0x1

    .line 708
    .end local v3    # "x":Ljava/lang/String;
    :goto_1
    return v4

    .line 703
    .restart local v3    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    .end local v3    # "x":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isUseWakeLightSensor()Z
    .locals 1

    .prologue
    .line 686
    sget-boolean v0, Lcom/vivo/common/autobrightness/AblConfig;->mIsUseWakeLightSensor:Z

    return v0
.end method

.method private static isUseWakeLightSensorInnger()Z
    .locals 5

    .prologue
    .line 690
    sget-object v0, Lcom/vivo/common/autobrightness/AblConfig;->mUseWakeLightSensorList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 691
    .local v1, "board":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/autobrightness/AblConfig;->mBoardPlatform:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 692
    const/4 v4, 0x1

    .line 695
    .end local v1    # "board":Ljava/lang/String;
    :goto_1
    return v4

    .line 690
    .restart local v1    # "board":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "board":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static mFixedStartCameraDelayTimeInner()I
    .locals 1

    .prologue
    .line 661
    const/16 v0, 0xbb8

    return v0
.end method

.method public static proximityToNegtiveDebounce()J
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const-wide/16 v0, 0x2bc

    .line 326
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1f4

    goto :goto_0
.end method

.method public static setDebug([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 729
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 730
    const-string v0, "--debug"

    aget-object v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    const-string v0, "enabled"

    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    sput-boolean v2, Lcom/vivo/common/autobrightness/AblConfig;->DEBUG:Z

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    const-string v0, "disabled"

    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    sput-boolean v3, Lcom/vivo/common/autobrightness/AblConfig;->DEBUG:Z

    goto :goto_0
.end method
