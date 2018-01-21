.class public Lcom/vivo/services/touchscreen/BBKTouchScreenService;
.super Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;
.source "BBKTouchScreenService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;
    }
.end annotation


# static fields
.field static final BBK_TP_GESTURE_DCLICK_SWITCH:I = 0x100

.field static final BBK_TP_GESTURE_FINGERPRINT_QUICK_SWITCH:I = 0x800

.field static final BBK_TP_GESTURE_LETTER_C_SWITCH:I = 0x40

.field static final BBK_TP_GESTURE_LETTER_E_SWITCH:I = 0x20

.field static final BBK_TP_GESTURE_LETTER_M_SWITCH:I = 0x10

.field static final BBK_TP_GESTURE_LETTER_O_SWITCH:I = 0x4

.field static final BBK_TP_GESTURE_LETTER_W_SWITCH:I = 0x8

.field static final BBK_TP_GESTURE_SWIPE_DOWN_SWITCH:I = 0x80

.field static final BBK_TP_GESTURE_SWIPE_LEFT_RIGHT_SWITCH:I = 0x1

.field static final BBK_TP_GESTURE_SWIPE_UP_SWITCH:I = 0x2

.field static final BBK_TP_GESTURE_WAKE_EMAIL:I = 0x200

.field static final BBK_TP_GESTURE_WAKE_FACEBOOK:I = 0x400

.field static final HALL_LOCK_BROADCAST_ACTION:Ljava/lang/String; = "com.android.service.hallobserver.lock"

.field static final HALL_UNLOCK_BROADCAST_ACTION:Ljava/lang/String; = "com.android.service.hallobserver.unlock"

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field static final SUPER_POWER_SAVE_BROADCAST_ACTION:Ljava/lang/String; = "intent.action.super_power_save_send"

.field static final SystemGesturesSettings:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BBKTouchScreenService"


# instance fields
.field private isLcdBacklightCalled:Z

.field private mContext:Landroid/content/Context;

.field private mGesturesSetting:I

.field private mGesturesSettingSave:I

.field private mHallLockEnabled:Z

.field private mHallLockReceiver:Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHasGesturesEnabled:Z

.field private mIsScreenOn:Z

.field private final mLock:Ljava/lang/Object;

.field private mNeedDownSensitivity:Z

.field private mProximiteListenerRegistered:I

.field private mProximited:I

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSpsSwitch:Z

.field private mTemplateValid:I

.field private mUdgesturesSetting:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bbk_screen_disable_change_music_setting"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bbk_screen_disable_to_unlock_setting"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bbk_screen_disable_wake_qq_setting"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bbk_screen_disable_wake_wechat_setting"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bbk_screen_disable_wake_music_setting"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bbk_screen_disable_wake_browser_setting"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bbk_screen_disable_wake_dial_setting"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bbk_quick_open_camera_setting"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bbk_smart_wakeup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bbk_screen_disable_wake_email_setting"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bbk_screen_disable_wake_facebook_setting"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "quick_launch_app_primary_switch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->SystemGesturesSettings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 647
    invoke-direct {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;-><init>()V

    .line 32
    new-instance v0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;

    invoke-direct {v0, p0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;-><init>(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)V

    iput-object v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHallLockReceiver:Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I

    .line 34
    iput v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I

    .line 35
    iput-boolean v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSpsSwitch:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mIsScreenOn:Z

    .line 37
    iput v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSetting:I

    .line 38
    const/16 v0, 0x100

    iput v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSettingSave:I

    .line 39
    iput v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mUdgesturesSetting:I

    .line 40
    iput v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mTemplateValid:I

    .line 41
    iput-boolean v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mNeedDownSensitivity:Z

    .line 42
    iput-boolean v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z

    .line 43
    iput-boolean v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHallLockEnabled:Z

    .line 44
    iput-boolean v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->isLcdBacklightCalled:Z

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mLock:Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;

    invoke-direct {v0, p0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;-><init>(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)V

    iput-object v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 648
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 650
    invoke-direct {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;-><init>()V

    .line 32
    new-instance v2, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;

    invoke-direct {v2, p0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;-><init>(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)V

    iput-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHallLockReceiver:Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;

    .line 33
    const/4 v2, -0x1

    iput v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I

    .line 34
    iput v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I

    .line 35
    iput-boolean v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSpsSwitch:Z

    .line 36
    iput-boolean v4, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mIsScreenOn:Z

    .line 37
    iput v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSetting:I

    .line 38
    const/16 v2, 0x100

    iput v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSettingSave:I

    .line 39
    iput v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mUdgesturesSetting:I

    .line 40
    iput v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mTemplateValid:I

    .line 41
    iput-boolean v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mNeedDownSensitivity:Z

    .line 42
    iput-boolean v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z

    .line 43
    iput-boolean v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHallLockEnabled:Z

    .line 44
    iput-boolean v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->isLcdBacklightCalled:Z

    .line 108
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mLock:Ljava/lang/Object;

    .line 140
    new-instance v2, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;

    invoke-direct {v2, p0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;-><init>(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)V

    iput-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 651
    iput-object p1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mContext:Landroid/content/Context;

    .line 652
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 653
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 655
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeInit()V

    .line 657
    const-string v2, "BBKTouchScreenService"

    const-string v5, "new hander thread !!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TS_Service"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 659
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 660
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHandler:Landroid/os/Handler;

    .line 661
    const-string v2, "BBKTouchScreenService"

    const-string v5, "end !!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 665
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.service.hallobserver.lock"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v2, "com.android.service.hallobserver.unlock"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v2, "intent.action.super_power_save_send"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHallLockReceiver:Lcom/vivo/services/touchscreen/BBKTouchScreenService$HallLockReceiver;

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    const-string v2, "ro.product.model.bbk"

    const-string v5, "other"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "PD1227T"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ro.product.model.bbk"

    const-string v5, "other"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "PD1227TG3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ro.product.model.bbk"

    const-string v5, "other"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "PD1227B"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mNeedDownSensitivity:Z

    .line 674
    const-string v2, "sys.super_power_save"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSpsSwitch:Z

    .line 675
    iget-boolean v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mNeedDownSensitivity:Z

    if-eqz v2, :cond_1

    .line 677
    invoke-virtual {p0, v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->RegisterProximityListener(Z)V

    .line 679
    :cond_1
    const-string v2, "BBKTouchScreenService"

    const-string v3, "construct function called !!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-void

    :cond_2
    move v2, v3

    .line 670
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mNeedDownSensitivity:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    .prologue
    .line 25
    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I

    return v0
.end method

.method static synthetic access$400(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    .prologue
    .line 25
    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I

    return v0
.end method

.method static synthetic access$402(Lcom/vivo/services/touchscreen/BBKTouchScreenService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I

    return p1
.end method

.method static synthetic access$500(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 25
    invoke-static {p0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenDclickEnable(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vivo/services/touchscreen/BBKTouchScreenService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$800(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 25
    invoke-static {p0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenGlovesModeSwitch(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/vivo/services/touchscreen/BBKTouchScreenService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/touchscreen/BBKTouchScreenService;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHallLockEnabled:Z

    return p1
.end method

.method private static native nativeCallingSwitch(I)I
.end method

.method private static native nativeGetDriverICName()I
.end method

.method private static native nativeInit()V
.end method

.method private static native nativeSensorRxTx()I
.end method

.method private static native nativeTouchDclickSwitch(I)I
.end method

.method private static native nativeTouchGestureLetterSwitch(I)I
.end method

.method private static native nativeTouchGestureSignSwitch(I)I
.end method

.method private static native nativeTouchGestureSwitch(I)I
.end method

.method private static native nativeTouchGestureSwitchexport(I)I
.end method

.method private static native nativeTouchScreenDclickEnable(I)I
.end method

.method private static native nativeTouchScreenDclickSimulateSwitch(I)I
.end method

.method private static native nativeTouchScreenEdgeSuppressSwitch(I)I
.end method

.method private static native nativeTouchScreenGlovesModeSwitch(I)I
.end method

.method private static native nativeTouchScreenLcdStateSet(I)I
.end method

.method private static native nativeTouchSwipeWakeupSwitch(I)I
.end method

.method private static native nativeUdgClearTemplate()I
.end method

.method private static native nativeUdgGetAttn()I
.end method

.method private static native nativeUdgGetCoordinates([B)I
.end method

.method private static native nativeUdgGetDetectionScore()I
.end method

.method private static native nativeUdgGetGesturePoints([B)I
.end method

.method private static native nativeUdgGetGesturePointsLength()I
.end method

.method private static native nativeUdgGetMatchScore([B[B)I
.end method

.method private static native nativeUdgGetMaxNumberSigs()I
.end method

.method private static native nativeUdgGetMaxSigLength()I
.end method

.method private static native nativeUdgGetRegistrationStatus()I
.end method

.method private static native nativeUdgGetScore()I
.end method

.method private static native nativeUdgGetTemplateData([F[F[B)I
.end method

.method private static native nativeUdgGetTemplateSize()I
.end method

.method private static native nativeUdgGetThreshold()I
.end method

.method private static native nativeUdgGetTraceData([I[I[B)I
.end method

.method private static native nativeUdgGetTraceSize()I
.end method

.method private static native nativeUdgGetgestureEnable()I
.end method

.method private static native nativeUdgReadDetection()B
.end method

.method private static native nativeUdgReadDetectionIndex()I
.end method

.method private static native nativeUdgReadIndex()I
.end method

.method private static native nativeUdgReadSignature([B)I
.end method

.method private static native nativeUdgReadTemplateDetection()I
.end method

.method private static native nativeUdgReadTemplateMaxIndex()I
.end method

.method private static native nativeUdgReadTemplateValid()I
.end method

.method private static native nativeUdgSetDetectionEnable(I)I
.end method

.method private static native nativeUdgSetEnable(I)I
.end method

.method private static native nativeUdgSetEngineEnable(I)I
.end method

.method private static native nativeUdgSetEnroll(I)I
.end method

.method private static native nativeUdgSetMode(I)I
.end method

.method private static native nativeUdgSetRegistrationBegin(I)I
.end method

.method private static native nativeUdgSetRegistrationEnable(I)I
.end method

.method private static native nativeUdgSetTemplateValid(I)I
.end method

.method private static native nativeUdgSetThreshold(I)I
.end method

.method private static native nativeUdgSetgestureEnable(I)I
.end method

.method private static native nativeUdgWriteIndex(I)I
.end method

.method private static native nativeUdgWriteSignature([B)I
.end method

.method private static native nativeUdgWriteTemplateData([F[F[B)I
.end method

.method private static native nativeUdgWriteTemplateIndex(C)I
.end method


# virtual methods
.method GetGesturesSwitchState()I
    .locals 6

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "GesturesSettings":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->SystemGesturesSettings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->SystemGesturesSettings:[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 263
    .local v1, "TempSetting":I
    const-string v3, "BBKTouchScreenService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->SystemGesturesSettings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    shl-int v3, v1, v2

    or-int/2addr v0, v3

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "TempSetting":I
    :cond_0
    return v0
.end method

.method RegisterProximityListener(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    .line 273
    const-string v0, "BBKTouchScreenService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The mProximiteListenerRegistered is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I

    .line 276
    if-eqz p1, :cond_1

    .line 277
    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I

    if-eq v0, v3, :cond_0

    .line 278
    iput v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I

    .line 279
    iget-object v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I

    .line 285
    iget-object v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method SetNativeGesturesSwitchState(I)V
    .locals 6
    .param p1, "GesturesSettings"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "GestureSignSetting":I
    iget v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSettingSave:I

    xor-int v1, p1, v3

    .line 299
    .local v1, "SettingBitmap":I
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_0

    .line 300
    and-int/lit16 v3, p1, 0x100

    if-lez v3, :cond_7

    .line 301
    invoke-static {v5}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchDclickSwitch(I)I

    .line 307
    :cond_0
    :goto_0
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    .line 308
    and-int/lit16 v3, p1, 0x80

    if-lez v3, :cond_8

    .line 309
    invoke-static {v5}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchSwipeWakeupSwitch(I)I

    .line 316
    :cond_1
    :goto_1
    and-int/lit16 v3, v1, 0x600

    if-eqz v3, :cond_2

    .line 317
    and-int/lit16 v2, p1, 0x600

    .line 318
    .local v2, "tempsetting":I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchGestureSwitchexport(I)I

    .line 322
    .end local v2    # "tempsetting":I
    :cond_2
    const-string v3, "BBKTouchScreenService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingBitmap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mGesturesSettingSave:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSettingSave:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    and-int/lit16 v3, v1, 0x87f

    if-eqz v3, :cond_3

    .line 324
    and-int/lit8 v2, p1, 0x7f

    .line 325
    .restart local v2    # "tempsetting":I
    and-int/lit16 v3, p1, 0x800

    shr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    .line 326
    const-string v3, "BBKTouchScreenService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set gesture_switch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchGestureSwitch(I)I

    .line 330
    .end local v2    # "tempsetting":I
    :cond_3
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_4

    .line 331
    and-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_4

    .line 332
    add-int/lit8 v0, v0, 0x3

    .line 336
    :cond_4
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_5

    .line 337
    and-int/lit8 v3, p1, 0x2

    if-lez v3, :cond_5

    .line 338
    add-int/lit8 v0, v0, 0x4

    .line 341
    :cond_5
    invoke-static {v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchGestureSignSwitch(I)I

    .line 343
    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_6

    .line 344
    shr-int/lit8 v3, p1, 0x2

    and-int/lit8 v2, v3, 0x1f

    .line 345
    .restart local v2    # "tempsetting":I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchGestureLetterSwitch(I)I

    .line 347
    .end local v2    # "tempsetting":I
    :cond_6
    iput p1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSettingSave:I

    .line 348
    return-void

    .line 303
    :cond_7
    invoke-static {v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchDclickSwitch(I)I

    goto/16 :goto_0

    .line 311
    :cond_8
    invoke-static {v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchSwipeWakeupSwitch(I)I

    goto/16 :goto_1
.end method

.method public TouchScreenCallingSwitch(I)I
    .locals 1
    .param p1, "on"    # I

    .prologue
    .line 459
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeCallingSwitch(I)I

    move-result v0

    return v0
.end method

.method public TouchScreenDclickSimulateSwitch(I)I
    .locals 1
    .param p1, "on"    # I

    .prologue
    .line 449
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenDclickSimulateSwitch(I)I

    move-result v0

    return v0
.end method

.method public TouchScreenGetDriverICName()I
    .locals 1

    .prologue
    .line 642
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeGetDriverICName()I

    move-result v0

    return v0
.end method

.method public TouchScreenGlovesModeSwitch(I)I
    .locals 1
    .param p1, "on"    # I

    .prologue
    .line 454
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenGlovesModeSwitch(I)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGestureGetAttn()I
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetAttn()I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGestureGetScore()I
    .locals 1

    .prologue
    .line 508
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetScore()I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGestureGetThreshold()I
    .locals 1

    .prologue
    .line 503
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetThreshold()I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGestureSetEnable(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 488
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgSetEnable(I)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGestureSetEnroll(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 483
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgSetEnroll(I)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGestureSetMode(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 493
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgSetMode(I)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGestureSetThreshold(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 465
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgSetThreshold(I)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGestureSetgestureEnable(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 479
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgSetgestureEnable(I)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGestureWriteIndex(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 470
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgWriteIndex(I)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGestureWriteSignature([B)I
    .locals 1
    .param p1, "signature"    # [B

    .prologue
    .line 474
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgWriteSignature([B)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGetCoordinates([B)I
    .locals 1
    .param p1, "coordinates"    # [B

    .prologue
    .line 543
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetCoordinates([B)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGetGesturePoints([B)I
    .locals 1
    .param p1, "points"    # [B

    .prologue
    .line 548
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetGesturePoints([B)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGetGesturePointsLength()I
    .locals 1

    .prologue
    .line 553
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetGesturePointsLength()I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGetMatchScore([B[B)I
    .locals 1
    .param p1, "signature1"    # [B
    .param p2, "signature2"    # [B

    .prologue
    .line 558
    invoke-static {p1, p2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetMatchScore([B[B)I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGetMaxNumberSigs()I
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetMaxNumberSigs()I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGetMaxSigLength()I
    .locals 1

    .prologue
    .line 528
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetMaxSigLength()I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineGetgestureEnable()I
    .locals 1

    .prologue
    .line 538
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetgestureEnable()I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineReadDetection()B
    .locals 1

    .prologue
    .line 523
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgReadDetection()B

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineReadIndex()I
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgReadIndex()I

    move-result v0

    return v0
.end method

.method public TouchScreenUserDefineReadSignature([B)I
    .locals 1
    .param p1, "signature"    # [B

    .prologue
    .line 518
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgReadSignature([B)I

    move-result v0

    return v0
.end method

.method public TouchSensorRxTx()I
    .locals 1

    .prologue
    .line 637
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeSensorRxTx()I

    move-result v0

    return v0
.end method

.method public TouchscreenAccStateSet(I)V
    .locals 3
    .param p1, "isLandscape"    # I

    .prologue
    .line 352
    const-string v0, "BBKTouchScreenService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set isLandscape  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenEdgeSuppressSwitch(I)I

    .line 355
    return-void
.end method

.method public TouchscreenLcdBacklightStateSet(Z)V
    .locals 5
    .param p1, "isScreenOn"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 358
    const-string v0, "sys.super_power_save"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSpsSwitch:Z

    .line 359
    const-string v0, "BBKTouchScreenService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Super power save property is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSpsSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mIsScreenOn:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->isLcdBacklightCalled:Z

    if-eqz v0, :cond_0

    .line 363
    monitor-exit v1

    .line 445
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->isLcdBacklightCalled:Z

    if-nez v0, :cond_1

    .line 365
    const-string v0, "BBKTouchScreenService"

    const-string v2, "first called by LcdBacklight after BBKTouchScreenService is create."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->isLcdBacklightCalled:Z

    .line 368
    :cond_1
    if-eqz p1, :cond_4

    .line 370
    const-string v0, "BBKTouchScreenService"

    const-string v2, "Set LCD backlight state ON"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenLcdStateSet(I)I

    .line 373
    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mNeedDownSensitivity:Z

    if-nez v0, :cond_3

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->RegisterProximityListener(Z)V

    .line 443
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mIsScreenOn:Z

    .line 444
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 377
    :cond_3
    :try_start_1
    const-string v0, "BBKTouchScreenService"

    const-string v2, "Need register listener for sensitivity change"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->RegisterProximityListener(Z)V

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->RegisterProximityListener(Z)V

    goto :goto_1

    .line 386
    :cond_4
    const-string v0, "BBKTouchScreenService"

    const-string v2, "Set LCD backlight state OFF"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenLcdStateSet(I)I

    .line 389
    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHallLockEnabled:Z

    if-eqz v0, :cond_5

    .line 391
    const-string v0, "BBKTouchScreenService"

    const-string v2, "Hall lock is enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->RegisterProximityListener(Z)V

    .line 395
    iput-boolean p1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mIsScreenOn:Z

    .line 396
    monitor-exit v1

    goto :goto_0

    .line 399
    :cond_5
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->GetGesturesSwitchState()I

    move-result v0

    iput v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSetting:I

    .line 400
    const-string v0, "BBKTouchScreenService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGesturesSetting is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSetting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetgestureEnable()I

    move-result v0

    iput v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mUdgesturesSetting:I

    .line 403
    const-string v0, "BBKTouchScreenService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUdgesturesSetting is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mUdgesturesSetting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgReadTemplateValid()I

    move-result v0

    iput v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mTemplateValid:I

    .line 407
    const-string v0, "BBKTouchScreenService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemplateValid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mTemplateValid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mTemplateValid:I

    if-gez v0, :cond_6

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mTemplateValid:I

    .line 423
    :cond_6
    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSetting:I

    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->SetNativeGesturesSwitchState(I)V

    .line 425
    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mNeedDownSensitivity:Z

    if-nez v0, :cond_8

    .line 426
    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSpsSwitch:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSetting:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mUdgesturesSetting:I

    if-eq v0, v4, :cond_7

    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mTemplateValid:I

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_2

    .line 427
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->RegisterProximityListener(Z)V

    goto/16 :goto_1

    .line 430
    :cond_8
    iget-boolean v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mSpsSwitch:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mGesturesSetting:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mUdgesturesSetting:I

    if-eq v0, v4, :cond_9

    iget v0, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mTemplateValid:I

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_a

    .line 433
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->RegisterProximityListener(Z)V

    .line 434
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->RegisterProximityListener(Z)V

    goto/16 :goto_1

    .line 437
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->RegisterProximityListener(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public TouchscreenUserDefineGestureClearTemplate()I
    .locals 1

    .prologue
    .line 587
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgClearTemplate()I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureGetDetectionScore()I
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetDetectionScore()I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureGetRegistrationStatus()I
    .locals 1

    .prologue
    .line 599
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetRegistrationStatus()I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureGetTemplateData([F[F[B)I
    .locals 1
    .param p1, "data"    # [F
    .param p2, "scalefac"    # [F
    .param p3, "segments"    # [B

    .prologue
    .line 627
    invoke-static {p1, p2, p3}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetTemplateData([F[F[B)I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureGetTemplateSize()I
    .locals 1

    .prologue
    .line 603
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetTemplateSize()I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureGetTraceData([I[I[B)I
    .locals 1
    .param p1, "x_trace"    # [I
    .param p2, "y_trace"    # [I
    .param p3, "segments"    # [B

    .prologue
    .line 623
    invoke-static {p1, p2, p3}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetTraceData([I[I[B)I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureGetTraceSize()I
    .locals 1

    .prologue
    .line 619
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgGetTraceSize()I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureReadDetectionIndex()I
    .locals 1

    .prologue
    .line 591
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgReadDetectionIndex()I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureReadTemplateDetection()I
    .locals 1

    .prologue
    .line 611
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgReadTemplateDetection()I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureReadTemplateMaxIndex()I
    .locals 1

    .prologue
    .line 607
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgReadTemplateMaxIndex()I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureReadTemplateValid()I
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgReadTemplateValid()I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureSetDetectionEnable(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 567
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgSetDetectionEnable(I)I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureSetEngineEnable(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 563
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgSetEngineEnable(I)I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureSetRegistrationBegin(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 575
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgSetRegistrationBegin(I)I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureSetRegistrationEnable(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 571
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgSetRegistrationEnable(I)I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureSetTemplateValid(I)I
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 583
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgSetTemplateValid(I)I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureWriteTemplateData([F[F[B)I
    .locals 1
    .param p1, "data"    # [F
    .param p2, "scalefac"    # [F
    .param p3, "segments"    # [B

    .prologue
    .line 631
    invoke-static {p1, p2, p3}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgWriteTemplateData([F[F[B)I

    move-result v0

    return v0
.end method

.method public TouchscreenUserDefineGestureWriteTemplateIndex(C)I
    .locals 1
    .param p1, "index"    # C

    .prologue
    .line 579
    invoke-static {p1}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeUdgWriteTemplateIndex(C)I

    move-result v0

    return v0
.end method
