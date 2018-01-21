.class public Lcom/android/server/display/VivoAAL;
.super Ljava/lang/Object;
.source "VivoAAL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/VivoAAL$CurrentHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MODEL:Ljava/lang/String;

.field private static final MSG_PSENSOR_DISABLE:I = 0x3

.field private static final MSG_PSENSOR_ENABLE:I = 0x2

.field private static final MSG_PSENSOR_STATUS:I = 0x1

.field private static final PATH_KERNEL_ESD_ENABLECHECK:Ljava/lang/String; = "/sys/lcm/vivo_esd_check_enable"

.field private static final PATH_KERNEL_STRONG_LIGHT:Ljava/lang/String; = "/sys/lcm/vivo_esd_check_ps"

.field private static final PROJECT_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "VivoAAL"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field static esd_check_enable:I


# instance fields
.field CompareLightLux:I

.field private CreateDre:Z

.field private mAalCys:Z

.field private mAalEnabled:Z

.field private mBeingStrongSunlihgt:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;

.field private mIsWritingLux:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLock:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;

.field private mNear:Z

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityThreshold:F

.field private mPsensorEnabled:Z

.field private mScreenState:I

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVivoAalCallback:Lcom/android/server/display/VivoAalCallback;

.field private msensorThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    const-string v0, "ro.product.model.bbk"

    const-string v1, "nuknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/VivoAAL;->MODEL:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PD1421V"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/display/VivoAAL;->PROJECT_LIST:[Ljava/lang/String;

    .line 40
    sput v2, Lcom/android/server/display/VivoAAL;->esd_check_enable:I

    .line 50
    const-string v0, "debug.vivoaal.log"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/VivoAAL;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/server/display/VivoAalCallback;)V
    .locals 6
    .param p1, "mng"    # Landroid/hardware/SensorManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lcom/android/server/display/VivoAalCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v4, p0, Lcom/android/server/display/VivoAAL;->mNear:Z

    .line 47
    iput-boolean v4, p0, Lcom/android/server/display/VivoAAL;->mIsWritingLux:Z

    .line 48
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/display/VivoAAL;->mScreenState:I

    .line 52
    iput-boolean v4, p0, Lcom/android/server/display/VivoAAL;->mAalEnabled:Z

    .line 53
    iput-boolean v4, p0, Lcom/android/server/display/VivoAAL;->mPsensorEnabled:Z

    .line 54
    iput-boolean v4, p0, Lcom/android/server/display/VivoAAL;->mBeingStrongSunlihgt:Z

    .line 55
    iput-boolean v4, p0, Lcom/android/server/display/VivoAAL;->mAalCys:Z

    .line 62
    iput-object v5, p0, Lcom/android/server/display/VivoAAL;->mVivoAalCallback:Lcom/android/server/display/VivoAalCallback;

    .line 63
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/VivoAAL;->CompareLightLux:I

    .line 64
    iput-object v5, p0, Lcom/android/server/display/VivoAAL;->mContext:Landroid/content/Context;

    .line 65
    iput-boolean v4, p0, Lcom/android/server/display/VivoAAL;->CreateDre:Z

    .line 66
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/VivoAAL;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v3, Lcom/android/server/display/VivoAAL$1;

    invoke-direct {v3, p0}, Lcom/android/server/display/VivoAAL$1;-><init>(Lcom/android/server/display/VivoAAL;)V

    iput-object v3, p0, Lcom/android/server/display/VivoAAL;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 153
    new-instance v3, Lcom/android/server/display/VivoAAL$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/VivoAAL$2;-><init>(Lcom/android/server/display/VivoAAL;)V

    iput-object v3, p0, Lcom/android/server/display/VivoAAL;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 125
    iput-object p1, p0, Lcom/android/server/display/VivoAAL;->mSensorManager:Landroid/hardware/SensorManager;

    .line 127
    const-string v3, "/sys/lcm/vivo_esd_check_enable"

    invoke-static {v3}, Lcom/vivo/services/DeviceParaProvideService;->readKernelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "content":Ljava/lang/String;
    const/4 v2, -0x1

    .line 130
    .local v2, "status_check":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 134
    :goto_0
    sput v2, Lcom/android/server/display/VivoAAL;->esd_check_enable:I

    .line 135
    if-nez v2, :cond_0

    .line 137
    const-string v3, "VivoAAL"

    const-string v4, "This product have not enable esd check!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_1
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v3, "VivoAAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Integer.parseInt("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "VivoAAL"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/display/VivoAAL;->msensorThread:Landroid/os/HandlerThread;

    .line 141
    iget-object v3, p0, Lcom/android/server/display/VivoAAL;->msensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 142
    iget-object v3, p0, Lcom/android/server/display/VivoAAL;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/VivoAAL;->mLightSensor:Landroid/hardware/Sensor;

    .line 143
    iget-object v3, p0, Lcom/android/server/display/VivoAAL;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/VivoAAL;->mProximitySensor:Landroid/hardware/Sensor;

    .line 144
    iget-object v3, p0, Lcom/android/server/display/VivoAAL;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/android/server/display/VivoAAL;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/VivoAAL;->mProximityThreshold:F

    .line 147
    :cond_1
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/VivoAAL;->msensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/display/VivoAAL;->mMainHandler:Landroid/os/Handler;

    .line 148
    new-instance v3, Lcom/android/server/display/VivoAAL$CurrentHandler;

    iget-object v4, p0, Lcom/android/server/display/VivoAAL;->msensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/VivoAAL$CurrentHandler;-><init>(Lcom/android/server/display/VivoAAL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/display/VivoAAL;->mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;

    .line 150
    iput-object p3, p0, Lcom/android/server/display/VivoAAL;->mVivoAalCallback:Lcom/android/server/display/VivoAalCallback;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/display/VivoAAL;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/VivoAAL;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/display/VivoAAL;->mBeingStrongSunlihgt:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/display/VivoAAL;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/VivoAAL;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/server/display/VivoAAL;->mBeingStrongSunlihgt:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/VivoAAL;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/VivoAAL;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/display/VivoAAL;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/VivoAAL;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/VivoAAL;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/display/VivoAAL;->mNear:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/VivoAAL;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/VivoAAL;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/server/display/VivoAAL;->mNear:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/VivoAAL;)Lcom/android/server/display/VivoAAL$CurrentHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/VivoAAL;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;

    return-object v0
.end method

.method static synthetic access$400(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/server/display/VivoAAL;->msgToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/VivoAAL;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/VivoAAL;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/display/VivoAAL;->updatePsensorStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/VivoAAL;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/VivoAAL;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/VivoAAL;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/VivoAAL;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/display/VivoAAL;->setPsensorStatus(Z)Z

    move-result v0

    return v0
.end method

.method private static msgToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # I

    .prologue
    .line 187
    packed-switch p0, :pswitch_data_0

    .line 195
    const-string v0, "unkown"

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    const-string v0, "MSG_PSENSOR_STATUS"

    goto :goto_0

    .line 191
    :pswitch_1
    const-string v0, "MSG_PSENSOR_ENABLE"

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v0, "MSG_PSENSOR_DISABLE"

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPsensorStatus(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/server/display/VivoAAL;->mPsensorEnabled:Z

    if-eq v0, p1, :cond_0

    .line 230
    if-eqz p1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/VivoAAL;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/VivoAAL;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/display/VivoAAL;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 232
    iput-boolean p1, p0, Lcom/android/server/display/VivoAAL;->mPsensorEnabled:Z

    .line 240
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/VivoAAL;->mPsensorEnabled:Z

    return v0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/VivoAAL;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 237
    iput-boolean p1, p0, Lcom/android/server/display/VivoAAL;->mPsensorEnabled:Z

    goto :goto_0
.end method

.method private updatePsensorStatus(Z)V
    .locals 3
    .param p1, "mNear"    # Z

    .prologue
    .line 182
    const-string v1, "VivoAAL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write /sys/lcm/vivo_esd_check_ps "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v1, "/sys/lcm/vivo_esd_check_ps"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v1, v0}, Lcom/vivo/services/DeviceParaProvideService;->writeKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    return-void

    .line 182
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 183
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private writeLuxValue(I)I
    .locals 4
    .param p1, "lux"    # I

    .prologue
    .line 244
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/VivoAAL;->mIsWritingLux:Z

    .line 245
    iget-object v1, p0, Lcom/android/server/display/VivoAAL;->mVivoAalCallback:Lcom/android/server/display/VivoAalCallback;

    invoke-interface {v1, p1}, Lcom/android/server/display/VivoAalCallback;->onGetLightLux(I)I

    move-result v0

    .line 246
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/server/display/VivoAAL;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "VivoAAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeLuxValue lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/VivoAAL;->mIsWritingLux:Z

    .line 250
    return v0
.end method


# virtual methods
.method public enableAal(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 270
    if-eqz p1, :cond_2

    .line 272
    iget-boolean v0, p0, Lcom/android/server/display/VivoAAL;->mAalEnabled:Z

    if-nez v0, :cond_1

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/VivoAAL;->mAalEnabled:Z

    .line 274
    iput-boolean v1, p0, Lcom/android/server/display/VivoAAL;->mIsWritingLux:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/server/display/VivoAAL;->mBeingStrongSunlihgt:Z

    .line 276
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mVivoAalCallback:Lcom/android/server/display/VivoAalCallback;

    if-eqz v0, :cond_0

    .line 280
    :cond_0
    const-string v0, "VivoAAL"

    const-string v1, "setScreenState registerListener state="

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/VivoAAL;->mAalEnabled:Z

    return v0

    .line 282
    :cond_1
    const-string v0, "VivoAAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenState 1 mAalEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/VivoAAL;->mAalEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/VivoAAL;->mAalEnabled:Z

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mVivoAalCallback:Lcom/android/server/display/VivoAalCallback;

    if-eqz v0, :cond_3

    .line 291
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/display/VivoAAL;->mIsWritingLux:Z

    .line 292
    iput-boolean v1, p0, Lcom/android/server/display/VivoAAL;->mAalEnabled:Z

    .line 293
    iput-boolean v1, p0, Lcom/android/server/display/VivoAAL;->mBeingStrongSunlihgt:Z

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/VivoAAL;->CompareLightLux:I

    .line 295
    const-string v0, "VivoAAL"

    const-string v1, "setScreenState unregisterListener state="

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_4
    const-string v0, "VivoAAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenState 2 mAalEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/VivoAAL;->mAalEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/display/VivoAAL;->mContext:Landroid/content/Context;

    .line 255
    return-void
.end method

.method public setScreenState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 306
    iput p1, p0, Lcom/android/server/display/VivoAAL;->mScreenState:I

    .line 307
    sget v0, Lcom/android/server/display/VivoAAL;->esd_check_enable:I

    if-nez v0, :cond_0

    .line 309
    const-string v0, "VivoAAL"

    const-string v1, "esd check not enable."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-void

    .line 312
    :cond_0
    iget v0, p0, Lcom/android/server/display/VivoAAL;->mScreenState:I

    if-ne v0, v2, :cond_1

    .line 315
    const-string v0, "VivoAAL"

    const-string v1, "setScreenState on."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/VivoAAL$CurrentHandler;->removeMessages(I)V

    .line 317
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/display/VivoAAL$CurrentHandler;->removeMessages(I)V

    .line 318
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/VivoAAL$CurrentHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 323
    :cond_1
    const-string v0, "VivoAAL"

    const-string v1, "setScreenState off."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/VivoAAL$CurrentHandler;->removeMessages(I)V

    .line 325
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/display/VivoAAL$CurrentHandler;->removeMessages(I)V

    .line 326
    iget-object v0, p0, Lcom/android/server/display/VivoAAL;->mCurrentHandler:Lcom/android/server/display/VivoAAL$CurrentHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/display/VivoAAL$CurrentHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
