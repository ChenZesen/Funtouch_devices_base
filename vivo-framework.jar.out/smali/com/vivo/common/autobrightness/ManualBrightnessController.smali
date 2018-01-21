.class public Lcom/vivo/common/autobrightness/ManualBrightnessController;
.super Ljava/lang/Object;
.source "ManualBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/ManualBrightnessController$SettingsObserver;,
        Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;
    }
.end annotation


# static fields
.field private static final ACL_TURN_DOWN_DELAY:I = 0x2710

.field private static final ACL_TURN_DOWN_THRESHOLD:I = 0x7d0

.field private static final ACL_TURN_UP_DELAY:I = 0x3e8

.field private static final ACL_TURN_UP_THRESHOLD:I = 0xdac

.field private static final DEBUG:Z = false

.field private static final INITIALBRIGHTNESS:I

.field private static MAX_LIGHT_LEVEL:I = 0x0

.field private static MIN_LIGHT_LEVEL:I = 0x0

.field private static final MSG_LIGHT_SENSOR_DISANBLE:I = 0x4

.field private static final MSG_LIGHT_SENSOR_EANBLE:I = 0x3

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final MSG_UPDATE_OLED_ACL:I = 0x2

.field private static OLED_ACL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ManualBrightnessController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static bSettingBrightnessChange:Z

.field private static mBrightnessDownLevels:[F

.field private static mBrightnessUpLevels:[F

.field private static mCurLightLevel:I

.field private static mLightLevel:I

.field private static mLightLux:F

.field private static mProximityStatus:Z

.field private static mScreenBrightness:I

.field private static mScreenBrightnessModeSetting:I

.field private static mScreenBrightnessSetting:I

.field private static mScreenState:I

.field private static mSettingObserver:Lcom/vivo/common/autobrightness/ManualBrightnessController$SettingsObserver;

.field private static mWidowScreenBrightness:I


# instance fields
.field private mAdjustBrightnessTimeStamp:J

.field private mCallbacks:Lcom/vivo/common/autobrightness/CameraLumaCallback$ManualBrightnessCallback;

.field private mContext:Landroid/content/Context;

.field private mEventRestore:Landroid/hardware/SensorEvent;

.field private mHandler:Landroid/os/Handler;

.field private mLightHandler:Landroid/os/Handler;

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorName:Ljava/lang/String;

.field private mOledAclStatus:I

.field private mOledModeChange:Z

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityThreshold:F

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mThread:Landroid/os/HandlerThread;

.field private mWaitFirstLightLux:Z

.field private mWatingFirstLightSensorValue:Z

.field private newScreenBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    const/16 v0, 0x70

    sput v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    .line 76
    sput-boolean v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->bSettingBrightnessChange:Z

    .line 78
    sput v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLevel:I

    .line 79
    sput v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I

    .line 80
    sput v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MAX_LIGHT_LEVEL:I

    .line 81
    sput v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MIN_LIGHT_LEVEL:I

    .line 82
    new-array v0, v3, [F

    const/high16 v1, 0x41a00000    # 20.0f

    aput v1, v0, v2

    sput-object v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mBrightnessUpLevels:[F

    .line 83
    new-array v0, v3, [F

    const/high16 v1, 0x40400000    # 3.0f

    aput v1, v0, v2

    sput-object v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mBrightnessDownLevels:[F

    .line 84
    const/4 v0, -0x1

    sput v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    .line 88
    sput-boolean v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityStatus:Z

    .line 90
    const-string v0, "/sys/lcm/oled_acl"

    sput-object v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->OLED_ACL:Ljava/lang/String;

    .line 91
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    .line 93
    sget v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    sput v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenState:I

    .line 94
    sget v0, Lcom/vivo/common/autobrightness/BootBrightnessConfig;->mInitialSettingBrightness:I

    sput v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->INITIALBRIGHTNESS:I

    return-void
.end method

.method public constructor <init>(Lcom/vivo/common/autobrightness/CameraLumaCallback$ManualBrightnessCallback;Landroid/os/Looper;Landroid/content/Context;Landroid/hardware/SensorManager;)V
    .locals 8
    .param p1, "callbacks"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$ManualBrightnessCallback;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v5, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->newScreenBrightness:I

    .line 77
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mAdjustBrightnessTimeStamp:J

    .line 86
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWaitFirstLightLux:Z

    .line 87
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWatingFirstLightSensorValue:Z

    .line 89
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledModeChange:Z

    .line 92
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorName:Ljava/lang/String;

    .line 95
    iput v5, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledAclStatus:I

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mEventRestore:Landroid/hardware/SensorEvent;

    .line 337
    new-instance v1, Lcom/vivo/common/autobrightness/ManualBrightnessController$1;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/ManualBrightnessController$1;-><init>(Lcom/vivo/common/autobrightness/ManualBrightnessController;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 356
    new-instance v1, Lcom/vivo/common/autobrightness/ManualBrightnessController$2;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/ManualBrightnessController$2;-><init>(Lcom/vivo/common/autobrightness/ManualBrightnessController;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 106
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCallbacks:Lcom/vivo/common/autobrightness/CameraLumaCallback$ManualBrightnessCallback;

    .line 107
    iput-object p3, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mContext:Landroid/content/Context;

    .line 108
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ManualBrightnessThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mThread:Landroid/os/HandlerThread;

    .line 109
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightHandler:Landroid/os/Handler;

    .line 111
    new-instance v1, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;

    invoke-direct {v1, p0, p2}, Lcom/vivo/common/autobrightness/ManualBrightnessController$ManualBrightnessHandler;-><init>(Lcom/vivo/common/autobrightness/ManualBrightnessController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object p4, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 113
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 114
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->getSensorName(Landroid/hardware/Sensor;)V

    .line 115
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 116
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSettingMinimum:I

    .line 117
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSettingMaximum:I

    .line 118
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSettingDefault:I

    .line 119
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 121
    const-string v1, "ManualBrightnessController"

    const-string v2, "mLightSensor is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 125
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 126
    const-string v1, "ManualBrightnessController"

    const-string v2, "mProximitySensor is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityThreshold:F

    .line 131
    :goto_0
    new-instance v1, Lcom/vivo/common/autobrightness/ManualBrightnessController$SettingsObserver;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/vivo/common/autobrightness/ManualBrightnessController$SettingsObserver;-><init>(Lcom/vivo/common/autobrightness/ManualBrightnessController;Landroid/os/Handler;)V

    sput-object v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mSettingObserver:Lcom/vivo/common/autobrightness/ManualBrightnessController$SettingsObserver;

    .line 132
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->registerObserver()V

    .line 133
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sput v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    .line 136
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sput v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessModeSetting:I

    .line 139
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessModeSetting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 140
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->INITIALBRIGHTNESS:I

    if-lez v1, :cond_2

    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->INITIALBRIGHTNESS:I

    :goto_1
    sput v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    .line 144
    :goto_2
    const-string v1, "ManualBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenBrightness ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityThreshold:F

    goto :goto_0

    .line 140
    :cond_2
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    goto :goto_1

    .line 142
    :cond_3
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    sput v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/common/autobrightness/ManualBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorEnabled:Z

    return p1
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 45
    sput p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I

    return p0
.end method

.method static synthetic access$102(Lcom/vivo/common/autobrightness/ManualBrightnessController;Landroid/hardware/SensorEvent;)Landroid/hardware/SensorEvent;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mEventRestore:Landroid/hardware/SensorEvent;

    return-object p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLevel:I

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 45
    sput-boolean p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->bSettingBrightnessChange:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/vivo/common/autobrightness/ManualBrightnessController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->OLED_ACL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vivo/common/autobrightness/ManualBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledAclStatus:I

    return v0
.end method

.method static synthetic access$1502(Lcom/vivo/common/autobrightness/ManualBrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledAclStatus:I

    return p1
.end method

.method static synthetic access$1600(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200()F
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    return v0
.end method

.method static synthetic access$2002(Lcom/vivo/common/autobrightness/ManualBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWaitFirstLightLux:Z

    return p1
.end method

.method static synthetic access$202(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 45
    sput p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    return p0
.end method

.method static synthetic access$2102(Lcom/vivo/common/autobrightness/ManualBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWatingFirstLightSensorValue:Z

    return p1
.end method

.method static synthetic access$2200()[F
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mBrightnessUpLevels:[F

    return-object v0
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MAX_LIGHT_LEVEL:I

    return v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MIN_LIGHT_LEVEL:I

    return v0
.end method

.method static synthetic access$2500(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/vivo/common/autobrightness/ManualBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledModeChange:Z

    return p1
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenState:I

    return v0
.end method

.method static synthetic access$2900(Lcom/vivo/common/autobrightness/ManualBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/common/autobrightness/ManualBrightnessController;F)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->handleOledAclEvent(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/vivo/common/autobrightness/ManualBrightnessController;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/common/autobrightness/ManualBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$700(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 45
    sput-boolean p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityStatus:Z

    return p0
.end method

.method static synthetic access$900(Lcom/vivo/common/autobrightness/ManualBrightnessController;)Lcom/vivo/common/autobrightness/CameraLumaCallback$ManualBrightnessCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ManualBrightnessController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCallbacks:Lcom/vivo/common/autobrightness/CameraLumaCallback$ManualBrightnessCallback;

    return-object v0
.end method

.method private calcBrightness(F)I
    .locals 4
    .param p1, "lux"    # F

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 245
    .local v0, "brightness":I
    sget-boolean v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityStatus:Z

    if-eqz v2, :cond_0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProximityStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    .line 247
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    .line 263
    :goto_0
    return v2

    .line 249
    :cond_0
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    .line 250
    .local v1, "nTempBrightness":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->calcLightLevel(F)I

    move-result v2

    sput v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLevel:I

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcBrightness  mScreenBrightnessSetting ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nTempBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mWidowScreenBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    .line 253
    const/16 v2, 0x82

    if-gt v1, v2, :cond_2

    .line 254
    move v0, v1

    move v2, v0

    .line 255
    goto :goto_0

    .line 249
    .end local v1    # "nTempBrightness":I
    :cond_1
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    goto :goto_1

    .line 257
    .restart local v1    # "nTempBrightness":I
    :cond_2
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLevel:I

    if-nez v2, :cond_3

    .line 258
    add-int/lit16 v2, v1, -0x82

    div-int/lit8 v2, v2, 0xb

    add-int/lit16 v0, v2, 0x82

    .line 262
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcBrightness  mLightLevel ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " brightness "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    move v2, v0

    .line 263
    goto :goto_0

    .line 260
    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private calcDelay()I
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "delay":I
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWaitFirstLightLux:Z

    if-eqz v1, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 270
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWaitFirstLightLux:Z

    .line 278
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitFirstLightLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWaitFirstLightLux:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurLightLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLightLevel ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bSettingBrightnessChange ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->bSettingBrightnessChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    .line 280
    return v0

    .line 271
    :cond_0
    sget-boolean v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->bSettingBrightnessChange:Z

    if-eqz v1, :cond_1

    .line 272
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :cond_1
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I

    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLevel:I

    if-le v1, v2, :cond_2

    .line 274
    const/16 v0, 0x157c

    goto :goto_0

    .line 276
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calcLightLevel(F)I
    .locals 4
    .param p1, "lux"    # F

    .prologue
    .line 195
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I

    .line 197
    .local v1, "level":I
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MIN_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_2

    .line 198
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MIN_LIGHT_LEVEL:I

    .line 199
    .local v0, "i":I
    :cond_0
    sget-object v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mBrightnessUpLevels:[F

    aget v2, v2, v0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 200
    add-int/lit8 v0, v0, 0x1

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 202
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MAX_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_0

    .line 237
    .end local v0    # "i":I
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcLightLevel lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurLightLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mCurLightLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    .line 238
    return v1

    .line 207
    :cond_2
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MAX_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_4

    .line 208
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MAX_LIGHT_LEVEL:I

    add-int/lit8 v0, v2, -0x1

    .line 209
    .restart local v0    # "i":I
    :cond_3
    sget-object v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mBrightnessDownLevels:[F

    aget v2, v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 210
    add-int/lit8 v0, v0, -0x1

    .line 211
    add-int/lit8 v1, v1, -0x1

    .line 212
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MIN_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    :cond_4
    sget-object v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mBrightnessUpLevels:[F

    aget v2, v2, v1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_6

    .line 218
    move v0, v1

    .line 219
    .restart local v0    # "i":I
    :cond_5
    sget-object v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mBrightnessUpLevels:[F

    aget v2, v2, v0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 220
    add-int/lit8 v0, v0, 0x1

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 222
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MAX_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_5

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    :cond_6
    sget-object v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mBrightnessDownLevels:[F

    aget v2, v2, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 227
    add-int/lit8 v0, v1, -0x1

    .line 228
    .restart local v0    # "i":I
    :cond_7
    sget-object v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mBrightnessDownLevels:[F

    aget v2, v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 229
    add-int/lit8 v0, v0, -0x1

    .line 230
    add-int/lit8 v1, v1, -0x1

    .line 231
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->MIN_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_7

    goto :goto_0
.end method

.method private static calcWindowBrightness(IF)I
    .locals 5
    .param p0, "brightness"    # I
    .param p1, "lux"    # F

    .prologue
    .line 471
    move v0, p0

    .line 472
    .local v0, "mbrightness":I
    const/16 v2, 0x82

    if-gt v0, v2, :cond_0

    move v1, v0

    .line 483
    .end local v0    # "mbrightness":I
    .local v1, "mbrightness":I
    :goto_0
    return v1

    .line 475
    .end local v1    # "mbrightness":I
    .restart local v0    # "mbrightness":I
    :cond_0
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLevel:I

    if-nez v2, :cond_1

    .line 476
    add-int/lit16 v2, v0, -0x82

    div-int/lit8 v2, v2, 0xb

    add-int/lit16 v0, v2, 0x82

    .line 480
    :cond_1
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 481
    const-string v2, "ManualBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calcWindowBrightness  mbrightness ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "brightness ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .line 483
    .end local v0    # "mbrightness":I
    .restart local v1    # "mbrightness":I
    goto :goto_0
.end method

.method private getSensorName(Landroid/hardware/Sensor;)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 536
    iput-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorName:Ljava/lang/String;

    .line 539
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "delay":I
    invoke-direct {p0, p3}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->calcBrightness(F)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->newScreenBrightness:I

    .line 285
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->calcDelay()I

    move-result v0

    .line 286
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->updateBrightness(I)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " newScreenBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->newScreenBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private handleOledAclEvent(F)V
    .locals 6
    .param p1, "lux"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 292
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledModeChange:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWatingFirstLightSensorValue:Z

    if-eqz v0, :cond_3

    .line 293
    :cond_1
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWatingFirstLightSensorValue:Z

    .line 294
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledModeChange:Z

    .line 298
    iput v4, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledAclStatus:I

    .line 299
    const-string v0, "ManualBrightnessController"

    const-string v1, "oled acl status is 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_2
    :goto_0
    return-void

    .line 300
    :cond_3
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    const v1, 0x455ac000    # 3500.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledModeChange:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWatingFirstLightSensorValue:Z

    if-eqz v0, :cond_2

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 304
    const-string v0, "ManualBrightnessController"

    const-string v1, "oled acl status is 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput v5, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledAclStatus:I

    .line 306
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mOledModeChange:Z

    .line 307
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWatingFirstLightSensorValue:Z

    goto :goto_0
.end method

.method private handleSettingsChangedLocked()V
    .locals 5

    .prologue
    .line 426
    iget-object v2, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 427
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    .line 428
    .local v0, "mOldScreenBrightnessSetting":I
    const-string v2, "screen_brightness"

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sput v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    .line 431
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    if-eq v0, v2, :cond_2

    .line 432
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->bSettingBrightnessChange:Z

    .line 433
    iget-object v2, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isMaxBrightessLimit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    sget-boolean v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityStatus:Z

    if-eqz v2, :cond_0

    .line 439
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    sget v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    invoke-static {v2, v3}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->calcWindowBrightness(IF)I

    move-result v2

    sput v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle settings mScreenBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as modify"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->vivoUpdateBrightness()V

    .line 450
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenBrightnessSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mScreenBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    .line 451
    return-void

    .line 444
    :cond_1
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    sput v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    goto :goto_0

    .line 447
    :cond_2
    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    sput v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "ManualBrightnessController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    return-void
.end method

.method public static notifyLightLux(F)V
    .locals 0
    .param p0, "lux"    # F

    .prologue
    .line 541
    sput p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    .line 542
    return-void
.end method

.method public static notifyScreenBrightness(I)V
    .locals 6
    .param p0, "brightness"    # I

    .prologue
    .line 516
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    .line 517
    .local v0, "mOldScreenBrighness":I
    sput p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    .line 519
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    if-eq v0, v1, :cond_0

    .line 520
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->bSettingBrightnessChange:Z

    .line 523
    :cond_0
    if-lez p0, :cond_1

    .line 524
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2

    sget-boolean v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityStatus:Z

    if-nez v1, :cond_2

    .line 525
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    invoke-static {p0, v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->calcWindowBrightness(IF)I

    move-result v1

    sput v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    .line 530
    :cond_1
    :goto_0
    return-void

    .line 527
    :cond_2
    sput p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    goto :goto_0
.end method

.method public static notifyScreenBrightness(II)V
    .locals 6
    .param p0, "brightness"    # I
    .param p1, "TempScreenBrightnessSettingOverride"    # I

    .prologue
    const/4 v1, -0x1

    .line 486
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    .line 487
    .local v0, "mOldScreenBrighness":I
    sput p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    .line 489
    if-ne p0, v1, :cond_2

    .line 490
    if-ne p1, v1, :cond_1

    .line 491
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    sput v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    move p0, p1

    .line 497
    :cond_2
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    if-eq v0, v1, :cond_3

    .line 498
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->bSettingBrightnessChange:Z

    .line 501
    :cond_3
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isMaxBrightessLimit()Z

    move-result v1

    if-nez v1, :cond_4

    .line 502
    sput p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    goto :goto_0

    .line 506
    :cond_4
    if-lez p0, :cond_0

    .line 507
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_5

    sget-boolean v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityStatus:Z

    if-nez v1, :cond_5

    .line 508
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    invoke-static {p0, v1}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->calcWindowBrightness(IF)I

    move-result v1

    sput v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    goto :goto_0

    .line 510
    :cond_5
    sput p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    goto :goto_0
.end method

.method public static notifyStateChanged(I)V
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 554
    sparse-switch p0, :sswitch_data_0

    .line 568
    :goto_0
    return-void

    .line 556
    :sswitch_0
    sget v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    sput v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenState:I

    .line 557
    const-string v0, "ManualBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged screen on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :sswitch_1
    sget v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_OFF:I

    sput v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenState:I

    .line 561
    const-string v0, "ManualBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged screen off "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    :sswitch_2
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSetting:I

    sput v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    .line 565
    const-string v0, "ManualBrightnessController"

    const-string v1, "notifyStateChanged boot complete "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    .line 454
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 455
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mSettingObserver:Lcom/vivo/common/autobrightness/ManualBrightnessController$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 458
    return-void
.end method

.method private updateBrightness(I)V
    .locals 5
    .param p1, "delay"    # I

    .prologue
    const/4 v4, 0x1

    .line 313
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    iget v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->newScreenBrightness:I

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mProximityStatus:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->newScreenBrightness:I

    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->bSettingBrightnessChange:Z

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBrightness: mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->newScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->newScreenBrightness:I

    sput v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    .line 324
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 335
    :cond_1
    return-void
.end method

.method private vivoUpdateBrightness()V
    .locals 1

    .prologue
    .line 422
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightLux:F

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->calcBrightness(F)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->newScreenBrightness:I

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->updateBrightness(I)V

    .line 424
    return-void
.end method


# virtual methods
.method public getLightEvent()Landroid/hardware/SensorEvent;
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mEventRestore:Landroid/hardware/SensorEvent;

    if-eqz v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEventRestore.values[0]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mEventRestore:Landroid/hardware/SensorEvent;

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mEventRestore:Landroid/hardware/SensorEvent;

    .line 550
    :goto_0
    return-object v0

    .line 549
    :cond_0
    const-string v0, "mEventRestore is null"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/ManualBrightnessController;->log(Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManualScreenBrightness()I
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isMaxBrightessLimit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    .line 160
    .local v0, "brightness":I
    :goto_0
    iget v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSettingMaximum:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 161
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    if-gtz v0, :cond_0

    .line 163
    const/4 v0, 0x2

    .line 168
    :cond_0
    :goto_1
    return v0

    .line 153
    .end local v0    # "brightness":I
    :cond_1
    sget v1, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    if-lez v1, :cond_2

    .line 154
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mWidowScreenBrightness:I

    .restart local v0    # "brightness":I
    goto :goto_0

    .line 156
    .end local v0    # "brightness":I
    :cond_2
    sget v0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightness:I

    .restart local v0    # "brightness":I
    goto :goto_0

    .line 166
    :cond_3
    iget v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mScreenBrightnessSettingMinimum:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method public setLightSensorEnabled(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isMaxBrightessLimit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    if-eqz p1, :cond_2

    .line 183
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorEnabled:Z

    if-nez v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ManualBrightnessController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
