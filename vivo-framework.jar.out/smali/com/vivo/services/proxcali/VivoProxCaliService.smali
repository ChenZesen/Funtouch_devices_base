.class public Lcom/vivo/services/proxcali/VivoProxCaliService;
.super Lcom/vivo/services/proxcali/IVivoProxCaliService$Stub;
.source "VivoProxCaliService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;,
        Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;
    }
.end annotation


# static fields
.field private static ALS_PARA_INDEX_PATH:Ljava/lang/String; = null

.field private static final APDS9960_PROXIMITY_RAW_MARGIN:I = 0xa

.field private static final BACKUP_TMP_BASE_THRESHOLD_SENSOR:Ljava/lang/String; = "persist.sys.backup_tmp_prox"

.field private static final BASE_THRESHOLD_SENSOR:Ljava/lang/String; = "persist.sys.base_threshold_prox"

.field private static BOARD_VERSION_PATH:Ljava/lang/String; = null

.field private static final COLLECT_DATA_EVENTID:Ljava/lang/String; = "1032"

.field private static final COLLECT_DATA_LABLE_FAILED:Ljava/lang/String; = "10322"

.field private static final COLLECT_DATA_LABLE_SUCCESS:Ljava/lang/String; = "10321"

.field private static final GP2AP052A_PROXIMITY_RAW_MARGIN:I = 0x190

.field private static final LIGHT_TIMES_LIMIT:I = 0xc

.field private static final MAX_CALI_RETRY_TIMES:I = 0x5

.field private static final MSG_PROX_OVERFLOW_CALI:I = 0x1

.field private static final NEED_CHANGE_PROXIMITY_PULSE:Ljava/lang/String; = "persist.sys.need_change_pulse"

.field private static PD1216_TOUCHPANEL_ID_PATH:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_A:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_B:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_C:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_D:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_E:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_F:Ljava/lang/String; = null

.field public static final PROXIMITY_BOOTUP_CALI:I = 0x0

.field public static final PROXIMITY_PHONE_CALI:I = 0x2

.field public static final PROXIMITY_POWERKEY_CALI:I = 0x1

.field private static final PROXIMITY_TIMES_LIMIT:I = 0xc

.field public static final PROXIMITY_UNKNOWN_CALI:I = -0x1

.field private static PS_PARA_INDEX_PATH:Ljava/lang/String; = null

.field private static PS_PULSE_VALUE_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VivoProxCaliService"

.field private static final TMD2772_PROXIMITY_RAW_MARGIN:I = 0x32

.field private static final TMP_BASE_THRESHOLD_SENSOR:Ljava/lang/String; = "persist.sys.tmp_base_thres_prox"

.field private static final TMP_CALI_MAX_VALUE_SENSOR:Ljava/lang/String; = "persist.sys.tmp_cali_max_value"

.field private static mCaliRetryTime:I

.field private static mCaliStartBy:I

.field private static mChangedPulseMannually:Z

.field private static mIsCalibrationing:Z

.field private static mIsUseVST:Z

.field private static mIsVerifying:Z

.field private static mNeedStopCali:Z

.field private static final mOpEntry:Ljava/lang/String;

.field private static final mProductId:Ljava/lang/String;


# instance fields
.field private final mBootCompleteFilter:Landroid/content/IntentFilter;

.field private final mBootPsCaliReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

.field private mIsCrystalAnim:Z

.field private mIsProxOverFlow:Z

.field private mLastPsCalData:I

.field private mLastSuccessPsCalData:I

.field private mLightCaliValue:F

.field private mLightCounts:I

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightThreshould:F

.field private mProxCaliThread:Landroid/os/HandlerThread;

.field private mProximityCaliValue:F

.field private mProximityCounts:I

.field private mProximityNonWakeSensor:Landroid/hardware/Sensor;

.field private mProximityNonWakeSensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityRawMax:F

.field private mProximityRawMini:F

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensorListenerVST:Landroid/hardware/SensorEventListener;

.field private mPsLockWhenOverFlow:Z

.field private mPsOverflowData:I

.field private final mScreenOffFilter:Landroid/content/IntentFilter;

.field private final mScreenOnFilter:Landroid/content/IntentFilter;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSetCaliHandler:Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;

.field private mSetCaliRunnable:Ljava/lang/Runnable;

.field private mStartCaliRunnable:Ljava/lang/Runnable;

.field private mStartHandler:Landroid/os/Handler;

.field private mStopCaliRunnable:Ljava/lang/Runnable;

.field private mStopHandler:Landroid/os/Handler;

.field private mTestArg:[I

.field private mTestResult:Lcom/sensoroperate/SensorTestResult;

.field public mVivoCollectData:Lcom/vivo/common/VivoCollectData;

.field private mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    sput-boolean v1, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    .line 57
    sput-boolean v1, Lcom/vivo/services/proxcali/VivoProxCaliService;->mNeedStopCali:Z

    .line 58
    sput-boolean v1, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsVerifying:Z

    .line 59
    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msm8974"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msm8952"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msm8994"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msm8996"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msm8226"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msm8916"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msm8937"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msm8953"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.board"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bbk82_lwt_kk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.board"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bbk92_lwt_kk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.board"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bbk82_lwt_cb_kk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.board"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bbk92_lwt_cb_kk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mt6752"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mt6735"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mt6580"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.board.platform"

    const-string v2, "un-known"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mt6750"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsUseVST:Z

    .line 89
    const/4 v0, -0x1

    sput v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliStartBy:I

    .line 90
    sput v1, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliRetryTime:I

    .line 91
    sput-boolean v1, Lcom/vivo/services/proxcali/VivoProxCaliService;->mChangedPulseMannually:Z

    .line 99
    const-string v0, "ro.product.model.bbk"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    .line 100
    const-string v0, "ro.vivo.op.entry"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mOpEntry:Ljava/lang/String;

    .line 106
    const-string v0, "/sys/networktype/networktype"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->BOARD_VERSION_PATH:Ljava/lang/String;

    .line 107
    const-string v0, "/sys/bus/platform/drivers/als_ps/als_para_index"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    .line 108
    const-string v0, "/sys/bus/platform/drivers/als_ps/ps_para_index"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    .line 109
    const-string v0, "/sys/bus/platform/drivers/als_ps/pulse"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    .line 111
    const-string v0, "1"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->PD1225_HARDWARE_VER_A:Ljava/lang/String;

    .line 112
    const-string v0, "2"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->PD1225_HARDWARE_VER_B:Ljava/lang/String;

    .line 113
    const-string v0, "3"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->PD1225_HARDWARE_VER_C:Ljava/lang/String;

    .line 115
    const-string v0, "4"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->PD1225_HARDWARE_VER_D:Ljava/lang/String;

    .line 116
    const-string v0, "5"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->PD1225_HARDWARE_VER_E:Ljava/lang/String;

    .line 117
    const-string v0, "6"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->PD1225_HARDWARE_VER_F:Ljava/lang/String;

    .line 119
    const-string v0, "/sys/touchscreen/firmware_module_id"

    sput-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->PD1216_TOUCHPANEL_ID_PATH:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 580
    invoke-direct {p0}, Lcom/vivo/services/proxcali/IVivoProxCaliService$Stub;-><init>()V

    .line 92
    iput v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    .line 93
    iput v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    .line 94
    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    .line 95
    iput v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    .line 96
    iput v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    .line 97
    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    .line 98
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F

    .line 122
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 123
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityNonWakeSensor:Landroid/hardware/Sensor;

    .line 124
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensor:Landroid/hardware/Sensor;

    .line 125
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->pm:Landroid/os/PowerManager;

    .line 126
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartHandler:Landroid/os/Handler;

    .line 129
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    .line 130
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSetCaliHandler:Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;

    .line 131
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 132
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensorListenerVST:Landroid/hardware/SensorEventListener;

    .line 133
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 136
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityNonWakeSensorListener:Landroid/hardware/SensorEventListener;

    .line 137
    iput-boolean v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsProxOverFlow:Z

    .line 138
    iput-boolean v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsLockWhenOverFlow:Z

    .line 140
    const/16 v0, 0x320

    iput v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I

    .line 143
    iput v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastPsCalData:I

    .line 144
    iput v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastSuccessPsCalData:I

    .line 147
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartCaliRunnable:Ljava/lang/Runnable;

    .line 148
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSetCaliRunnable:Ljava/lang/Runnable;

    .line 149
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    .line 152
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mBootCompleteFilter:Landroid/content/IntentFilter;

    .line 155
    new-instance v0, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;

    invoke-direct {v0, p0, v2}, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;-><init>(Lcom/vivo/services/proxcali/VivoProxCaliService;Lcom/vivo/services/proxcali/VivoProxCaliService$1;)V

    iput-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mBootPsCaliReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mScreenOnFilter:Landroid/content/IntentFilter;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 159
    invoke-static {}, Lcom/sensoroperate/VivoSensorTest;->getInstance()Lcom/sensoroperate/VivoSensorTest;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 160
    new-instance v0, Lcom/sensoroperate/SensorTestResult;

    invoke-direct {v0}, Lcom/sensoroperate/SensorTestResult;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    .line 163
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 166
    iput-boolean v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCrystalAnim:Z

    .line 581
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 585
    invoke-direct {p0}, Lcom/vivo/services/proxcali/IVivoProxCaliService$Stub;-><init>()V

    .line 92
    iput v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    .line 93
    iput v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    .line 94
    iput v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    .line 95
    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    .line 96
    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    .line 97
    iput v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    .line 98
    const/high16 v1, 0x43fa0000    # 500.0f

    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F

    .line 122
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 123
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityNonWakeSensor:Landroid/hardware/Sensor;

    .line 124
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensor:Landroid/hardware/Sensor;

    .line 125
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->pm:Landroid/os/PowerManager;

    .line 126
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartHandler:Landroid/os/Handler;

    .line 129
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    .line 130
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSetCaliHandler:Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;

    .line 131
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 132
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensorListenerVST:Landroid/hardware/SensorEventListener;

    .line 133
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 136
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityNonWakeSensorListener:Landroid/hardware/SensorEventListener;

    .line 137
    iput-boolean v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsProxOverFlow:Z

    .line 138
    iput-boolean v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsLockWhenOverFlow:Z

    .line 140
    const/16 v1, 0x320

    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I

    .line 143
    const/4 v1, -0x1

    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastPsCalData:I

    .line 144
    const/4 v1, -0x1

    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastSuccessPsCalData:I

    .line 147
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartCaliRunnable:Ljava/lang/Runnable;

    .line 148
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSetCaliRunnable:Ljava/lang/Runnable;

    .line 149
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    .line 152
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    .line 154
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mBootCompleteFilter:Landroid/content/IntentFilter;

    .line 155
    new-instance v1, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;

    invoke-direct {v1, p0, v2}, Lcom/vivo/services/proxcali/VivoProxCaliService$BootcompleteReceiverForPsCali;-><init>(Lcom/vivo/services/proxcali/VivoProxCaliService;Lcom/vivo/services/proxcali/VivoProxCaliService$1;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mBootPsCaliReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mScreenOnFilter:Landroid/content/IntentFilter;

    .line 157
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 159
    invoke-static {}, Lcom/sensoroperate/VivoSensorTest;->getInstance()Lcom/sensoroperate/VivoSensorTest;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 160
    new-instance v1, Lcom/sensoroperate/SensorTestResult;

    invoke-direct {v1}, Lcom/sensoroperate/SensorTestResult;-><init>()V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    .line 161
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    .line 163
    iput-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 166
    iput-boolean v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCrystalAnim:Z

    .line 586
    iput-object p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    .line 587
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "ProxCaliThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProxCaliThread:Landroid/os/HandlerThread;

    .line 588
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProxCaliThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 589
    const-string v1, "VivoProxCaliService"

    const-string v3, "call VivoProxCaliService constructor."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProxCaliThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartHandler:Landroid/os/Handler;

    .line 591
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProxCaliThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    .line 592
    new-instance v1, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProxCaliThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;-><init>(Lcom/vivo/services/proxcali/VivoProxCaliService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSetCaliHandler:Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;

    .line 594
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->pm:Landroid/os/PowerManager;

    .line 595
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 596
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 597
    invoke-static {}, Lcom/vivo/services/proxcali/VivoProxCaliService;->isOpEntry()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityNonWakeSensor:Landroid/hardware/Sensor;

    .line 598
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensor:Landroid/hardware/Sensor;

    .line 599
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->pm:Landroid/os/PowerManager;

    const-string v2, "VivoProxCaliService"

    invoke-virtual {v1, v7, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 602
    new-instance v1, Lcom/vivo/common/VivoCollectData;

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 604
    new-instance v1, Lcom/vivo/services/proxcali/VivoProxCaliService$1;

    invoke-direct {v1, p0}, Lcom/vivo/services/proxcali/VivoProxCaliService$1;-><init>(Lcom/vivo/services/proxcali/VivoProxCaliService;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 612
    new-instance v1, Lcom/vivo/services/proxcali/VivoProxCaliService$2;

    invoke-direct {v1, p0}, Lcom/vivo/services/proxcali/VivoProxCaliService$2;-><init>(Lcom/vivo/services/proxcali/VivoProxCaliService;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensorListenerVST:Landroid/hardware/SensorEventListener;

    .line 620
    new-instance v1, Lcom/vivo/services/proxcali/VivoProxCaliService$3;

    invoke-direct {v1, p0}, Lcom/vivo/services/proxcali/VivoProxCaliService$3;-><init>(Lcom/vivo/services/proxcali/VivoProxCaliService;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityNonWakeSensorListener:Landroid/hardware/SensorEventListener;

    .line 657
    new-instance v1, Lcom/vivo/services/proxcali/VivoProxCaliService$4;

    invoke-direct {v1, p0}, Lcom/vivo/services/proxcali/VivoProxCaliService$4;-><init>(Lcom/vivo/services/proxcali/VivoProxCaliService;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 678
    new-instance v1, Lcom/vivo/services/proxcali/VivoProxCaliService$5;

    invoke-direct {v1, p0}, Lcom/vivo/services/proxcali/VivoProxCaliService$5;-><init>(Lcom/vivo/services/proxcali/VivoProxCaliService;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartCaliRunnable:Ljava/lang/Runnable;

    .line 691
    new-instance v1, Lcom/vivo/services/proxcali/VivoProxCaliService$6;

    invoke-direct {v1, p0}, Lcom/vivo/services/proxcali/VivoProxCaliService$6;-><init>(Lcom/vivo/services/proxcali/VivoProxCaliService;)V

    iput-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    .line 703
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mBootPsCaliReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mBootCompleteFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 704
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mBootPsCaliReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mScreenOnFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 705
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mBootPsCaliReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mScreenOffFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 707
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    const/16 v2, 0x2f

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    array-length v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    .line 708
    const-string v1, "VivoProxCaliService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get temp para "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    invoke-virtual {v3}, Lcom/sensoroperate/SensorTestResult;->dumpString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    iget v1, v1, Lcom/sensoroperate/SensorTestResult;->mSuccess:I

    if-ne v1, v7, :cond_0

    .line 710
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    iget-object v1, v1, Lcom/sensoroperate/SensorTestResult;->mMaxBase:[F

    aget v1, v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I

    .line 711
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    iget-object v1, v1, Lcom/sensoroperate/SensorTestResult;->mMaxBase:[F

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "strTmpcCaliMaxVal":Ljava/lang/String;
    const-string v1, "persist.sys.tmp_cali_max_value"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v1, "VivoProxCaliService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set ps overflow cali : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .end local v0    # "strTmpcCaliMaxVal":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityNonWakeSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityNonWakeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 718
    return-void

    :cond_1
    move-object v1, v2

    .line 597
    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/vivo/services/proxcali/VivoProxCaliService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;
    .param p1, "x1"    # F

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->onPsSensorChanged(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vivo/services/proxcali/VivoProxCaliService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/services/proxcali/VivoProxCaliService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->getPsDataFromKernel()V

    return-void
.end method

.method static synthetic access$1400(Lcom/vivo/services/proxcali/VivoProxCaliService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    return v0
.end method

.method static synthetic access$1412(Lcom/vivo/services/proxcali/VivoProxCaliService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    return v0
.end method

.method static synthetic access$1500(Lcom/vivo/services/proxcali/VivoProxCaliService;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F

    return v0
.end method

.method static synthetic access$1616(Lcom/vivo/services/proxcali/VivoProxCaliService;F)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    return v0
.end method

.method static synthetic access$1700(Lcom/vivo/services/proxcali/VivoProxCaliService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    return v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsVerifying:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/services/proxcali/VivoProxCaliService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsProxOverFlow:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/vivo/services/proxcali/VivoProxCaliService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->verifyCalibrationValue()V

    return-void
.end method

.method static synthetic access$202(Lcom/vivo/services/proxcali/VivoProxCaliService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsProxOverFlow:Z

    return p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsUseVST:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/vivo/services/proxcali/VivoProxCaliService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->enableCalibrationUseVST(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/vivo/services/proxcali/VivoProxCaliService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->enableCalibration(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/vivo/services/proxcali/VivoProxCaliService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCrystalAnim:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/vivo/services/proxcali/VivoProxCaliService;)Lcom/sensoroperate/VivoSensorTest;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    return-object v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mNeedStopCali:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/vivo/services/proxcali/VivoProxCaliService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastPsCalData:I

    return p1
.end method

.method static synthetic access$2800(Lcom/vivo/services/proxcali/VivoProxCaliService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/vivo/services/proxcali/VivoProxCaliService;)Lcom/sensoroperate/SensorTestResult;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/services/proxcali/VivoProxCaliService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I

    return v0
.end method

.method static synthetic access$400(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/services/proxcali/VivoProxCaliService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsLockWhenOverFlow:Z

    return v0
.end method

.method static synthetic access$502(Lcom/vivo/services/proxcali/VivoProxCaliService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsLockWhenOverFlow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vivo/services/proxcali/VivoProxCaliService;)Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSetCaliHandler:Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;

    return-object v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 51
    sput p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliStartBy:I

    return p0
.end method

.method static synthetic access$800(Lcom/vivo/services/proxcali/VivoProxCaliService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartCaliRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/services/proxcali/VivoProxCaliService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/proxcali/VivoProxCaliService;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeProximityPulse(FII)V
    .locals 7
    .param p1, "cali"    # F
    .param p2, "base"    # I
    .param p3, "max"    # I

    .prologue
    .line 723
    const-string v0, "replace"

    .line 724
    .local v0, "productHardwareVer":Ljava/lang/String;
    const-string v3, "replace"

    .line 725
    .local v3, "proximityPulseVal":Ljava/lang/String;
    const-string v4, "persist.sys.base_threshold_prox"

    invoke-static {v4, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 726
    .local v1, "proxCaliBase":I
    const-string v4, "persist.sys.ps_cali_flag"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 728
    .local v2, "proxCaliFlag":I
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 730
    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1225"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->PD1225_HARDWARE_VER_F:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->PD1225_HARDWARE_VER_D:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string v4, "8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    int-to-float v4, p3

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    const v4, 0x447f8000    # 1022.0f

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    if-eq v1, p2, :cond_1

    if-nez v2, :cond_2

    .line 738
    :cond_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mChangedPulseMannually:Z

    .line 739
    const-string v4, "VivoProxCaliService"

    const-string v5, "change proximity to pulse 4,and change als/ps index to 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :goto_0
    return-void

    .line 742
    :cond_2
    const-string v4, "VivoProxCaliService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no need to change pulse: mProductId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " productHardwareVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " proximityPulseVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " max="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " base="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " proxCaliFlag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doPsCaliUseVST(Lcom/sensoroperate/SensorTestResult;)V
    .locals 14
    .param p1, "mRes"    # Lcom/sensoroperate/SensorTestResult;

    .prologue
    const/16 v7, 0x1f4

    const/16 v6, 0x22

    const/4 v10, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 246
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    const/16 v2, 0x24

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    .line 249
    iget v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    const v2, 0x459c4000    # 5000.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 251
    iput v4, p1, Lcom/sensoroperate/SensorTestResult;->mSuccess:I

    .line 252
    const-string v1, "VivoProxCaliService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLightCaliValue ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget v1, p1, Lcom/sensoroperate/SensorTestResult;->mSuccess:I

    if-ne v1, v10, :cond_3

    .line 255
    iget-object v1, p1, Lcom/sensoroperate/SensorTestResult;->mTestVal:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 256
    .local v13, "strVal":Ljava/lang/String;
    iget-object v1, p1, Lcom/sensoroperate/SensorTestResult;->mDefBase:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 257
    .local v0, "defBase":I
    const-string v1, "persist.sys.tmp_base_thres_prox"

    invoke-static {v1, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "persist.sys.backup_tmp_prox"

    invoke-static {v1, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p1, Lcom/sensoroperate/SensorTestResult;->mTestVal:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastSuccessPsCalData:I

    .line 260
    iget-object v1, p1, Lcom/sensoroperate/SensorTestResult;->mTestVal:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastPsCalData:I

    .line 261
    const-string v1, "VivoProxCaliService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setprop persist.sys.tmp_base_thres_prox "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v1, "VivoProxCaliService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPsCaliUseVST success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sensoroperate/SensorTestResult;->dumpString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    aput v4, v1, v4

    .line 265
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    aput v4, v1, v10

    .line 266
    const-string v1, "persist.sys.base_threshold_prox"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0xffff

    if-lt v1, v2, :cond_2

    .line 267
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    iget-object v2, p1, Lcom/sensoroperate/SensorTestResult;->mTestVal:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v1, v5

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    array-length v3, v3

    invoke-virtual {v1, v6, p1, v2, v3}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    .line 273
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    if-eqz v1, :cond_1

    .line 274
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v11, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "base"

    const-string v2, "persist.sys.base_threshold_prox"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "temp"

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    const-string v2, "1032"

    const-string v3, "10321"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 279
    const-string v1, "VivoProxCaliService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPsCaliUseVST success, params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0    # "defBase":I
    .end local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "strVal":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 269
    .restart local v0    # "defBase":I
    .restart local v13    # "strVal":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    iget-object v2, p1, Lcom/sensoroperate/SensorTestResult;->mTestVal:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const-string v3, "persist.sys.base_threshold_prox"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v5

    goto :goto_0

    .line 283
    .end local v0    # "defBase":I
    .end local v13    # "strVal":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    const-string v2, "device_para_provide_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vivo/services/DeviceParaProvideService;

    .line 284
    .local v12, "dpService":Lcom/vivo/services/DeviceParaProvideService;
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    aput v4, v1, v4

    .line 285
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    aput v4, v1, v10

    .line 286
    if-eqz v12, :cond_5

    .line 287
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    const-string v2, "persist.sys.tmp_base_thres_prox"

    invoke-virtual {v12}, Lcom/vivo/services/DeviceParaProvideService;->getPsBaseValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "persist.sys.base_threshold_prox"

    invoke-virtual {v12}, Lcom/vivo/services/DeviceParaProvideService;->getPsBaseValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v5

    .line 294
    :goto_2
    sget v1, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliStartBy:I

    if-ne v1, v5, :cond_4

    iget v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastPsCalData:I

    iget v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastSuccessPsCalData:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 295
    const-string v1, "VivoProxCaliService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone ps cali failed,recover ps cali data from overflow cali to last success cali:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastSuccessPsCalData:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastSuccessPsCalData:I

    iput v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastPsCalData:I

    .line 297
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    iget v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastSuccessPsCalData:I

    aput v2, v1, v5

    .line 298
    const-string v1, "persist.sys.tmp_base_thres_prox"

    iget v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastSuccessPsCalData:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_4
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    array-length v3, v3

    invoke-virtual {v1, v6, p1, v2, v3}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    .line 301
    const-string v1, "VivoProxCaliService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPsCaliUseVST fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sensoroperate/SensorTestResult;->dumpString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set caldata as"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 291
    :cond_5
    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I

    const-string v2, "persist.sys.tmp_base_thres_prox"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "persist.sys.base_threshold_prox"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v5

    goto/16 :goto_2
.end method

.method private enableCalibration(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x43fa0000    # 500.0f

    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 175
    sget-boolean v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-boolean v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 176
    :cond_1
    const-string v2, "VivoProxCaliService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIRED,return,as mIsCalibrationing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 179
    :cond_2
    if-eqz p1, :cond_8

    .line 181
    sput-boolean v8, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    .line 182
    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 183
    iput v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    .line 184
    iput v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    .line 185
    iput v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    .line 186
    iput v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    .line 187
    iput v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    .line 188
    iput v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    .line 189
    sput v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliRetryTime:I

    .line 191
    const-string v2, "persist.sys.light_threshold"

    const-string v3, "500"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F

    .line 192
    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    const-string v3, "device_para_provide_service"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/DeviceParaProvideService;

    .line 193
    .local v0, "dpService":Lcom/vivo/services/DeviceParaProvideService;
    if-eqz v0, :cond_6

    .line 194
    iget v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F

    invoke-virtual {v0}, Lcom/vivo/services/DeviceParaProvideService;->getAlsBaseMinValue()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F

    invoke-virtual {v0}, Lcom/vivo/services/DeviceParaProvideService;->getAlsBaseMaxValue()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 196
    :cond_3
    const-string v2, "VivoProxCaliService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLightThreshould="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vivo/services/DeviceParaProvideService;->getAlsBaseMinValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vivo/services/DeviceParaProvideService;->getAlsBaseMaxValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] reset as 500"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput v7, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F

    .line 207
    :cond_4
    :goto_1
    const-string v2, "VivoProxCaliService"

    const-string v3, "go register listener and start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "result":Z
    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 210
    const-string v2, "VivoProxCaliService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register mProximityListener result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1222"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1222W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1222T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1222TG3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1311"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1311T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1311W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1311TG3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1227B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 215
    :cond_5
    const v2, 0x447a4000    # 1001.0f

    iput v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    .line 216
    const/16 v2, 0xc

    iput v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    .line 217
    const-string v2, "VivoProxCaliService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOT NOT NOT REGISTER mLightSensorListener result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 202
    .end local v1    # "result":Z
    :cond_6
    iget v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_4

    .line 203
    iput v7, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightThreshould:F

    .line 204
    const-string v2, "VivoProxCaliService"

    const-string v3, "dpService and  lightThreshould<=0.0f, reset as 500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 220
    .restart local v1    # "result":Z
    :cond_7
    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 221
    const-string v2, "VivoProxCaliService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YES YES YES REGISTER mLightSensorListener result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 226
    .end local v0    # "dpService":Lcom/vivo/services/DeviceParaProvideService;
    .end local v1    # "result":Z
    :cond_8
    const-string v2, "VivoProxCaliService"

    const-string v3, "go unregister and stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v2, -0x1

    sput v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliStartBy:I

    .line 228
    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 229
    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1222"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1222W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1222T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1222TG3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1311"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1311T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1311W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1311TG3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v3, "PD1227B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 233
    :cond_9
    iput v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    .line 234
    iput v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    .line 239
    :goto_2
    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 240
    sput-boolean v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    .line 241
    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 237
    :cond_a
    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_2
.end method

.method private enableCalibrationUseVST(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 308
    sget-boolean v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 309
    const-string v4, "VivoProxCaliService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIRED,return,as mIsCalibrationing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return-void

    .line 312
    :cond_0
    if-eqz p1, :cond_5

    .line 314
    sput-boolean v7, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    .line 315
    sput-boolean v8, Lcom/vivo/services/proxcali/VivoProxCaliService;->mNeedStopCali:Z

    .line 316
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 317
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensorListenerVST:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 319
    iput v8, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    .line 320
    const/4 v4, 0x0

    iput v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    .line 321
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 323
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    invoke-direct {p0, v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->doPsCaliUseVST(Lcom/sensoroperate/SensorTestResult;)V

    .line 324
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    iget v4, v4, Lcom/sensoroperate/SensorTestResult;->mSuccess:I

    if-eq v4, v7, :cond_3

    sget v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliStartBy:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 326
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 327
    .local v3, "tpManager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_2

    .line 328
    :cond_1
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    iget v4, v4, Lcom/sensoroperate/SensorTestResult;->mSuccess:I

    if-eq v4, v7, :cond_2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mNeedStopCali:Z

    if-nez v4, :cond_2

    .line 329
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    invoke-direct {p0, v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->doPsCaliUseVST(Lcom/sensoroperate/SensorTestResult;)V

    .line 330
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    iget v4, v4, Lcom/sensoroperate/SensorTestResult;->mSuccess:I

    if-ne v4, v7, :cond_1

    .line 349
    .end local v3    # "tpManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_1
    new-instance v1, Lcom/sensoroperate/SensorTestResult;

    invoke-direct {v1}, Lcom/sensoroperate/SensorTestResult;-><init>()V

    .line 350
    .local v1, "mTempRes":Lcom/sensoroperate/SensorTestResult;
    const/4 v4, 0x3

    new-array v2, v4, [I

    .line 351
    .local v2, "mTempTestArg":[I
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensorListenerVST:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 352
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    const/16 v5, 0x26

    invoke-virtual {v4, v5, v1, v2, v8}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    .line 353
    sput-boolean v8, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    .line 354
    sput-boolean v8, Lcom/vivo/services/proxcali/VivoProxCaliService;->mNeedStopCali:Z

    .line 355
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 337
    .end local v1    # "mTempRes":Lcom/sensoroperate/SensorTestResult;
    .end local v2    # "mTempTestArg":[I
    :cond_3
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    iget v4, v4, Lcom/sensoroperate/SensorTestResult;->mSuccess:I

    if-eq v4, v7, :cond_4

    sget v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliStartBy:I

    if-nez v4, :cond_4

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    sget-boolean v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mNeedStopCali:Z

    if-nez v4, :cond_2

    .line 339
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    invoke-direct {p0, v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->doPsCaliUseVST(Lcom/sensoroperate/SensorTestResult;)V

    .line 340
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;

    iget v4, v4, Lcom/sensoroperate/SensorTestResult;->mSuccess:I

    if-eq v4, v7, :cond_2

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 346
    .end local v0    # "i":I
    :cond_4
    const-string v4, "VivoProxCaliService"

    const-string v5, "finish prox temp cali"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    :cond_5
    sget-boolean v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mNeedStopCali:Z

    if-nez v4, :cond_6

    .line 359
    sput-boolean v7, Lcom/vivo/services/proxcali/VivoProxCaliService;->mNeedStopCali:Z

    .line 362
    :cond_6
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto/16 :goto_0
.end method

.method private getPsDataFromKernel()V
    .locals 3

    .prologue
    .line 568
    const-string v2, "/sys/bus/platform/drivers/als_ps/rd_ps_data"

    invoke-static {v2}, Lcom/vivo/services/DeviceParaProvideService;->readKernelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "mPsString":Ljava/lang/String;
    const/high16 v1, -0x40800000    # -1.0f

    .line 570
    .local v1, "psValue":F
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->sss(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[-+]?\\d+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 574
    :cond_0
    invoke-direct {p0, v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->onPsSensorChanged(F)V

    .line 575
    return-void
.end method

.method private static isOpEntry()Z
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mOpEntry:Ljava/lang/String;

    const-string v1, "_RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPsSensorChanged(F)V
    .locals 3
    .param p1, "psValue"    # F

    .prologue
    const/16 v2, 0xc

    .line 535
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    if-ge v0, v2, :cond_0

    .line 536
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    .line 537
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    const/high16 v1, 0x41400000    # 12.0f

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    .line 538
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 539
    iput p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    .line 540
    iput p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    .line 552
    :cond_0
    :goto_0
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    if-ne v0, v2, :cond_1

    sget-boolean v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsVerifying:Z

    if-nez v0, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->verifyCalibrationValue()V

    .line 557
    :cond_1
    return-void

    .line 543
    :cond_2
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 544
    iput p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    .line 546
    :cond_3
    iget v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 547
    iput p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    goto :goto_0
.end method

.method public static sss(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "myString"    # Ljava/lang/String;

    .prologue
    .line 559
    const/4 v2, 0x0

    .line 560
    .local v2, "newString":Ljava/lang/String;
    const-string v3, "(\r\n|\r|\n|\n\r)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 561
    .local v0, "CRLF":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 562
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    :cond_0
    return-object v2
.end method

.method private verifyCalibrationValue()V
    .locals 11

    .prologue
    const v6, 0x459c4000    # 5000.0f

    const v10, 0x447a4000    # 1001.0f

    const/4 v9, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    .line 368
    const/4 v3, 0x0

    .line 369
    .local v3, "valid":Z
    const/4 v4, 0x1

    sput-boolean v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsVerifying:Z

    .line 370
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    const-string v5, "device_para_provide_service"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/services/DeviceParaProvideService;

    iput-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    .line 376
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    if-eqz v4, :cond_7

    .line 377
    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v5}, Lcom/vivo/services/DeviceParaProvideService;->getTmpPsBaseMinValue()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v5}, Lcom/vivo/services/DeviceParaProvideService;->getTmpPsBaseMaxValue()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    .line 380
    const-string v4, "ro.product.model.bbk"

    const-string v5, "other"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "mModel":Ljava/lang/String;
    const-string v4, "PD1222"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PD1222T"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PD1222TG3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PD1222W"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1227B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    :cond_0
    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    iget v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43c80000    # 400.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    iget v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x44480000    # 800.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 385
    const/4 v3, 0x1

    .line 388
    :cond_1
    const-string v4, "PD1227L"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "PD1227LG4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 389
    :cond_2
    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    iget v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    iget v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 391
    const/4 v3, 0x1

    .line 400
    :cond_3
    :goto_0
    const-string v4, "VivoProxCaliService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " valid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mProximityCaliValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PS_MIN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v6}, Lcom/vivo/services/DeviceParaProvideService;->getTmpPsBaseMinValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PS_MAX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v6}, Lcom/vivo/services/DeviceParaProvideService;->getTmpPsBaseMaxValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LIGHT="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mProximityRawMax="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mProximityRawMini="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v0    # "mModel":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v3, :cond_8

    .line 459
    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "strVal":Ljava/lang/String;
    const-string v4, "VivoProxCaliService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALI SUCCESS SET TMP_BASE_THRESHOLD_SENSOR AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v4, "persist.sys.tmp_base_thres_prox"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastPsCalData:I

    .line 464
    const-string v4, "VivoProxCaliService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AFTER SET WE GOT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "persist.sys.tmp_base_thres_prox"

    const-string v7, "dddddd"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-boolean v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mChangedPulseMannually:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1225"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 467
    const-string v4, "persist.sys.need_change_pulse"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    sput-boolean v8, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsVerifying:Z

    .line 531
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    :goto_2
    return-void

    .line 395
    .restart local v0    # "mModel":Ljava/lang/String;
    :cond_6
    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    iget v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42480000    # 50.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    iget v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 397
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 449
    .end local v0    # "mModel":Ljava/lang/String;
    :cond_7
    const-string v4, "VivoProxCaliService"

    const-string v5, "UmDeviceParaProvideService NULL!!! ASUME AS (30,600] "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    const/high16 v5, 0x44160000    # 600.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    .line 452
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 471
    :cond_8
    const-string v4, "VivoProxCaliService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALI FAIL mProximityCaliValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLightCaliValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliStartBy:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 473
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 475
    .local v2, "tpManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 477
    const-string v4, "VivoProxCaliService"

    const-string v5, "RESTART WHEN CALI FAIL AND ISRINGING"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 479
    iput v9, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    .line 480
    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1222"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1222W"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1222T"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1222TG3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1227B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 482
    :cond_9
    iput v10, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    .line 483
    const/16 v4, 0xc

    iput v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    .line 490
    :goto_3
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    if-eqz v4, :cond_a

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1225"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 491
    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v5}, Lcom/vivo/services/DeviceParaProvideService;->getPsBaseValue()I

    move-result v5

    iget-object v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v6}, Lcom/vivo/services/DeviceParaProvideService;->getPsBaseMaxValue()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/vivo/services/proxcali/VivoProxCaliService;->changeProximityPulse(FII)V

    .line 495
    :cond_a
    iput v8, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    .line 496
    iput v7, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    .line 497
    iput v7, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    .line 498
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    sput-boolean v8, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsVerifying:Z

    goto/16 :goto_2

    .line 486
    :cond_b
    iput v9, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    .line 487
    iput v8, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    goto :goto_3

    .line 503
    .end local v2    # "tpManager":Landroid/telephony/TelephonyManager;
    :cond_c
    sget v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliStartBy:I

    if-nez v4, :cond_5

    sget v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliRetryTime:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_5

    .line 504
    sget v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliRetryTime:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliRetryTime:I

    .line 505
    const-string v4, "VivoProxCaliService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RESTART WHEN BOOTUP AND RETRY AT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliRetryTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TIMES"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    if-eqz v4, :cond_d

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1225"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 508
    iget v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v5}, Lcom/vivo/services/DeviceParaProvideService;->getPsBaseValue()I

    move-result v5

    iget-object v6, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mDeviceParaProvideService:Lcom/vivo/services/DeviceParaProvideService;

    invoke-virtual {v6}, Lcom/vivo/services/DeviceParaProvideService;->getPsBaseMaxValue()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/vivo/services/proxcali/VivoProxCaliService;->changeProximityPulse(FII)V

    .line 512
    :cond_d
    iput v9, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCaliValue:F

    .line 513
    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1222"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1222W"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1222T"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1222TG3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    sget-object v4, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProductId:Ljava/lang/String;

    const-string v5, "PD1227B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 515
    :cond_e
    iput v10, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    .line 516
    const/16 v4, 0xc

    iput v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    .line 522
    :goto_4
    iput v8, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityCounts:I

    .line 523
    iput v7, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMax:F

    .line 524
    iput v7, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximityRawMini:F

    .line 525
    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 526
    sput-boolean v8, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsVerifying:Z

    goto/16 :goto_2

    .line 519
    :cond_f
    iput v9, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCaliValue:F

    .line 520
    iput v8, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mLightCounts:I

    goto :goto_4
.end method


# virtual methods
.method public setCrystalAnimStatus(Z)V
    .locals 3
    .param p1, "isCrystalAnim"    # Z

    .prologue
    .line 784
    const-string v0, "VivoProxCaliService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set crystal animation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iput-boolean p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCrystalAnim:Z

    .line 786
    return-void
.end method

.method public startCalibration(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 754
    sget-boolean v0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mIsCalibrationing:Z

    if-eqz v0, :cond_0

    .line 755
    const-string v0, "VivoProxCaliService"

    const-string v1, "Being Calibrationing, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 759
    const-string v0, "VivoProxCaliService"

    const-string v1, "Proximity sensor is null,return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 762
    :cond_1
    const-string v0, "VivoProxCaliService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Calibration...., type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    sput p1, Lcom/vivo/services/proxcali/VivoProxCaliService;->mCaliStartBy:I

    .line 768
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartCaliRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 769
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStartCaliRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 770
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 771
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService;->mStopCaliRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
