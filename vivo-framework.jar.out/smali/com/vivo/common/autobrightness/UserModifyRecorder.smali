.class public Lcom/vivo/common/autobrightness/UserModifyRecorder;
.super Ljava/lang/Object;
.source "UserModifyRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;
    }
.end annotation


# static fields
.field private static DAY_INTERVAL:J = 0x0L

.field private static final DELAY_RECORD_TO_DB:I = 0xbb8

.field public static final KEY_RECORD_ARGUMENT:Ljava/lang/String; = "arg"

.field private static final KEY_RECORD_RUNNING_INFO:Ljava/lang/String; = "inf"

.field private static final KEY_RECORD_TYPE:Ljava/lang/String; = "typ"

.field private static MILLIS_OF_DAY:J = 0x0L

.field private static final MODE_AUTO:I = 0x1

.field private static final MODE_MANUAL:I = 0x0

.field private static final MODE_UNKOWN:I = -0x1

.field private static final MSG_BACKLIGHT_ON:I = 0x4

.field private static final MSG_GET_FOREGROUND_PKG:I = 0x1

.field private static final MSG_ON_GET_SETTINGS:I = 0x2

.field private static final MSG_PENDING_COLLECT_DATA:I = 0x3

.field private static final PKG_SYSTEM:Ljava/lang/String; = "android"

.field private static final PKG_UNKOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "UserModifyRecorder"

.field private static final VAL_MODE_AUTO:Ljava/lang/String; = "auto"

.field private static final VAL_MODE_MANUAL:Ljava/lang/String; = "man"

.field private static final VAL_MODE_UNKOWN:Ljava/lang/String; = "unk"


# instance fields
.field private mBacklightMode:I

.field private mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

.field private mChangeBy:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEventListener:Landroid/hardware/SensorEventListener;

.field private mForegroundPkg:Ljava/lang/String;

.field private mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

.field private mLastRecordTimeMillis:J

.field private mLcmBacklight:I

.field private mLightEnabled:Z

.field private mLightLux:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorName:Ljava/lang/String;

.field private mOffBy:Ljava/lang/String;

.field private mPowerSaving:Z

.field private mPreForegroundPkg:Ljava/lang/String;

.field private mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingBrightness:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->MILLIS_OF_DAY:J

    .line 64
    sget-wide v0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->MILLIS_OF_DAY:J

    const-wide/16 v2, 0x1

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->DAY_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mContext:Landroid/content/Context;

    .line 38
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPowerSaving:Z

    .line 40
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mForegroundPkg:Ljava/lang/String;

    .line 41
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreForegroundPkg:Ljava/lang/String;

    .line 42
    iput v3, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLcmBacklight:I

    .line 46
    iput v3, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mBacklightMode:I

    .line 47
    iput v3, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSettingBrightness:I

    .line 48
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mOffBy:Ljava/lang/String;

    .line 49
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mChangeBy:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    .line 51
    iput-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    iput-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;

    .line 53
    iput-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    .line 54
    iput-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightSensor:Landroid/hardware/Sensor;

    .line 55
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightLux:F

    .line 56
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightEnabled:Z

    .line 57
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightSensorName:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSensorManager:Landroid/hardware/SensorManager;

    .line 59
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLastRecordTimeMillis:J

    .line 106
    new-instance v1, Lcom/vivo/common/autobrightness/UserModifyRecorder$1;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/UserModifyRecorder$1;-><init>(Lcom/vivo/common/autobrightness/UserModifyRecorder;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mEventListener:Landroid/hardware/SensorEventListener;

    .line 68
    iput-object p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mContext:Landroid/content/Context;

    .line 69
    new-instance v1, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    invoke-direct {v1, p0, p2}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;-><init>(Lcom/vivo/common/autobrightness/UserModifyRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    .line 70
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 72
    const/4 v1, 0x1

    const-string v2, "UserModifyRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightSensor:Landroid/hardware/Sensor;

    .line 77
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightSensor:Landroid/hardware/Sensor;

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->getSensorName(Landroid/hardware/Sensor;)V

    .line 79
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/UserModifyRecorder;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightLux:F

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/common/autobrightness/UserModifyRecorder;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;
    .param p1, "x1"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightLux:F

    return p1
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightSensorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSettingBrightness:I

    return v0
.end method

.method static synthetic access$1100(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLcmBacklight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mBacklightMode:I

    return v0
.end method

.method static synthetic access$1300(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/common/autobrightness/UserModifyRecorder;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLastRecordTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/vivo/common/autobrightness/UserModifyRecorder;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;
    .param p1, "x1"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLastRecordTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/vivo/common/autobrightness/UserModifyRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->releaseWakelock()V

    return-void
.end method

.method static synthetic access$1600()J
    .locals 2

    .prologue
    .line 20
    sget-wide v0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->DAY_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mOffBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mChangeBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPowerSaving:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/UserModifyRecorder;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->getAppNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreForegroundPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vivo/common/autobrightness/UserModifyRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreForegroundPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mForegroundPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vivo/common/autobrightness/UserModifyRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mForegroundPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vivo/common/autobrightness/UserModifyRecorder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/RunningInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vivo/common/autobrightness/UserModifyRecorder;Lcom/vivo/common/autobrightness/RunningInfo;)Lcom/vivo/common/autobrightness/RunningInfo;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;
    .param p1, "x1"    # Lcom/vivo/common/autobrightness/RunningInfo;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vivo/common/autobrightness/UserModifyRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->acquireWakelock()V

    return-void
.end method

.method static synthetic access$800(Lcom/vivo/common/autobrightness/UserModifyRecorder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->enableLightSensor(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    return-object v0
.end method

.method private acquireWakelock()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 98
    :cond_0
    return-void
.end method

.method private enableLightSensor(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightEnabled:Z

    if-eq p1, v0, :cond_0

    .line 124
    if-eqz p1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightEnabled:Z

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightEnabled:Z

    goto :goto_0
.end method

.method private getAppNameFromUid(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 292
    move v0, p1

    .line 293
    .local v0, "uidInt":I
    const-string v1, "UserModifyRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pakage name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "with :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSensorName(Landroid/hardware/Sensor;)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 308
    iput-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightSensorName:Ljava/lang/String;

    .line 311
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "UserModifyRecorder"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-void
.end method

.method private releaseWakelock()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 226
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectDataVer2nd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 230
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 231
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    invoke-virtual {v1, v0}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGetSettings(IILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "setting"    # I
    .param p2, "mode"    # I
    .param p3, "offBy"    # Ljava/lang/String;
    .param p4, "changeBy"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectDataVer2nd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    const-string v2, "UserModifyRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetSettings setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " offBy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changeBy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    if-eqz p3, :cond_2

    const-string v2, ""

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    :cond_2
    const-string p3, "unknown"

    .line 251
    :cond_3
    if-eqz p4, :cond_4

    const-string v2, ""

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 252
    :cond_4
    const-string p3, "unknown"

    .line 255
    :cond_5
    iget v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSettingBrightness:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSettingBrightness:I

    if-eq v2, p1, :cond_6

    const-string v2, "android"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mBacklightMode:I

    move/from16 v0, p2

    if-eq v0, v2, :cond_9

    .line 258
    :cond_7
    new-instance v1, Lcom/vivo/common/autobrightness/RunningInfo;

    iget v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLcmBacklight:I

    iget v3, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSettingBrightness:I

    iget v4, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mBacklightMode:I

    iget v5, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLcmBacklight:I

    iget-object v10, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mForegroundPkg:Ljava/lang/String;

    iget-object v11, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreForegroundPkg:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPowerSaving:Z

    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lcom/vivo/common/autobrightness/RunningInfo;-><init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    .local v1, "info":Lcom/vivo/common/autobrightness/RunningInfo;
    iget v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSettingBrightness:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 264
    const-string v2, "boot"

    iput-object v2, v1, Lcom/vivo/common/autobrightness/RunningInfo;->reason:Ljava/lang/String;

    .line 269
    :goto_1
    iget-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    if-eqz v2, :cond_8

    .line 270
    iget-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    invoke-interface {v2}, Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;->getPowerPercent()I

    move-result v2

    iput v2, v1, Lcom/vivo/common/autobrightness/RunningInfo;->pwrPercent:I

    .line 272
    :cond_8
    iget-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 273
    .local v13, "msg":Landroid/os/Message;
    iput-object v1, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object v2, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    invoke-virtual {v2, v13}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    .end local v1    # "info":Lcom/vivo/common/autobrightness/RunningInfo;
    .end local v13    # "msg":Landroid/os/Message;
    :cond_9
    iput p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSettingBrightness:I

    .line 277
    move/from16 v0, p2

    iput v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mBacklightMode:I

    .line 278
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mOffBy:Ljava/lang/String;

    .line 279
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mChangeBy:Ljava/lang/String;

    goto/16 :goto_0

    .line 266
    .restart local v1    # "info":Lcom/vivo/common/autobrightness/RunningInfo;
    :cond_a
    const-string v2, "user"

    iput-object v2, v1, Lcom/vivo/common/autobrightness/RunningInfo;->reason:Ljava/lang/String;

    goto :goto_1
.end method

.method public onLcmBacklighChanged(I)V
    .locals 3
    .param p1, "backlight"    # I

    .prologue
    .line 283
    iget v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLcmBacklight:I

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 285
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 286
    iget-object v1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    invoke-virtual {v1, v0}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iput p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLcmBacklight:I

    .line 289
    return-void
.end method

.method public setCallback(Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    .prologue
    .line 82
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectDataVer2nd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    goto :goto_0
.end method

.method public setPowerSaving(Z)V
    .locals 1
    .param p1, "saving"    # Z

    .prologue
    .line 298
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectDataVer2nd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 301
    :cond_0
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPowerSaving:Z

    goto :goto_0
.end method
