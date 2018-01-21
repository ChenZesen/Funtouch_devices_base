.class public Lcom/vivo/common/autobrightness/AutoBrightnessManager;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;,
        Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;,
        Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;,
        Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;
    }
.end annotation


# static fields
.field private static final ALS_AFTER_ON_TIME_LIMIT:I

.field private static final CAMERA_DELAY_AFTER_ENABLE:J = 0x2bcL

.field private static final CAMERA_SCENE_RETYR_DELAY:I = 0x1388

.field private static final CAMERA_TIMEOUT_DEFAULT:I = 0xfa0

.field public static final CANCEL_REASON_CAMERA:I = 0x1

.field public static final DEFAULT_ENV_SCREEN_LEVEL:I = 0x7

.field private static LCM_PATH:Ljava/lang/String; = null

.field private static final LIGHT_SENSOR_DARKER_QUICK_DELAY:I

.field private static final LIGHT_SENSOR_DELAY:I

.field private static final LIGHT_SENSOR_NO_DELAY:I = 0x0

.field private static final LIGHT_SENSOR_QUICK_DELAY:I

.field public static final LUMA_SERVICE_FINISH:I = 0x3

.field public static final LUMA_SERVICE_RETRY:I = 0x5

.field public static final LUMA_SERVICE_START:I = 0x1

.field public static final LUMA_SERVICE_STOP:I = 0x2

.field public static final LUMA_SERVICE_TIMEOUT:I = 0x4

.field private static final MSG_CONTEXT_REGISTER_RECEIVER:I = 0x5

.field private static final MSG_LIGHT_SENSOR_DISABLE:I = 0x4

.field private static final MSG_LIGHT_SENSOR_ENABLE:I = 0x3

.field private static final MSG_OBJECT_UNCOVER_ACTION_TIMEOUT:I = 0x1

.field private static final MSG_USER_MODIFY_SETTING_BRIGHTNESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AutoBrightnessManager"

.field private static final TIME_UNKNOWN:I = -0x1

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final mLcmGetAutoBriSwich:Z

.field private static mScreenState:I

.field private static final mUseAlsMemory:Z

.field private static final mUseCameraLuma:Z

.field private static mUseWakeLight:Z


# instance fields
.field private bDimStatus:Z

.field private mApplyHistroy:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

.field private mAutoBacklightEnabled:Z

.field private mAutoBacklightEnabledTimeStamp:J

.field private mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

.field private mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

.field private mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

.field private mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

.field private mAutobacklightThread:Landroid/os/HandlerThread;

.field private mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

.field private mCallProximityStatus:Z

.field private mCameraDelayAfterEanble:Z

.field private mCameraDelayAfterRunnable:Ljava/lang/Runnable;

.field private mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;

.field private mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

.field private mCameraRetryHandler:Landroid/os/Handler;

.field private mCameraServiceHandler:Landroid/os/Handler;

.field private mCameraServiceRunnable:Ljava/lang/Runnable;

.field private mCameraServiceRunning:Z

.field private mCancelBrightnessHandler:Landroid/os/Handler;

.field private mCancelBrightnessRunnable:Ljava/lang/Runnable;

.field private mCollectConfiguration:Lcom/vivo/common/autobrightness/CollectConfiguration;

.field private mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

.field private mContext:Landroid/content/Context;

.field public mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

.field private mFlashLightReceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;

.field private mHallStatus:Z

.field private mHasObjectUncoverAction:Z

.field private mLastLightLux:I

.field private mLightController:Lcom/vivo/common/autobrightness/LightController;

.field private mLightDegree:I

.field private mLightHandler:Landroid/os/Handler;

.field private mLightLevel:I

.field private mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightLuxTimestamp:J

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorName:Ljava/lang/String;

.field private mLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

.field private mLock:Ljava/lang/Object;

.field private mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

.field public mLumaResultCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;

.field private mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;

.field private mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

.field public mPreLightCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;

.field private mPreLightSensorEvent:Landroid/hardware/SensorEvent;

.field private mPreLoadingLightSensor:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

.field private mProximityChangedCount:I

.field private mProximityHandler:Landroid/os/Handler;

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityRunnable:Ljava/lang/Runnable;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityStatus:Z

.field private mProximityStatusDebounce:Z

.field private mProximityThreshold:F

.field private mProximityTimeStamp:J

.field private mRectifiedCoefficient:F

.field private mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

.field private mSceneCameraRetryRunnable:Ljava/lang/Runnable;

.field private mSceneRecognition:Lcom/vivo/common/autobrightness/SceneRecognition;

.field private mScreenLevel:I

.field private mScreenOnTime:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShutdownRebootReceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;

.field public mStateChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

.field public mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

.field private mSuperPowerSavingMode:Z

.field private mSuperPowerSavingModeOpen:Z

.field private mSuperPowerSavingreceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;

.field private mSwapAutoBrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

.field private mUserBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

.field public mUserChangeBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;

.field private mWaitFirstLightLux:Z

.field private mWasHasObjectUncoverAction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseAlsMemory()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseAlsMemory:Z

    .line 51
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseCameraLuma()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseCameraLuma:Z

    .line 52
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isLcmGetAutoBriSwitch()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLcmGetAutoBriSwich:Z

    .line 62
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getFirstFewSeconds()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->ALS_AFTER_ON_TIME_LIMIT:I

    .line 64
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLightSensorQcuickDebounce()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_QUICK_DELAY:I

    .line 65
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLightSensorDarkerQuickDebounce()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_DARKER_QUICK_DELAY:I

    .line 66
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLightSensorDebounce()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_DELAY:I

    .line 133
    sget v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenState:I

    .line 152
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseWakeLightSensor()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseWakeLight:Z

    .line 153
    const-string v0, "/sys/lcm/oled_auto_bkg"

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LCM_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "callback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v6, -0x1

    const/4 v5, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z

    .line 92
    iput-wide v6, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityTimeStamp:J

    .line 93
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatusDebounce:Z

    .line 94
    iput v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityChangedCount:I

    .line 98
    iput-wide v6, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J

    .line 100
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHallStatus:Z

    .line 101
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCallProximityStatus:Z

    .line 104
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHasObjectUncoverAction:Z

    .line 105
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWasHasObjectUncoverAction:Z

    .line 106
    iput-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .line 107
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingModeOpen:Z

    .line 109
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    .line 110
    iput-wide v6, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J

    .line 111
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    .line 112
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLastLightLux:I

    .line 118
    const/4 v1, 0x4

    iput v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    .line 119
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z

    .line 129
    new-instance v1, Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-direct {v1}, Lcom/vivo/common/autobrightness/LumaInfo;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    .line 130
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;

    .line 132
    iput-wide v6, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenOnTime:J

    .line 135
    new-instance v1, Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-direct {v1}, Lcom/vivo/common/autobrightness/AutobrightInfo;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    .line 136
    new-instance v1, Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-direct {v1}, Lcom/vivo/common/autobrightness/AutobrightInfo;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSwapAutoBrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    .line 137
    const/4 v1, 0x1

    iput v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLevel:I

    .line 138
    const/4 v1, 0x7

    iput v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenLevel:I

    .line 139
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;

    invoke-direct {v1, p0, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mShutdownRebootReceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;

    .line 140
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;

    invoke-direct {v1, p0, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingreceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;

    .line 141
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;

    invoke-direct {v1, p0, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mFlashLightReceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;

    .line 144
    const-string v1, "unkown"

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensorName:Ljava/lang/String;

    .line 145
    iput v8, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRectifiedCoefficient:F

    .line 146
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->bDimStatus:Z

    .line 147
    iput-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLoadingLightSensor:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    .line 148
    iput-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLightSensorEvent:Landroid/hardware/SensorEvent;

    .line 149
    iput-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    .line 150
    iput-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mApplyHistroy:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    .line 269
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityRunnable:Ljava/lang/Runnable;

    .line 305
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$2;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$2;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunnable:Ljava/lang/Runnable;

    .line 316
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$3;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$3;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCancelBrightnessRunnable:Ljava/lang/Runnable;

    .line 328
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$4;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$4;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterRunnable:Ljava/lang/Runnable;

    .line 337
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$5;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;

    .line 382
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$6;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 489
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$7;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 527
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$8;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$8;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUserChangeBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;

    .line 541
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$9;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    .line 662
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$10;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mStateChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

    .line 688
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$11;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaResultCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;

    .line 724
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$12;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$12;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    .line 889
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$13;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLightCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;

    .line 1467
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$14;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$14;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUserBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    .line 831
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;

    .line 832
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCollectConfiguration:Lcom/vivo/common/autobrightness/CollectConfiguration;

    .line 833
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AutobacklightThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    .line 834
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 835
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityHandler:Landroid/os/Handler;

    .line 836
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightHandler:Landroid/os/Handler;

    .line 837
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceHandler:Landroid/os/Handler;

    .line 838
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;

    .line 839
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCancelBrightnessHandler:Landroid/os/Handler;

    .line 840
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    .line 841
    new-instance v1, Lcom/vivo/common/autobrightness/LuxMedian;

    invoke-direct {v1}, Lcom/vivo/common/autobrightness/LuxMedian;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;

    .line 842
    new-instance v1, Lcom/vivo/common/autobrightness/LightTendency;

    invoke-direct {v1}, Lcom/vivo/common/autobrightness/LightTendency;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

    .line 843
    new-instance v1, Lcom/vivo/common/autobrightness/LightController;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    invoke-direct {v1, p1, v2}, Lcom/vivo/common/autobrightness/LightController;-><init>(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;

    .line 844
    new-instance v1, Lcom/vivo/common/autobrightness/CameraParamLumaController;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mStateChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

    invoke-direct {v1, p1, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;-><init>(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    .line 845
    new-instance v1, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaResultCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;

    invoke-direct {v1, p1, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;-><init>(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .line 846
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUserChangeBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;

    invoke-static {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->getInstance(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;)Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .line 847
    new-instance v1, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    invoke-direct {v1, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    .line 848
    new-instance v1, Lcom/vivo/common/autobrightness/SceneRecognition;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    invoke-direct {v1, p1, v2}, Lcom/vivo/common/autobrightness/SceneRecognition;-><init>(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneRecognition:Lcom/vivo/common/autobrightness/SceneRecognition;

    .line 849
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vivo/common/autobrightness/CollectUseData;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/vivo/common/autobrightness/CollectUseData;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    .line 850
    iput-object p3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    .line 851
    iput-object p2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 852
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 853
    new-instance v1, Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLightCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;

    iget-object v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;-><init>(Landroid/hardware/SensorManager;Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLoadingLightSensor:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    .line 854
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .line 855
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUserBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->setUserBrightnessCallback(Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;)V

    .line 856
    new-instance v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    .line 857
    new-instance v1, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobacklightThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mApplyHistroy:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    .line 859
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_2

    .line 860
    const-string v1, "AutoBrightnessManager"

    const-string v2, "AutoBrightnessFATAL:mProximitySensor is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityThreshold:F

    .line 865
    :goto_0
    sget-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseWakeLight:Z

    if-eqz v1, :cond_3

    .line 866
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensor:Landroid/hardware/Sensor;

    .line 871
    :goto_1
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 872
    const-string v1, "AutoBrightnessManager"

    const-string v2, "AutoBrightnessFATAL:mLightSensor is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 875
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 877
    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensorName:Ljava/lang/String;

    .line 881
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensorName:Ljava/lang/String;

    invoke-static {v1}, Lcom/vivo/common/autobrightness/AblConfig;->getRectifiedCoefficient(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRectifiedCoefficient:F

    .line 882
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v1, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->removeMessages(I)V

    .line 883
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v1, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->sendEmptyMessage(I)Z

    .line 885
    const-string v1, "AutoBrightnessManager constructer finished"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 887
    return-void

    .line 863
    :cond_2
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityThreshold:F

    goto :goto_0

    .line 869
    :cond_3
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensor:Landroid/hardware/Sensor;

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->setLightSensorEnabledInner(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mShutdownRebootReceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mFlashLightReceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingreceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatusDebounce:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatusDebounce:Z

    return p1
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseCameraLuma:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightController;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLastLightLux:I

    return v0
.end method

.method static synthetic access$2002(Lcom/vivo/common/autobrightness/AutoBrightnessManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLastLightLux:I

    return p1
.end method

.method static synthetic access$2100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    return v0
.end method

.method static synthetic access$2102(Lcom/vivo/common/autobrightness/AutoBrightnessManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    return p1
.end method

.method static synthetic access$2200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCancelBrightnessRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCancelBrightnessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/vivo/common/autobrightness/AutoBrightnessManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenOnTime:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 48
    invoke-static {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->msgToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->shouldStartCameraLuma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/SceneRecognition;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneRecognition:Lcom/vivo/common/autobrightness/SceneRecognition;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaController;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->isLuxValid(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/vivo/common/autobrightness/AutoBrightnessManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LuxMedian;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LightTendency;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLevel:I

    return v0
.end method

.method static synthetic access$4502(Lcom/vivo/common/autobrightness/AutoBrightnessManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLevel:I

    return p1
.end method

.method static synthetic access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSwapAutoBrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/LumaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;IILcom/vivo/common/autobrightness/LumaInfo;Lcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/vivo/common/autobrightness/LumaInfo;
    .param p4, "x4"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->calcScreenLevel(IILcom/vivo/common/autobrightness/LumaInfo;Lcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHasObjectUncoverAction:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;IILcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->calcScreenLevel(IILcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHasObjectUncoverAction:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingMode:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->getAutoBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->calcDelayTime(Lcom/vivo/common/autobrightness/AutobrightInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityChangedCount:I

    return v0
.end method

.method static synthetic access$5408(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityChangedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityChangedCount:I

    return v0
.end method

.method static synthetic access$5500(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingModeOpen:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$5700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessProvider;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$6000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->isFirstFewSeconds()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_QUICK_DELAY:I

    return v0
.end method

.method static synthetic access$6202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Landroid/hardware/SensorEvent;)Landroid/hardware/SensorEvent;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLightSensorEvent:Landroid/hardware/SensorEvent;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    return v0
.end method

.method static synthetic access$6400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$6500()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenState:I

    return v0
.end method

.method static synthetic access$700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWasHasObjectUncoverAction:Z

    return v0
.end method

.method static synthetic access$702(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWasHasObjectUncoverAction:Z

    return p1
.end method

.method static synthetic access$800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CollectUseData;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private calcDelayTime(Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    .locals 6
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    const/4 v5, 0x0

    .line 1068
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_DELAY:I

    .line 1069
    .local v1, "delay":I
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    invoke-interface {v2}, Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;->getCurrentAutoBrightness()I

    move-result v0

    .line 1070
    .local v0, "autoBright":I
    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    if-eqz v2, :cond_1

    .line 1071
    const/4 v1, 0x0

    .line 1072
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    .line 1098
    :cond_0
    :goto_0
    return v1

    .line 1073
    :cond_1
    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-eq v2, v0, :cond_2

    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->isFirstFewSeconds()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1074
    :cond_3
    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingMode:Z

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-lt v2, v0, :cond_0

    .line 1076
    :cond_4
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_QUICK_DELAY:I

    goto :goto_0

    .line 1078
    :cond_5
    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->bDimStatus:Z

    if-eqz v2, :cond_6

    .line 1079
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_QUICK_DELAY:I

    .line 1080
    const-string v2, "AutoBrightnessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calcDelayTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_QUICK_DELAY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->bDimStatus:Z

    goto :goto_0

    .line 1082
    :cond_6
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseFixedDelayTime()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1083
    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-le v2, v0, :cond_0

    .line 1084
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getFixedBrightDelayTime()I

    move-result v1

    .line 1085
    iput v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityChangedCount:I

    goto :goto_0

    .line 1088
    :cond_7
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/LightTendency;->isTendencyTriggered()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUse2048GrayScaleBacklight()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1089
    :cond_8
    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-ge v2, v0, :cond_9

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z

    if-nez v2, :cond_9

    .line 1092
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_DARKER_QUICK_DELAY:I

    goto :goto_0

    .line 1093
    :cond_9
    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-le v2, v0, :cond_0

    .line 1094
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LIGHT_SENSOR_QUICK_DELAY:I

    goto :goto_0
.end method

.method private calcScreenLevel(IILcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    .locals 3
    .param p1, "lightLevel"    # I
    .param p2, "lux"    # I
    .param p3, "currentAutoInfo"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 906
    new-instance v0, Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/AutobrightInfo;-><init>()V

    .line 908
    .local v0, "abInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calcScreenLevel lightLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentAutoInfo.mScreenLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 910
    iput p1, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    .line 911
    iput p1, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 912
    iput p2, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    .line 914
    iget v1, p3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget v2, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    if-eq v1, v2, :cond_0

    .line 915
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->notifyStateChanged(I)V

    .line 917
    :cond_0
    return-object v0
.end method

.method private calcScreenLevel(IILcom/vivo/common/autobrightness/LumaInfo;Lcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    .locals 8
    .param p1, "lightLevel"    # I
    .param p2, "lux"    # I
    .param p3, "lumaInfo"    # Lcom/vivo/common/autobrightness/LumaInfo;
    .param p4, "currentAutoInfo"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 923
    new-instance v0, Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/AutobrightInfo;-><init>()V

    .line 925
    .local v0, "abInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-virtual {p3}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaLevel()I

    move-result v1

    .line 926
    .local v1, "camLevel":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcScreenLevel lightLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mWaitFirstLightLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLightDegree="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    invoke-static {v6}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCameraServiceRunning="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcScreenLevel lumaInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/vivo/common/autobrightness/LumaInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCameraDelayAfterEanble="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 929
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcScreenLevel currentAutoInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 930
    const/4 v5, 0x2

    if-gt p2, v5, :cond_8

    iget-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    if-eqz v5, :cond_8

    .line 931
    iget v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRectifiedCoefficient:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    .line 932
    .local v2, "coeff":F
    :goto_0
    const/high16 v5, 0x3fc00000    # 1.5f

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 933
    :cond_0
    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v2

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 934
    .local v3, "fluctuationThreshold":I
    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    const/4 v6, 0x7

    if-gt v5, v6, :cond_7

    .line 935
    invoke-virtual {p3}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaValid()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    sub-int v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v3, :cond_1

    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    const/4 v5, 0x1

    if-ge p2, v5, :cond_2

    :cond_1
    iget-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z

    if-eqz v5, :cond_6

    .line 937
    :cond_2
    iget p1, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    .line 938
    iget v4, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 939
    .local v4, "screenLevel":I
    iget v1, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    .line 1035
    .end local v2    # "coeff":F
    .end local v3    # "fluctuationThreshold":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcScreenLevel lightLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " camLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " screenLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentAutoInfo.mScreenLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 1037
    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    if-le v5, v4, :cond_3

    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    const/4 v6, 0x7

    if-gt v5, v6, :cond_3

    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    sub-int/2addr v5, v4

    const/4 v6, 0x2

    if-gt v5, v6, :cond_3

    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->isFirstFewSeconds()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1041
    :cond_3
    iput p1, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    .line 1042
    iput v1, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    .line 1043
    iput v4, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 1049
    :goto_2
    iput p2, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    .line 1051
    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget v6, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    if-eq v5, v6, :cond_4

    .line 1052
    iget-object v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    const/16 v6, 0x1a

    invoke-virtual {v5, v6}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->notifyStateChanged(I)V

    .line 1054
    :cond_4
    return-object v0

    .line 931
    .end local v4    # "screenLevel":I
    :cond_5
    iget v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRectifiedCoefficient:F

    goto/16 :goto_0

    .line 941
    .restart local v2    # "coeff":F
    .restart local v3    # "fluctuationThreshold":I
    :cond_6
    const/4 p1, 0x0

    .line 942
    const/4 v4, 0x0

    .line 943
    .restart local v4    # "screenLevel":I
    const/4 v1, 0x0

    .line 944
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaLevel(I)V

    goto :goto_1

    .line 948
    .end local v4    # "screenLevel":I
    :cond_7
    const/4 v4, 0x0

    .line 949
    .restart local v4    # "screenLevel":I
    const/4 p1, 0x0

    .line 950
    const/4 v1, 0x0

    .line 951
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaLevel(I)V

    goto :goto_1

    .line 953
    .end local v2    # "coeff":F
    .end local v3    # "fluctuationThreshold":I
    .end local v4    # "screenLevel":I
    :cond_8
    const/4 v5, 0x2

    if-le p2, v5, :cond_a

    const/16 v5, 0x14

    if-ge p2, v5, :cond_a

    iget-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    if-eqz v5, :cond_a

    .line 954
    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    const/4 v6, 0x7

    if-gt v5, v6, :cond_9

    .line 955
    iget p1, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    .line 956
    iget v4, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 957
    .restart local v4    # "screenLevel":I
    iget v1, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    goto/16 :goto_1

    .line 959
    .end local v4    # "screenLevel":I
    :cond_9
    const/4 p1, 0x0

    .line 960
    const/4 v4, 0x3

    .line 961
    .restart local v4    # "screenLevel":I
    const/4 v1, 0x3

    .line 962
    const/4 v5, 0x3

    invoke-virtual {p3, v5}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaLevel(I)V

    goto/16 :goto_1

    .line 964
    .end local v4    # "screenLevel":I
    :cond_a
    const/4 v5, 0x2

    if-gt p2, v5, :cond_b

    iget v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_b

    iget-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingMode:Z

    if-eqz v5, :cond_b

    .line 965
    const/4 v4, 0x0

    .line 966
    .restart local v4    # "screenLevel":I
    const/4 p1, 0x0

    .line 967
    const/4 v1, 0x0

    .line 968
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaLevel(I)V

    goto/16 :goto_1

    .line 970
    .end local v4    # "screenLevel":I
    :cond_b
    iget v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_10

    iget-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z

    if-nez v5, :cond_10

    iget-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z

    if-nez v5, :cond_10

    .line 972
    invoke-virtual {p3}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaValid()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z

    if-eqz v5, :cond_f

    .line 973
    :cond_c
    invoke-virtual {p3}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaTimeout()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 975
    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    const/4 v6, 0x7

    if-lt v5, v6, :cond_d

    .line 976
    const/4 p1, 0x0

    .line 977
    const/4 v4, 0x3

    .line 978
    .restart local v4    # "screenLevel":I
    const/4 v1, 0x3

    .line 979
    const/4 v5, 0x3

    invoke-virtual {p3, v5}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaLevel(I)V

    .line 980
    const-string v5, "AutoBrightnessManager"

    const-string v6, "camera time out,force let screen level to 3"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaTimeout(Z)V

    goto/16 :goto_1

    .line 983
    .end local v4    # "screenLevel":I
    :cond_d
    iget v4, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 984
    .restart local v4    # "screenLevel":I
    const-string v5, "AutoBrightnessManager"

    const-string v6, "camera time out,but screen level less than 7,same as last screen level"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 989
    .end local v4    # "screenLevel":I
    :cond_e
    iget v4, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .restart local v4    # "screenLevel":I
    goto/16 :goto_1

    .line 992
    .end local v4    # "screenLevel":I
    :cond_f
    move v4, v1

    .restart local v4    # "screenLevel":I
    goto/16 :goto_1

    .line 994
    .end local v4    # "screenLevel":I
    :cond_10
    iget v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_11

    iget-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z

    if-eqz v5, :cond_11

    .line 996
    iget v4, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .restart local v4    # "screenLevel":I
    goto/16 :goto_1

    .line 1007
    .end local v4    # "screenLevel":I
    :cond_11
    iget-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z

    if-eqz v5, :cond_12

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityTimeStamp:J

    invoke-direct {p0, v6, v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->isAroundFewSeconds(J)Z

    move-result v5

    if-eqz v5, :cond_12

    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    if-gt p1, v5, :cond_12

    .line 1010
    iget v4, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .restart local v4    # "screenLevel":I
    goto/16 :goto_1

    .line 1011
    .end local v4    # "screenLevel":I
    :cond_12
    iget-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z

    if-eqz v5, :cond_13

    .line 1014
    iget v4, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .restart local v4    # "screenLevel":I
    goto/16 :goto_1

    .line 1015
    .end local v4    # "screenLevel":I
    :cond_13
    if-nez p1, :cond_14

    iget v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_14

    .line 1018
    iget v4, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 1019
    .restart local v4    # "screenLevel":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "it can not be changed ! as lightlevel ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mLightDegree ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1020
    .end local v4    # "screenLevel":I
    :cond_14
    const/16 v5, 0x320

    if-le p2, v5, :cond_15

    iget v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_15

    invoke-virtual {p3}, Lcom/vivo/common/autobrightness/LumaInfo;->getIndexValue()I

    move-result v5

    const/16 v6, 0x96

    if-ge v5, v6, :cond_15

    .line 1022
    const/16 v4, 0xa

    .restart local v4    # "screenLevel":I
    goto/16 :goto_1

    .line 1024
    .end local v4    # "screenLevel":I
    :cond_15
    invoke-virtual {p3}, Lcom/vivo/common/autobrightness/LumaInfo;->getIndexValue()I

    move-result v5

    const/16 v6, 0x96

    if-ge v5, v6, :cond_16

    .line 1025
    const/16 v5, 0x1f4

    invoke-virtual {p3, v5}, Lcom/vivo/common/autobrightness/LumaInfo;->setIndexValue(I)V

    .line 1026
    :cond_16
    add-int/lit8 v4, p1, 0x6

    .restart local v4    # "screenLevel":I
    goto/16 :goto_1

    .line 1045
    :cond_17
    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    iput v5, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    .line 1046
    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    iput v5, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    .line 1047
    iget v5, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iput v5, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    goto/16 :goto_2
.end method

.method private collectUseDuration(JJ)V
    .locals 13
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 1457
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectUseDuration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    const-string v0, "collectUseDuration: not configed."

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 1465
    :goto_0
    return-void

    .line 1462
    :cond_0
    new-instance v1, Lcom/vivo/common/autobrightness/DataParameter;

    const-string v2, "1005"

    const-string v3, "10051"

    sub-long v8, p3, p1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v1 .. v11}, Lcom/vivo/common/autobrightness/DataParameter;-><init>(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 1463
    .local v1, "data":Lcom/vivo/common/autobrightness/DataParameter;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectUseDuration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/DataParameter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/CollectUseData;->sendDataParameter(Lcom/vivo/common/autobrightness/DataParameter;)V

    goto :goto_0
.end method

.method private collectUserBrightness(I)V
    .locals 13
    .param p1, "brightness"    # I

    .prologue
    const/4 v12, 0x2

    .line 1345
    if-lez p1, :cond_1

    .line 1346
    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    if-eqz v2, :cond_3

    .line 1347
    new-instance v11, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v11, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1348
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "setbright"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    const-string v2, "autobright"

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget p1, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    .end local p1    # "brightness":I
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    const-string v3, "autoinfo"

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    new-instance v1, Lcom/vivo/common/autobrightness/DataParameter;

    const-string v2, "1005"

    const-string v3, "10054"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v1 .. v11}, Lcom/vivo/common/autobrightness/DataParameter;-><init>(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 1353
    .local v1, "data":Lcom/vivo/common/autobrightness/DataParameter;
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v2, v12}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->removeMessages(I)V

    .line 1354
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v2, v12}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1355
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1356
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v0, v4, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1363
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "data":Lcom/vivo/common/autobrightness/DataParameter;
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 1350
    .restart local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v2, "NULL"

    goto :goto_0

    .line 1359
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "brightness":I
    :cond_3
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    invoke-virtual {v2, p1}, Lcom/vivo/common/autobrightness/CollectUseData;->notifyBrightnessChanged(I)V

    goto :goto_1
.end method

.method private getAutoBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    .locals 1
    .param p1, "abinfo"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->getBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)I

    move-result v0

    return v0
.end method

.method private isAroundFewSeconds(J)Z
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1411
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenOnTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenOnTime:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget v2, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->ALS_AFTER_ON_TIME_LIMIT:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1412
    const/4 v0, 0x1

    .line 1414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFirstFewSeconds()Z
    .locals 8

    .prologue
    .line 1419
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1420
    .local v2, "now":J
    iget-wide v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenOnTime:J

    sub-long v0, v2, v4

    .line 1421
    .local v0, "diff":J
    iget-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenOnTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->ALS_AFTER_ON_TIME_LIMIT:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isLuxValid(J)Z
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 1128
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHallStatus:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenState:I

    sget v2, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1e

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 1131
    .local v0, "valid":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLuxValid(time)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 1132
    return v0

    .line 1128
    .end local v0    # "valid":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1102
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    const-string v0, "AutoBrightnessManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    return-void
.end method

.method private static msgToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "what"    # I

    .prologue
    .line 253
    packed-switch p0, :pswitch_data_0

    .line 265
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 255
    :pswitch_0
    const-string v0, "MSG_OBJECT_UNCOVER_ACTION_TIMEOUT"

    goto :goto_0

    .line 257
    :pswitch_1
    const-string v0, "MSG_USER_MODIFY_SETTING_BRIGHTNESS"

    goto :goto_0

    .line 259
    :pswitch_2
    const-string v0, "MSG_LIGHT_SENSOR_ENABLE"

    goto :goto_0

    .line 261
    :pswitch_3
    const-string v0, "MSG_LIGHT_SENSOR_ENABLE"

    goto :goto_0

    .line 263
    :pswitch_4
    const-string v0, "MSG_CONTEXT_REGISTER_RECEIVER"

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setLightSensorEnabledInner(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, -0x1

    const-wide/16 v2, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1151
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1152
    if-eqz p1, :cond_4

    .line 1153
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityTimeStamp:J

    .line 1154
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z

    .line 1155
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    invoke-virtual {v0, v5}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->setLigtSensorEnable(Z)V

    .line 1156
    iput v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityChangedCount:I

    .line 1157
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-virtual {v0, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setProximityStatus(Z)V

    .line 1158
    iput v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLastLightLux:I

    .line 1159
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    .line 1160
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/LightTendency;->reset()V

    .line 1161
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/LuxMedian;->reset()V

    .line 1162
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setLightSensorEnabled(Z)V

    .line 1163
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->setLightSensorEnable(Z)V

    .line 1164
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/LightController;->notifyStateChanged(I)V

    .line 1165
    invoke-virtual {p0, v6}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    .line 1166
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1167
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    .line 1168
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setDegree(I)V

    .line 1169
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    .line 1170
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    .line 1171
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z

    .line 1172
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1173
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1174
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLcmGetAutoBriSwich:Z

    if-eqz v0, :cond_0

    .line 1175
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->LCM_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/services/DeviceParaProvideService;->writeKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1176
    const-string v0, "AutoBrightnessManager"

    const-string v1, "mLcmGetAutoBriSwich enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_0
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHasObjectUncoverAction:Z

    if-eqz v0, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v0, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->removeMessages(I)V

    .line 1183
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getObjectUncoverActionTimeout()I

    move-result v1

    add-int/lit8 v1, v1, -0x32

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1185
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J

    .line 1186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J

    .line 1187
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1188
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneRecognition:Lcom/vivo/common/autobrightness/SceneRecognition;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/SceneRecognition;->start()V

    .line 1192
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLightSensorEvent:Landroid/hardware/SensorEvent;

    if-eqz v0, :cond_3

    .line 1193
    iget-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J

    const-wide/16 v2, 0x3c

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J

    .line 1194
    const-string v0, "AutoBrightnessManager"

    const-string v1, "setLightSensorEnabledInner mPreLightSensorEvent valid,call mLightListener.onSensorChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLightSensorEvent:Landroid/hardware/SensorEvent;

    invoke-interface {v0, v1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 1199
    :goto_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLoadingLightSensor:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    invoke-virtual {v0, v4}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->enablePreLightSensor(Z)V

    .line 1201
    const-string v0, "AutoBrightnessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightSensorEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    return v0

    .line 1197
    :cond_3
    const-string v0, "setLightSensorEnabledInner mPreLightSensorEvent is null."

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1203
    :cond_4
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setLightSensorEnabled(Z)V

    .line 1204
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->setLightSensorEnable(Z)V

    .line 1205
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    .line 1206
    invoke-virtual {p0, v6}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    .line 1207
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    .line 1208
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLoadingLightSensor:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    invoke-virtual {v0, v4}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->enablePreLightSensor(Z)V

    .line 1209
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z

    .line 1210
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1212
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J

    .line 1213
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z

    .line 1214
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityTimeStamp:J

    .line 1215
    iput-wide v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLuxTimestamp:J

    .line 1216
    iput v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLastLightLux:I

    .line 1217
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    .line 1218
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/LumaInfo;->setIndexValue(I)V

    .line 1219
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/LightController;->notifyStateChanged(I)V

    .line 1220
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1221
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1222
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneRecognition:Lcom/vivo/common/autobrightness/SceneRecognition;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/SceneRecognition;->reset()V

    .line 1223
    const-string v0, "AutoBrightnessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightSensorEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shouldStartCameraLuma()Z
    .locals 1

    .prologue
    .line 1340
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseCameraLuma:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public brightnessBeenApplied(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 1433
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1434
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/AutobrightInfo;->copyFrom(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 1439
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseCameraLuma()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1442
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;

    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v0, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v0, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    add-int/lit8 v0, v0, -0x6

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vivo/common/autobrightness/LightController;->setLightLevel(I)V

    .line 1451
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    const-string v0, "debug.luma.light_level"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v2, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v0, "debug.luma.screen_level"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v2, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    return-void

    .line 1442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1443
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1444
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectAutobrightApplyHistory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->isAutoBakclightAdjust()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1445
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mApplyHistroy:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->onNewInfoApplied(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 1447
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->brightnessBeenApplied(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    goto :goto_1

    .line 1451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1449
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v2, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/LightController;->setLightLevel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 157
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.build.type"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 164
    const-string v0, "==========================="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    const-string v0, "AutoBrightnessManager State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;

    invoke-interface {v1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;->getCurrentAutoBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutobrightInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/LightController;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLumaInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/LumaInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightDegree:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightDegree:I

    invoke-static {v1}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseCameraLuma:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseCameraLuma:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCameraServiceRunning:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLuxMedian:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLuxMedian:Lcom/vivo/common/autobrightness/LuxMedian;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/LuxMedian;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightTendency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/LightTendency;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCameraParamLumaController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string v0, "  AutoBrigtnessConfiguration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCollectConfiguration:Lcom/vivo/common/autobrightness/CollectConfiguration;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/CollectConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 181
    const-string v0, "==========================="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->dump(Ljava/io/PrintWriter;)V

    .line 183
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public getBrightnessRestoreStatus()Z
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->getBrightnessRestoreStatus()Z

    move-result v0

    .line 1526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpsModeBitFor1stEntrance()Z
    .locals 1

    .prologue
    .line 1534
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingModeOpen:Z

    return v0
.end method

.method public isLuxValid(II)Z
    .locals 3
    .param p1, "auto"    # I
    .param p2, "waiting"    # I

    .prologue
    .line 1115
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHallStatus:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenState:I

    sget v2, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1117
    .local v0, "valid":Z
    :goto_0
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1118
    if-le p1, p2, :cond_0

    .line 1120
    const/4 v0, 0x0

    .line 1123
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLuxValid()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHallStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lightEn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prox="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mProximityStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " auto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waiting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 1124
    return v0

    .line 1115
    .end local v0    # "valid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manualSetOnSensorChange(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 1531
    return-void
.end method

.method public notifyCameraParamLuma(Ljava/lang/String;)I
    .locals 1
    .param p1, "keyval"    # Ljava/lang/String;

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaReceiver:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->notifyCameraParamLuma(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public notifyScreenBrightness(I)I
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    const/4 v4, 0x0

    .line 1372
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingMode:Z

    if-nez v1, :cond_3

    .line 1373
    move v0, p1

    .line 1381
    .local v0, "ret":I
    :goto_0
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectDataVer2nd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1382
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->collectUserBrightness(I)V

    .line 1385
    :cond_0
    sget-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseCameraLuma:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseAlsMemory:Z

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenBrightness mAutobrightInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 1390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenBrightness mLumaInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/LumaInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 1391
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraServiceRunning:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLastLightLux:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLastLightLux:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v1, v1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 1394
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLightController:Lcom/vivo/common/autobrightness/LightController;

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/LightController;->setLightLevel(I)V

    .line 1395
    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1396
    :try_start_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    const/4 v3, 0x0

    iput v3, v1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    .line 1397
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    const/4 v3, 0x0

    iput v3, v1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 1398
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaValid(Z)V

    .line 1399
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaLevel(I)V

    .line 1400
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaValue(I)V

    .line 1401
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    const-string v1, "AutoBrightnessManager"

    const-string v2, "notifyScreenBrightness reset mAutobrightInfo."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->notifyStateChanged(I)I

    .line 1407
    :cond_2
    return v0

    .line 1374
    .end local v0    # "ret":I
    :cond_3
    sget-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mUseAlsMemory:Z

    if-eqz v1, :cond_4

    .line 1375
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->onBrihgtnessChangeObserved(IJ)I

    move-result v0

    .line 1376
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenBrightness mUseAlsMemory=true ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1378
    .end local v0    # "ret":I
    :cond_4
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    invoke-virtual {v1, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->onBrihgtnessChangeObserved(I)I

    move-result v0

    .line 1379
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenBrightness brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1401
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyStateChanged(I)I
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1244
    sparse-switch p1, :sswitch_data_0

    .line 1325
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessProvider:Lcom/vivo/common/autobrightness/AutoBrightnessProvider;

    invoke-virtual {v1, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->notifyStateChanged(I)V

    .line 1326
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;

    invoke-virtual {v1, p1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->notifyStateChanged(I)I

    move-result v1

    return v1

    .line 1246
    :sswitch_0
    sget v1, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    sput v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenState:I

    .line 1247
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    sget v2, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setScreenState(I)V

    .line 1248
    invoke-static {p1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->notifyStateChanged(I)V

    goto :goto_0

    .line 1251
    :sswitch_1
    const-string v1, "AutoBrightnessManager"

    const-string v2, "notifyStateChanged STATE_SCREEN_DIM"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->bDimStatus:Z

    .line 1253
    sget v1, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_DIM:I

    sput v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenState:I

    .line 1254
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    sget v2, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_DIM:I

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setScreenState(I)V

    goto :goto_0

    .line 1257
    :sswitch_2
    invoke-static {p1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->notifyStateChanged(I)V

    .line 1258
    const-string v1, "AutoBrightnessManager"

    const-string v2, "notifyStateChanged STATE_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->bDimStatus:Z

    .line 1260
    sget v1, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_OFF:I

    sput v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenState:I

    .line 1261
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    sget v2, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_OFF:I

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setScreenState(I)V

    .line 1262
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLoadingLightSensor:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    invoke-virtual {v1, v5}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->enablePreLightSensor(Z)V

    .line 1263
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->notifyStateChanged(I)V

    goto :goto_0

    .line 1267
    :sswitch_3
    sget v1, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_DOZE:I

    sput v1, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenState:I

    .line 1268
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrighnessRecorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    sget v2, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_DOZE:I

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setScreenState(I)V

    goto :goto_0

    .line 1272
    :sswitch_4
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHallStatus:Z

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->removeMessages(I)V

    .line 1274
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHasObjectUncoverAction:Z

    .line 1275
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getObjectUncoverActionTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1276
    const-string v1, "notifyStateChanged set mHasObjectUncoverAction as true because HALL_AWAY"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 1278
    :cond_1
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHallStatus:Z

    goto :goto_0

    .line 1282
    :sswitch_5
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHallStatus:Z

    goto :goto_0

    .line 1286
    :sswitch_6
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingMode:Z

    .line 1287
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingModeOpen:Z

    .line 1288
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->setPowerSaving(Z)V

    goto/16 :goto_0

    .line 1291
    :sswitch_7
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingMode:Z

    .line 1292
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWaitFirstLightLux:Z

    .line 1293
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    invoke-virtual {v1, v5}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->setPowerSaving(Z)V

    goto/16 :goto_0

    .line 1296
    :sswitch_8
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCallProximityStatus:Z

    if-eqz v1, :cond_2

    .line 1297
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->removeMessages(I)V

    .line 1298
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHasObjectUncoverAction:Z

    .line 1299
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getObjectUncoverActionTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1300
    const-string v1, "notifyStateChanged set mHasObjectUncoverAction as true because PROXIMITY_FAR"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 1302
    :cond_2
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCallProximityStatus:Z

    goto/16 :goto_0

    .line 1305
    :sswitch_9
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCallProximityStatus:Z

    goto/16 :goto_0

    .line 1309
    :sswitch_a
    invoke-static {p1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->notifyStateChanged(I)V

    .line 1310
    const-string v1, "AutoBrightnessManager"

    const-string v2, "notifyStateChanged STATE_BOOT_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1314
    .local v0, "bright":I
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectDataVer2nd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1315
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->collectUserBrightness(I)V

    goto/16 :goto_0

    .line 1320
    .end local v0    # "bright":I
    :sswitch_b
    const-string v1, "notifyStateChanged STATE_FINGERPRINT_BLOCK_AUTOBRIGHTNESS_ON"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V

    .line 1321
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mPreLoadingLightSensor:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->enablePreLightSensor(Z)V

    goto/16 :goto_0

    .line 1244
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x12 -> :sswitch_a
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1d -> :sswitch_3
        0x2711 -> :sswitch_b
    .end sparse-switch
.end method

.method public onDisplayStateChangedFinished(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1332
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z

    if-eqz v0, :cond_0

    .line 1333
    const-string v0, "AutoBrightnessManager"

    const-string v1, "onDisplayStateChangedFinished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1335
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraRetryHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSceneCameraRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1337
    :cond_0
    return-void
.end method

.method public onGetSettings(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "brightness"    # I
    .param p2, "mode"    # I
    .param p3, "offBy"    # Ljava/lang/String;
    .param p4, "changeBy"    # Ljava/lang/String;

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->onGetSettings(IILjava/lang/String;Ljava/lang/String;)V

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->onGetSettings(IILjava/lang/String;Ljava/lang/String;)V

    .line 1514
    return-void
.end method

.method public setBrightnessRestoreStatus(Z)V
    .locals 1
    .param p1, "bStatus"    # Z

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->setBrightnessRestoreStatus(Z)V

    .line 1520
    :cond_0
    return-void
.end method

.method public setDebug([Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 1235
    invoke-static {p1}, Lcom/vivo/common/autobrightness/AblConfig;->setDebug([Ljava/lang/String;)V

    .line 1236
    return-void
.end method

.method public setLightSensorEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 1135
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->removeMessages(I)V

    .line 1136
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v1, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->removeMessages(I)V

    .line 1138
    if-eqz p1, :cond_0

    .line 1139
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1140
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1141
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v1, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1147
    :goto_0
    return p1

    .line 1143
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1144
    .restart local v0    # "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1145
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBrightnessHandler:Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;

    invoke-virtual {v1, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setScreenOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1425
    if-eqz p1, :cond_0

    .line 1426
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenOnTime:J

    .line 1431
    :goto_0
    return-void

    .line 1428
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenOnTime:J

    goto :goto_0
.end method

.method public setSpsModeBitFor1stEntrance()V
    .locals 1

    .prologue
    .line 1538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingModeOpen:Z

    .line 1539
    return-void
.end method

.method public setUseAutoBrightness(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->setUseAutoBrightness(Z)V

    .line 1506
    :cond_0
    return-void
.end method
