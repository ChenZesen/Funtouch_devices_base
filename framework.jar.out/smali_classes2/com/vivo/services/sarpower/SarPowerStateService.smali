.class public Lcom/vivo/services/sarpower/SarPowerStateService;
.super Lcom/vivo/services/sarpower/ISarPowerStateService$Stub;
.source "SarPowerStateService.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;,
        Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_COMPLETE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final ACTION_CARD_CHANGE:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final ACTION_SAR_POWER_CHANGE:I = 0x0

.field private static final ACTION_SAR_POWER_FAR:B = 0x0t

.field private static final ACTION_SAR_POWER_MAX:I = 0x8

.field private static final ACTION_SAR_POWER_MIN:I = 0x0

.field private static final ACTION_SAR_POWER_NEAR:B = 0x1t

.field private static final ACTION_SAR_POWER_TEST:Ljava/lang/String; = "android.intent.action.sar_test"

.field private static final ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field private static final QcRilHookClassName:Ljava/lang/String; = "com.qualcomm.qcrilhook.QcRilHook"

.field private static final SAR_POWER_STATE_TEST_PARMNAME:Ljava/lang/String; = "powerState"

.field private static final SAR_POWER_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/sar-power"

.field private static final SUPPORT_SAR_POWER:Z

.field private static final SetSarPowerMethodName:Ljava/lang/String; = "qcRilSetSarPower"

.field private static final TAG:Ljava/lang/String; = "SarPowerStateServices"

.field private static mContext:Landroid/content/Context;

.field private static mThread:Landroid/os/HandlerThread;


# instance fields
.field private QcRilHook:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private cons:[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private final mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private final mCardChange:Landroid/content/BroadcastReceiver;

.field private mCardState:I

.field private mLastSarPowerState:B

.field private mMainLooper:Landroid/os/Looper;

.field private mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityState:I

.field private mSarPowerObserver:Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;

.field private mSarPowerRfDetectState:I

.field private final mSarPowerTestReceiver:Landroid/content/BroadcastReceiver;

.field private mSarQcRilHook:Ljava/lang/Object;

.field private final mScreenOff:Landroid/content/BroadcastReceiver;

.field private final mScreenOn:Landroid/content/BroadcastReceiver;

.field private mScreenState:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mtelephonyManager:Landroid/telephony/TelephonyManager;

.field private qcRilSetSarPower:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "persist.vivo.phone.sarpower"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Have_sarpower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/sarpower/SarPowerStateService;->SUPPORT_SAR_POWER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 390
    invoke-direct {p0}, Lcom/vivo/services/sarpower/ISarPowerStateService$Stub;-><init>()V

    .line 88
    iput-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 92
    iput v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximityState:I

    .line 93
    iput v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenState:I

    .line 94
    iput v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mCardState:I

    .line 95
    iput v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerRfDetectState:I

    .line 96
    iput-byte v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mLastSarPowerState:B

    .line 101
    iput-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->QcRilHook:Ljava/lang/Class;

    .line 102
    iput-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->cons:[Ljava/lang/reflect/Constructor;

    .line 103
    iput-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarQcRilHook:Ljava/lang/Object;

    .line 104
    iput-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->qcRilSetSarPower:Ljava/lang/reflect/Method;

    .line 110
    new-instance v0, Lcom/vivo/services/sarpower/SarPowerStateService$1;

    invoke-direct {v0, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$1;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 185
    new-instance v0, Lcom/vivo/services/sarpower/SarPowerStateService$2;

    invoke-direct {v0, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$2;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance v0, Lcom/vivo/services/sarpower/SarPowerStateService$3;

    invoke-direct {v0, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$3;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenOn:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Lcom/vivo/services/sarpower/SarPowerStateService$4;

    invoke-direct {v0, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$4;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenOff:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance v0, Lcom/vivo/services/sarpower/SarPowerStateService$5;

    invoke-direct {v0, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$5;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mCardChange:Landroid/content/BroadcastReceiver;

    .line 368
    new-instance v0, Lcom/vivo/services/sarpower/SarPowerStateService$6;

    invoke-direct {v0, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$6;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerTestReceiver:Landroid/content/BroadcastReceiver;

    .line 392
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "contxt"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 394
    invoke-direct {p0}, Lcom/vivo/services/sarpower/ISarPowerStateService$Stub;-><init>()V

    .line 88
    iput-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 92
    iput v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximityState:I

    .line 93
    iput v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenState:I

    .line 94
    iput v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mCardState:I

    .line 95
    iput v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerRfDetectState:I

    .line 96
    iput-byte v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mLastSarPowerState:B

    .line 101
    iput-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->QcRilHook:Ljava/lang/Class;

    .line 102
    iput-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->cons:[Ljava/lang/reflect/Constructor;

    .line 103
    iput-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarQcRilHook:Ljava/lang/Object;

    .line 104
    iput-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->qcRilSetSarPower:Ljava/lang/reflect/Method;

    .line 110
    new-instance v4, Lcom/vivo/services/sarpower/SarPowerStateService$1;

    invoke-direct {v4, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$1;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 185
    new-instance v4, Lcom/vivo/services/sarpower/SarPowerStateService$2;

    invoke-direct {v4, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$2;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance v4, Lcom/vivo/services/sarpower/SarPowerStateService$3;

    invoke-direct {v4, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$3;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenOn:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v4, Lcom/vivo/services/sarpower/SarPowerStateService$4;

    invoke-direct {v4, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$4;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenOff:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance v4, Lcom/vivo/services/sarpower/SarPowerStateService$5;

    invoke-direct {v4, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$5;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mCardChange:Landroid/content/BroadcastReceiver;

    .line 368
    new-instance v4, Lcom/vivo/services/sarpower/SarPowerStateService$6;

    invoke-direct {v4, p0}, Lcom/vivo/services/sarpower/SarPowerStateService$6;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerTestReceiver:Landroid/content/BroadcastReceiver;

    .line 395
    sput-object p1, Lcom/vivo/services/sarpower/SarPowerStateService;->mContext:Landroid/content/Context;

    .line 397
    sget-boolean v4, Lcom/vivo/services/sarpower/SarPowerStateService;->SUPPORT_SAR_POWER:Z

    if-eqz v4, :cond_0

    .line 401
    sget-object v4, Lcom/vivo/services/sarpower/SarPowerStateService;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 403
    iget-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 405
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    .line 407
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "SarPowerStateServices"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/vivo/services/sarpower/SarPowerStateService;->mThread:Landroid/os/HandlerThread;

    .line 408
    sget-object v4, Lcom/vivo/services/sarpower/SarPowerStateService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 409
    sget-object v4, Lcom/vivo/services/sarpower/SarPowerStateService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mMainLooper:Landroid/os/Looper;

    .line 410
    new-instance v4, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    iget-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v4, p0, v5}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;-><init>(Lcom/vivo/services/sarpower/SarPowerStateService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    .line 412
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 413
    .local v0, "filterBootComplete":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    sget-object v4, Lcom/vivo/services/sarpower/SarPowerStateService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 416
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 417
    .local v3, "filterScreenOn":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    sget-object v4, Lcom/vivo/services/sarpower/SarPowerStateService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenOn:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 421
    .local v2, "filterScreenOff":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    sget-object v4, Lcom/vivo/services/sarpower/SarPowerStateService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenOff:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 425
    .local v1, "filterCardChange":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    sget-object v4, Lcom/vivo/services/sarpower/SarPowerStateService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mCardChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    iget-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 431
    .end local v0    # "filterBootComplete":Landroid/content/IntentFilter;
    .end local v1    # "filterCardChange":Landroid/content/IntentFilter;
    .end local v2    # "filterScreenOff":Landroid/content/IntentFilter;
    .end local v3    # "filterScreenOn":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/sarpower/SarPowerStateService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;

    .prologue
    .line 50
    iget v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximityState:I

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/services/sarpower/SarPowerStateService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mProximityState:I

    return p1
.end method

.method static synthetic access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/services/sarpower/SarPowerStateService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/vivo/services/sarpower/SarPowerStateService;->isWhiteCard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/vivo/services/sarpower/SarPowerStateService;->isVSim(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/vivo/services/sarpower/SarPowerStateService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/vivo/services/sarpower/SarPowerStateService;->nativeInitSarPowerState()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/services/sarpower/SarPowerStateService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;

    .prologue
    .line 50
    iget v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerRfDetectState:I

    return v0
.end method

.method static synthetic access$202(Lcom/vivo/services/sarpower/SarPowerStateService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerRfDetectState:I

    return p1
.end method

.method static synthetic access$300(Lcom/vivo/services/sarpower/SarPowerStateService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;

    .prologue
    .line 50
    iget v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenState:I

    return v0
.end method

.method static synthetic access$302(Lcom/vivo/services/sarpower/SarPowerStateService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenState:I

    return p1
.end method

.method static synthetic access$400(Lcom/vivo/services/sarpower/SarPowerStateService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;

    .prologue
    .line 50
    iget v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mCardState:I

    return v0
.end method

.method static synthetic access$402(Lcom/vivo/services/sarpower/SarPowerStateService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mCardState:I

    return p1
.end method

.method static synthetic access$500(Lcom/vivo/services/sarpower/SarPowerStateService;)B
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;

    .prologue
    .line 50
    iget-byte v0, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mLastSarPowerState:B

    return v0
.end method

.method static synthetic access$502(Lcom/vivo/services/sarpower/SarPowerStateService;B)B
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;
    .param p1, "x1"    # B

    .prologue
    .line 50
    iput-byte p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mLastSarPowerState:B

    return p1
.end method

.method static synthetic access$600(Lcom/vivo/services/sarpower/SarPowerStateService;B)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;
    .param p1, "x1"    # B

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/vivo/services/sarpower/SarPowerStateService;->setQcRiSarPowerState(B)V

    return-void
.end method

.method static synthetic access$702(Lcom/vivo/services/sarpower/SarPowerStateService;Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;)Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;
    .param p1, "x1"    # Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerObserver:Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/vivo/services/sarpower/SarPowerStateService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vivo/services/sarpower/SarPowerStateService;->initialPowerState()V

    return-void
.end method

.method static synthetic access$900(Lcom/vivo/services/sarpower/SarPowerStateService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/sarpower/SarPowerStateService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/vivo/services/sarpower/SarPowerStateService;->getSimIccid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSimIccid(I)Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 297
    const-string v2, ""

    .line 298
    .local v2, "iccid":Ljava/lang/String;
    sget-object v5, Lcom/vivo/services/sarpower/SarPowerStateService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 299
    .local v0, "activeSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v3, v5

    .line 300
    .local v3, "iccids":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 302
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 303
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    .line 308
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const-string v5, "SarPowerStateServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iccid read for SubscriptionInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-object v2
.end method

.method private initialPowerState()V
    .locals 4

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/vivo/services/sarpower/SarPowerStateService;->sarQcRilHookReflect()Z

    move-result v1

    .line 436
    .local v1, "reflectRet":Z
    if-nez v1, :cond_0

    .line 437
    const-string v2, "SarPowerStateServices"

    const-string v3, "sarQcRilHookReflect init fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/vivo/services/sarpower/SarPowerStateService;->sarPowerSwitchEnable(I)I

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .local v0, "filterSarPowerTest":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.sar_test"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    sget-object v2, Lcom/vivo/services/sarpower/SarPowerStateService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static isTestImsi(Ljava/lang/String;)Z
    .locals 2
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 358
    const-string v1, "44201"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46099"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "005"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "006"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "007"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "008"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "009"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "010"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "011"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "012"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 363
    .local v0, "isTestSim":Z
    :goto_0
    return v0

    .line 358
    .end local v0    # "isTestSim":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVSim(Ljava/lang/String;)Z
    .locals 4
    .param p0, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 314
    const-string v1, "SarPowerStateServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-nez p0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    const-string v1, "898600"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-string v0, "SarPowerStateServices"

    const-string v1, "Is virtul Sim"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWhiteCard(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 331
    const-string v2, "SarPowerStateServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "imsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    const-string v2, "SarPowerStateServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/vivo/services/sarpower/SarPowerStateService;->isTestImsi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    const-string v1, "SarPowerStateServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is white SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v1, 0x1

    .line 352
    .end local v0    # "imsi":Ljava/lang/String;
    :goto_0
    return v1

    .line 336
    :cond_0
    const-string v2, "SarPowerStateServices"

    const-string v3, "SubId is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    .restart local v0    # "imsi":Ljava/lang/String;
    :cond_1
    const-string v2, "SarPowerStateServices"

    const-string v3, "imsi is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_2
    const-string v2, "SarPowerStateServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is not white SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native nativeHandleSarPowerEnable(I)I
.end method

.method private static native nativeInitSarPowerState()I
.end method

.method private sarQcRilHookReflect()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 451
    :try_start_0
    const-string v3, "com.qualcomm.qcrilhook.QcRilHook"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->QcRilHook:Ljava/lang/Class;

    .line 452
    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->QcRilHook:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 453
    const-string v2, "SarPowerStateServices"

    const-string v3, "QcRilHook class get fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_0
    return v1

    .line 457
    :cond_0
    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->QcRilHook:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->cons:[Ljava/lang/reflect/Constructor;

    .line 458
    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->cons:[Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_1

    .line 459
    const-string v2, "SarPowerStateServices"

    const-string v3, "Constructors get fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SarPowerStateServices"

    const-string v3, "sarQcRilHookReflect throws exception "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->cons:[Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/vivo/services/sarpower/SarPowerStateService;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarQcRilHook:Ljava/lang/Object;

    .line 464
    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarQcRilHook:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 465
    const-string v2, "SarPowerStateServices"

    const-string v3, "mSarQcRilHook Object get fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :cond_2
    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->QcRilHook:Ljava/lang/Class;

    const-string v4, "qcRilSetSarPower"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->qcRilSetSarPower:Ljava/lang/reflect/Method;

    .line 471
    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->qcRilSetSarPower:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    .line 472
    const-string v2, "SarPowerStateServices"

    const-string v3, "mSarQcRilHook Method get fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 483
    goto :goto_0
.end method

.method private setQcRiSarPowerState(B)V
    .locals 7
    .param p1, "powerState"    # B

    .prologue
    .line 164
    iget-object v2, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->qcRilSetSarPower:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 165
    const-string v2, "SarPowerStateServices"

    const-string v3, "qcRilSetSarPower is null return"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->qcRilSetSarPower:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService;->mSarQcRilHook:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, p1}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 173
    .local v1, "sarTestResult":Z
    if-nez v1, :cond_1

    .line 174
    const-string v2, "SarPowerStateServices"

    const-string v3, "writeSarTestMode return fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "sarTestResult":Z
    :cond_1
    :goto_1
    const-string v2, "SarPowerStateServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setQcRiSarPowerState powerState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SarPowerStateServices"

    const-string v3, "setQcRiSarPowerState throws exception "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public sarPowerSwitchEnable(I)I
    .locals 4
    .param p1, "enable"    # I

    .prologue
    .line 517
    const/4 v0, -0x1

    .line 519
    .local v0, "ret":I
    invoke-static {p1}, Lcom/vivo/services/sarpower/SarPowerStateService;->nativeHandleSarPowerEnable(I)I

    move-result v0

    .line 520
    if-gez v0, :cond_0

    .line 521
    const-string v1, "SarPowerStateServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SarPowerSwitchEnable write fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    const-string v1, "SarPowerStateServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SarPowerSwitchEnable write enable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v1, 0x0

    return v1
.end method
