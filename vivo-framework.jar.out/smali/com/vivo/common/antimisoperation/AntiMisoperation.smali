.class public Lcom/vivo/common/antimisoperation/AntiMisoperation;
.super Ljava/lang/Object;
.source "AntiMisoperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;
    }
.end annotation


# static fields
.field private static final COMPARE_CONTAIN_CASE:I = 0x1

.field private static final COMPARE_CONTAIN_NOCASE:I = 0x0

.field private static final COMPARE_EQUALS_CASE:I = 0x3

.field private static final COMPARE_EQUALS_NOCASE:I = 0x2

.field private static final DEBUG:Z

.field private static final HAVE_HOLSTER_WINDOW:Z

.field public static final IS_ENG:Z

.field public static final IS_LOG_CTRL_OPEN:Z

.field public static final KEY_VIVO_LOG_CTRL:Ljava/lang/String; = "persist.sys.log.ctrl"

.field private static final MSG_ANTIMISOPERATION_LOGOUT:I = 0x4

.field private static final MSG_ANTIMISOPERATION_MOVEED:I = 0x3

.field private static final MSG_ANTIMISOPERATION_QQCHECK:I = 0x8

.field private static final MSG_ANTIMISOPERATION_TRIGGERED:I = 0x2

.field private static final MSG_ANTIMISOPERATION_WAKELOCK_ACQUIRE:I = 0x5

.field private static final MSG_ANTIMISOPERATION_WAKELOCK_RELEASE:I = 0x6

.field private static final MSG_ANTIMISOPERATION_WAKELOCK_WATCHDOG:I = 0x7

.field private static final MSG_PROXIMITY_SENSOR_DISABLE:I = 0x0

.field private static final MSG_PROXIMITY_SENSOR_ENABLE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AntiMisoperation"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final WAKELOCK_WATDOG_KICKTIME:I = 0x7530

.field private static final WHITELIST_BACKDOORS:[Ljava/lang/String;

.field private static final WHITELIST_CONTAIN:[Ljava/lang/String;

.field private static final WHITELIST_EQUALS:[Ljava/lang/String;

.field private static final WHITELIST_HALLLOCKED_EQUALS:[Ljava/lang/String;

.field private static final WHITELIST_IGNORE_EPROXIMITY:[Ljava/lang/String;

.field private static callerUid:I

.field private static mAppContextImpl:Landroid/content/Context;

.field private static final mOpEntry:Ljava/lang/String;

.field public static mUseAntiMisoperation:Z


# instance fields
.field private isHallLocked:Z

.field private mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

.field private mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

.field private mContext:Landroid/content/Context;

.field private mEventListener:Landroid/hardware/SensorEventListener;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMonitorEnabled:Z

.field private mPhoneStateIdle:Z

.field private mProximity:I

.field private mProximityEnabled:Z

.field private mProximityEventHandler:Landroid/os/Handler;

.field private mProximityListenerRegisted:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityThreshold:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTriggered:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockKickCount:I

.field private mWakelockTimeout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->IS_ENG:Z

    .line 41
    const-string v0, "persist.sys.log.ctrl"

    const-string v3, "no"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->IS_LOG_CTRL_OPEN:Z

    .line 42
    sget-boolean v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->IS_LOG_CTRL_OPEN:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->IS_ENG:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->DEBUG:Z

    .line 44
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "keyguard"

    aput-object v3, v0, v1

    sput-object v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->WHITELIST_CONTAIN:[Ljava/lang/String;

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "BBKCrontab"

    aput-object v3, v0, v1

    const-string v3, "AlarmClock"

    aput-object v3, v0, v2

    const-string v3, "VoiceAssistantActivity-PWM"

    aput-object v3, v0, v5

    const-string v3, "PhoneGlobals"

    aput-object v3, v0, v6

    const-string v3, "PhoneApp"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "SmartWake"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "vivo_hall_bright"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "MSimPhoneGlobals"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "PhoneAppCrystal"

    aput-object v4, v0, v3

    sput-object v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->WHITELIST_EQUALS:[Ljava/lang/String;

    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "BBKCrontab"

    aput-object v3, v0, v1

    const-string v3, "AlarmClock"

    aput-object v3, v0, v2

    const-string v3, "VoiceAssistantActivity-PWM"

    aput-object v3, v0, v5

    const-string v3, "PhoneGlobals"

    aput-object v3, v0, v6

    const-string v3, "PhoneApp"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "SmartWake"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "NotesAlertWakeLock"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "CalendarAlertWakeLock"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "sleepdialog"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "vivo_hall_bright"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "SmsWakeLock"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "MSimPhoneGlobals"

    aput-object v4, v0, v3

    sput-object v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->WHITELIST_HALLLOCKED_EQUALS:[Ljava/lang/String;

    .line 57
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "SmartWakeLogoutAntiMisoperation"

    aput-object v3, v0, v1

    sput-object v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->WHITELIST_BACKDOORS:[Ljava/lang/String;

    .line 58
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "PhoneAppCrystal"

    aput-object v3, v0, v1

    sput-object v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->WHITELIST_IGNORE_EPROXIMITY:[Ljava/lang/String;

    .line 104
    const-string v0, "ro.vivo.op.entry"

    const-string v3, "no"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mOpEntry:Ljava/lang/String;

    .line 105
    const-string v0, "Have_holster_with_window"

    const-string v3, "persist.vivo.phone.holster"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->HAVE_HOLSTER_WINDOW:Z

    .line 106
    invoke-static {}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isOpEntry()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    sput-boolean v2, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mUseAntiMisoperation:Z

    .line 107
    sput v1, Lcom/vivo/common/antimisoperation/AntiMisoperation;->callerUid:I

    return-void

    :cond_1
    move v0, v1

    .line 42
    goto/16 :goto_0

    :cond_2
    move v2, v1

    .line 106
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v3, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mMonitorEnabled:Z

    .line 93
    iput-boolean v3, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityEnabled:Z

    .line 94
    iput-boolean v3, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mTriggered:Z

    .line 95
    iput-boolean v3, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockTimeout:Z

    .line 96
    iput-boolean v3, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityListenerRegisted:Z

    .line 99
    const/4 v1, -0x1

    iput v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    .line 100
    iput-boolean v3, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isHallLocked:Z

    .line 101
    iput-boolean v4, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mPhoneStateIdle:Z

    .line 103
    iput v3, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockKickCount:I

    .line 132
    new-instance v1, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;

    invoke-direct {v1, p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation$1;-><init>(Lcom/vivo/common/antimisoperation/AntiMisoperation;)V

    iput-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mEventListener:Landroid/hardware/SensorEventListener;

    .line 163
    iput-object p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mContext:Landroid/content/Context;

    .line 164
    sput-object p1, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAppContextImpl:Landroid/content/Context;

    .line 165
    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mSensorManager:Landroid/hardware/SensorManager;

    .line 166
    iput-object p2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    .line 167
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AntiMisoperation"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mHandlerThread:Landroid/os/HandlerThread;

    .line 168
    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v1, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;-><init>(Lcom/vivo/common/antimisoperation/AntiMisoperation;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    .line 170
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityEventHandler:Landroid/os/Handler;

    .line 171
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 172
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "AntiMisoperationWakeLock"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 173
    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 174
    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximitySensor:Landroid/hardware/Sensor;

    .line 175
    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityThreshold:F

    .line 178
    :cond_0
    const-string v1, "AntiMisoperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called AntiMisOperation. mUseAntiMisoperation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mUseAntiMisoperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/common/antimisoperation/AntiMisoperation;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    iget v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$1000(Lcom/vivo/common/antimisoperation/AntiMisoperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->acquirePartialWakeLock()V

    return-void
.end method

.method static synthetic access$1100(Lcom/vivo/common/antimisoperation/AntiMisoperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->releasePartialWakeLock()V

    return-void
.end method

.method static synthetic access$1200(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/common/antimisoperation/AntiMisoperation;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    iget v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockKickCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/vivo/common/antimisoperation/AntiMisoperation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockKickCount:I

    return p1
.end method

.method static synthetic access$1312(Lcom/vivo/common/antimisoperation/AntiMisoperation;I)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iget v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockKickCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockKickCount:I

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isQQWorkSource()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/common/antimisoperation/AntiMisoperation;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    iget v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    return v0
.end method

.method static synthetic access$202(Lcom/vivo/common/antimisoperation/AntiMisoperation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    return p1
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 37
    invoke-static {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->proximityToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getWakelockTimeout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/common/antimisoperation/AntiMisoperation;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->setProximitySensorEnabledInner(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/common/antimisoperation/AntiMisoperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->onAntiMisoperationMoved()V

    return-void
.end method

.method static synthetic access$900(Lcom/vivo/common/antimisoperation/AntiMisoperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->logoutAntiMisoperationInnger()V

    return-void
.end method

.method private acquirePartialWakeLock()V
    .locals 4

    .prologue
    const/4 v2, 0x7

    .line 366
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 367
    const-string v0, "AntiMisoperation"

    const-string v1, "acquirePartialWakeLock mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockKickCount:I

    .line 373
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v0, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v1, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 375
    const-string v0, "AntiMisoperation"

    const-string v1, "mWakeLock.acquire"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getWakelockTimeout()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockTimeout:Z

    return v0
.end method

.method private isBackdoorTag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 527
    sget-object v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->WHITELIST_BACKDOORS:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isInList(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isBrightFlag(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 496
    and-int/lit8 v0, p1, 0xf

    .line 498
    .local v0, "bright":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 500
    :cond_0
    const/4 v1, 0x1

    .line 502
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIgnoreProximityTag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 531
    sget-object v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->WHITELIST_IGNORE_EPROXIMITY:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isInList(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isInList(Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 460
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v4, v5

    .line 492
    :cond_1
    :goto_0
    return v4

    .line 463
    :cond_2
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 464
    .local v3, "x":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 486
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 463
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    :pswitch_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 471
    :pswitch_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 476
    :pswitch_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 481
    :pswitch_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .end local v3    # "x":Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 492
    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static isOpEntry()Z
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mOpEntry:Ljava/lang/String;

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

.method private isPartialFlag(I)Z
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 506
    and-int/lit8 v0, p1, 0xf

    .line 507
    .local v0, "par":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isQQWorkSource()Z
    .locals 6

    .prologue
    .line 115
    const/4 v3, 0x0

    .line 117
    .local v3, "res":Z
    :try_start_0
    sget-object v4, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAppContextImpl:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 118
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.tencent.mobileqq"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 119
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sget v5, Lcom/vivo/common/antimisoperation/AntiMisoperation;->callerUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .line 120
    const/4 v3, 0x1

    .line 125
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isUseAntiMisoperation()Z
    .locals 1

    .prologue
    .line 182
    sget-boolean v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mUseAntiMisoperation:Z

    return v0
.end method

.method private isWhitelistAppTag(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 512
    sget-object v2, Lcom/vivo/common/antimisoperation/AntiMisoperation;->WHITELIST_CONTAIN:[Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isInList(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    iget-boolean v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isHallLocked:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/vivo/common/antimisoperation/AntiMisoperation;->HAVE_HOLSTER_WINDOW:Z

    if-eqz v2, :cond_3

    .line 516
    sget-object v2, Lcom/vivo/common/antimisoperation/AntiMisoperation;->WHITELIST_HALLLOCKED_EQUALS:[Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isInList(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 522
    goto :goto_0

    .line 519
    :cond_3
    sget-object v2, Lcom/vivo/common/antimisoperation/AntiMisoperation;->WHITELIST_EQUALS:[Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isInList(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-boolean v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "AntiMisoperation"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method

.method private logoutAntiMisoperationInnger()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->enableMonitor(Z)V

    .line 359
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    invoke-interface {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;->onLogout()V

    .line 362
    :cond_0
    return-void
.end method

.method private onAntiMisoperationMoved()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 186
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;->onTriggered(Z)V

    .line 188
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v0, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 189
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v1, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    :cond_0
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 200
    packed-switch p0, :pswitch_data_0

    .line 208
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 202
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 204
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 206
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private releasePartialWakeLock()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 380
    const-string v0, "AntiMisoperation"

    const-string v1, "releasePartialWakeLock mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockKickCount:I

    .line 386
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 387
    const-string v0, "AntiMisoperation"

    const-string v1, "mWakeLock.release"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProximityEnabled(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 290
    iget-boolean v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityEnabled:Z

    if-eq p1, v0, :cond_0

    .line 291
    const-string v0, "AntiMisoperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProximityEnabled("

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

    .line 292
    iput-boolean p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityEnabled:Z

    .line 293
    if-eqz p1, :cond_1

    .line 294
    iput v4, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    .line 295
    invoke-virtual {p0, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->setTriggered(Z)V

    .line 296
    invoke-direct {p0, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->setWakelockTimeout(Z)V

    .line 297
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v0, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v1, v5}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iput v4, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    .line 301
    invoke-virtual {p0, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->setTriggered(Z)V

    .line 302
    invoke-direct {p0, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->setWakelockTimeout(Z)V

    .line 303
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v0, v5}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 304
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v1, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 306
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v0, v6}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 307
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v1, v6}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setProximitySensorEnabledInner(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 314
    iget-boolean v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityListenerRegisted:Z

    if-eq p1, v1, :cond_0

    .line 315
    if-eqz p1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    .line 318
    .local v0, "ret":Z
    const-string v1, "AntiMisoperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput-boolean v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityListenerRegisted:Z

    .line 325
    .end local v0    # "ret":Z
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityListenerRegisted:Z

    return v1

    .line 321
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityListenerRegisted:Z

    .line 322
    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method private setWakelockTimeout(Z)V
    .locals 0
    .param p1, "out"    # Z

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockTimeout:Z

    .line 422
    return-void
.end method


# virtual methods
.method public enableMonitor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 329
    sget-boolean v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mUseAntiMisoperation:Z

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    if-nez v0, :cond_2

    .line 334
    const-string v0, "enableMonitor error mCallback is null"

    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_2
    if-eqz p1, :cond_4

    .line 341
    iget-boolean v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mPhoneStateIdle:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    invoke-interface {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;->getUseProximity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMonitor mPhoneStateIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mPhoneStateIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getUseProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    invoke-interface {v1}, Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;->getUseProximity()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can not enable!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_4
    iget-boolean v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mMonitorEnabled:Z

    if-eq p1, v0, :cond_0

    .line 348
    if-eqz p1, :cond_5

    .line 349
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->setProximityEnabled(Z)V

    .line 353
    :goto_1
    iput-boolean p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mMonitorEnabled:Z

    goto :goto_0

    .line 351
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->setProximityEnabled(Z)V

    goto :goto_1
.end method

.method public getMonitorEnabled()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mMonitorEnabled:Z

    return v0
.end method

.method public getProximityStatus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 442
    iget-boolean v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityEnabled:Z

    if-eqz v2, :cond_1

    .line 443
    iget v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    if-ne v2, v0, :cond_0

    .line 445
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 443
    goto :goto_0

    :cond_1
    move v0, v1

    .line 445
    goto :goto_0
.end method

.method public getTriggered()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mMonitorEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximityEnabled:Z

    if-eqz v0, :cond_0

    .line 412
    iget-boolean v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mTriggered:Z

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedIngoreProximity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isIgnoreProximityTag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public logoutAntiMisoperation(Z)V
    .locals 3
    .param p1, "callCallback"    # Z

    .prologue
    const/4 v2, 0x4

    .line 396
    if-nez p1, :cond_0

    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->enableMonitor(Z)V

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v0, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v1, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method msgToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnkownMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 215
    :pswitch_0
    const-string v0, "MSG_PROXIMITY_SENSOR_DISABLE"

    goto :goto_0

    .line 218
    :pswitch_1
    const-string v0, "MSG_PROXIMITY_SENSOR_ENABLE"

    goto :goto_0

    .line 221
    :pswitch_2
    const-string v0, "MSG_ANTIMISOPERATION_TRIGGERED"

    goto :goto_0

    .line 224
    :pswitch_3
    const-string v0, "MSG_ANTIMISOPERATION_MOVEED"

    goto :goto_0

    .line 227
    :pswitch_4
    const-string v0, "MSG_ANTIMISOPERATION_LOGOUT"

    goto :goto_0

    .line 230
    :pswitch_5
    const-string v0, "MSG_ANTIMISOPERATION_WAKELOCK_ACQUIRE"

    goto :goto_0

    .line 233
    :pswitch_6
    const-string v0, "MSG_ANTIMISOPERATION_WAKELOCK_RELEASE"

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onAcquireWakeLock(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)Z
    .locals 10
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;
    .param p5, "uid"    # I
    .param p6, "pid"    # I

    .prologue
    .line 543
    const/4 v6, 0x0

    .line 544
    .local v6, "ret":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAcquireWakeLock flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    .line 545
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAcquireWakeLock mUseAntiMisoperation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mUseAntiMisoperation:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " policy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    invoke-interface {v8}, Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;->getCurrentDisplayPolicy()I

    move-result v8

    invoke-static {v8}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mMonitorEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mMonitorEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getTriggered="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getTriggered()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    .line 549
    sget-boolean v7, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mUseAntiMisoperation:Z

    if-nez v7, :cond_0

    .line 550
    const/4 v7, 0x0

    .line 625
    :goto_0
    return v7

    .line 553
    :cond_0
    iget-object v7, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    invoke-interface {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;->getCurrentDisplayPolicy()I

    move-result v5

    .line 554
    .local v5, "po":I
    if-eqz v5, :cond_1

    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    invoke-virtual {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getMonitorEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 555
    const/4 v7, 0x0

    goto :goto_0

    .line 558
    :cond_1
    iget-boolean v7, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mMonitorEnabled:Z

    if-nez v7, :cond_2

    .line 559
    const/4 v7, 0x0

    goto :goto_0

    .line 562
    :cond_2
    invoke-direct {p0, p1}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isBrightFlag(I)Z

    move-result v1

    .line 563
    .local v1, "isBrightWakelock":Z
    and-int/lit8 v7, p1, 0x20

    if-eqz v7, :cond_5

    const/4 v3, 0x1

    .line 564
    .local v3, "isProximityWakelock":Z
    :goto_1
    invoke-direct {p0, p2}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isWhitelistAppTag(Ljava/lang/String;)Z

    move-result v4

    .line 565
    .local v4, "isWhitelist":Z
    invoke-direct {p0, p2}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isBackdoorTag(Ljava/lang/String;)Z

    move-result v0

    .line 566
    .local v0, "isBackdoorList":Z
    invoke-direct {p0, p1}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isPartialFlag(I)Z

    move-result v2

    .line 569
    .local v2, "isPartialWakelook":Z
    if-eqz v1, :cond_d

    .line 570
    const-string v7, "WindowManager"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 572
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 573
    const/4 v7, 0x0

    invoke-virtual {p4, v7}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    sput v7, Lcom/vivo/common/antimisoperation/AntiMisoperation;->callerUid:I

    .line 575
    :cond_3
    iget-object v7, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v8, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 577
    :cond_4
    invoke-virtual {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getTriggered()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 579
    if-eqz v4, :cond_6

    .line 580
    const-string v7, "onAcquireWakeLock logoutAntiMisoperation isWhitelist"

    invoke-static {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    .line 581
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->logoutAntiMisoperation(Z)V

    :goto_2
    move v7, v6

    .line 625
    goto :goto_0

    .line 563
    .end local v0    # "isBackdoorList":Z
    .end local v2    # "isPartialWakelook":Z
    .end local v3    # "isProximityWakelock":Z
    .end local v4    # "isWhitelist":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 582
    .restart local v0    # "isBackdoorList":Z
    .restart local v2    # "isPartialWakelook":Z
    .restart local v3    # "isProximityWakelock":Z
    .restart local v4    # "isWhitelist":Z
    :cond_6
    if-eqz v3, :cond_7

    .line 583
    const-string v7, "onAcquireWakeLock logoutAntiMisoperation isProximityWakelock"

    invoke-static {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    .line 584
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->logoutAntiMisoperation(Z)V

    goto :goto_2

    .line 586
    :cond_7
    iget v7, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 587
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->setWakelockTimeout(Z)V

    .line 588
    const/4 v6, 0x1

    .line 589
    iget-object v7, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 590
    iget-object v7, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 591
    iget-object v7, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v8, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 592
    const-string v7, "onAcquireWakeLock getTriggered and keep current."

    invoke-static {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 594
    :cond_8
    const-string v7, "AntiMisoperation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAcquireWakeLock logoutAntiMisoperation mProximity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->logoutAntiMisoperation(Z)V

    goto :goto_2

    .line 600
    :cond_9
    if-eqz v4, :cond_a

    .line 601
    const-string v7, "onAcquireWakeLock not triggered and enableMonitor(false): isWhitelist=true"

    invoke-static {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    .line 602
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->enableMonitor(Z)V

    goto :goto_2

    .line 603
    :cond_a
    if-eqz v3, :cond_b

    .line 604
    const-string v7, "onAcquireWakeLock not triggered and enableMonitor(false): isProximityWakelock=true"

    invoke-static {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    .line 605
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->enableMonitor(Z)V

    goto :goto_2

    .line 606
    :cond_b
    invoke-virtual {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getProximityStatus()Z

    move-result v7

    if-nez v7, :cond_c

    .line 607
    const-string v7, "onAcquireWakeLock not triggered and enableMonitor(false): getProximityStatus=false"

    invoke-static {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    .line 608
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->enableMonitor(Z)V

    goto :goto_2

    .line 610
    :cond_c
    const-string v7, "AntiMisoperation"

    const-string v8, "onAcquireWakeLock setTriggered(true)."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->setTriggered(Z)V

    .line 612
    iget-object v7, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 613
    iget-object v7, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 614
    iget-object v7, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v8, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 615
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 618
    :cond_d
    if-eqz v2, :cond_e

    if-eqz v0, :cond_e

    .line 619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "logoutAntiMisoperation as backdoors:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    .line 620
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->logoutAntiMisoperation(Z)V

    goto/16 :goto_2

    .line 622
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAcquireWakeLock not bright,keep current:isBrightWakelock="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isWhitelist="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getMonitorEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getMonitorEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getTriggered="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getTriggered()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getWakelockTimeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getWakelockTimeout()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onReleaseWakelock()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 630
    sget-boolean v0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mUseAntiMisoperation:Z

    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getMonitorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getTriggered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    invoke-interface {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;->countBrightFullLocks()I

    move-result v0

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->setWakelockTimeout(Z)V

    .line 640
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 641
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v0, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 642
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v1, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setHallStatus(Z)V
    .locals 5
    .param p1, "lock"    # Z

    .prologue
    const/4 v4, 0x1

    .line 654
    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    invoke-interface {v1}, Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;->getCurrentDisplayPolicy()I

    move-result v0

    .line 655
    .local v0, "policy":I
    iput-boolean p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->isHallLocked:Z

    .line 656
    const-string v1, "AntiMisoperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHallStatus policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getMonitorEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getMonitorEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    if-nez p1, :cond_1

    sget-boolean v1, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mUseAntiMisoperation:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->getMonitorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    .line 659
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->logoutAntiMisoperation(Z)V

    .line 665
    :cond_1
    :goto_0
    return-void

    .line 661
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->logoutAntiMisoperation(Z)V

    goto :goto_0
.end method

.method public setPhoneCallState(Z)V
    .locals 0
    .param p1, "idle"    # Z

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mPhoneStateIdle:Z

    .line 669
    return-void
.end method

.method public setProximityStatus(Z)V
    .locals 2
    .param p1, "mProximityStatus"    # Z

    .prologue
    .line 453
    if-eqz p1, :cond_0

    .line 454
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    .line 457
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProximity ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    .line 458
    return-void

    .line 456
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mProximity:I

    goto :goto_0
.end method

.method public setTriggered(Z)V
    .locals 3
    .param p1, "trig"    # Z

    .prologue
    const/4 v2, 0x2

    .line 429
    iput-boolean p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mTriggered:Z

    .line 430
    if-eqz p1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v0, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->removeMessages(I)V

    .line 432
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    invoke-virtual {v1, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTriggered("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->log(Ljava/lang/String;)V

    .line 435
    return-void
.end method
