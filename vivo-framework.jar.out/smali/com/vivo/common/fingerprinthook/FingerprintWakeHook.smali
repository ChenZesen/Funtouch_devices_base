.class public Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
.super Ljava/lang/Object;
.source "FingerprintWakeHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;,
        Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;,
        Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static DELAY_AFTER_FAILED:J = 0x0L

.field private static DELAY_AFTER_SUCCESS:J = 0x0L

.field private static DELAY_FOR_BRIGHT:I = 0x0

.field private static final DELAY_FOR_GOTOSLEEP:I = 0x32

.field public static final FINGERKEY_LIST:[Ljava/lang/String;

.field public static final FINGERPRINT_INIT:Ljava/lang/String; = "Init"

.field public static final FINGERPRINT_LOGOUT:Ljava/lang/String; = "Logout"

.field public static final FINGERPRINT_LOUGOUT_PROXIMITY:Ljava/lang/String; = "proximity"

.field public static final FINGERPRINT_LOUGOUT_WAKELOCK:Ljava/lang/String; = "wakeLock"

.field public static final FINGERPRINT_LOUGOUT_WAKEUP:Ljava/lang/String; = "wakeUp"

.field private static FINGERPRINT_TYPE:I = 0x0

.field private static final FINGERPRINT_TYPE_FPC:I = 0x1

.field private static final FINGERPRINT_TYPE_GOODIX:I = 0x2

.field private static final FINGERPRINT_TYPE_NONE:I = -0x1

.field private static FINGERPRINT_TYPE_STRING:Ljava/lang/String; = null

.field private static final FINGERPRINT_WAKEUP:Ljava/lang/String; = "FingerPrint"

.field private static final FINGER_TOUCH_UNLOCK_DISABLED:I = 0x0

.field private static final FINGER_TOUCH_UNLOCK_ENABLED:I = 0x1

.field public static final FP_AUTH_ERROR:I = 0x0

.field public static final FP_AUTH_FAILED:I = 0x1

.field public static final FP_AUTH_FAILED_AND_LIGHT_ON:I = 0x4

.field public static final FP_AUTH_HELP:I = 0x2

.field public static final FP_AUTH_IDLE:I = -0x2

.field public static final FP_AUTH_ING:I = -0x1

.field public static final FP_AUTH_ING_WITH_PHYSICAL_WAKE:I = 0xa

.field public static final FP_AUTH_SUCCESS:I = 0x3

.field public static final KEYGUARD_HIDE:I = 0x1

.field public static final KEYGUARD_SHOW:I = 0x0

.field private static final MODEL:Ljava/lang/String;

.field private static final MSG_NOTIFIER_BLOCK:I = 0x1

.field private static final MSG_NOTIFIER_TIMEOUT:I = 0x3

.field private static final MSG_REGISTER_OBSERVER:I = 0x4

.field private static final MSG_WAKE_HOOK_AUTH_RESULT:I = 0x7

.field private static final MSG_WAKE_HOOK_FAILED_AND_LIGHT_ON:I = 0x8

.field private static final MSG_WAKE_HOOK_HAPPENED:I = 0x5

.field private static final MSG_WAKE_HOOK_ING_WITH_PHYSICAL_WAKE:I = 0x9

.field private static final MSG_WAKE_HOOK_SUCCESS:I = 0x2

.field private static final MSG_WAKE_HOOK_SUCCESS_NO_WAKE:I = 0x3

.field private static final MSG_WAKE_HOOK_TIMEOUT:I = 0x1

.field private static final MSG_WAKE_HOOK_WAKEUP_FINISHED:I = 0x6

.field private static final PHYSICAL_WAKE_AFTER_SUCCESS_INTERVAL:J = 0xc8L

.field private static final PHYSICAL_WAKE_SOURCES:[Ljava/lang/String;

.field private static final PROP_BRIGHT_DELAY:Ljava/lang/String; = "persist.sys.fpbrdelay"

.field private static final PROP_FAIL_THREE_STATUS:Ljava/lang/String; = "persist.vivo.fp.bright"

.field private static final PROP_FAIL_THREE_STATUS_SYS:Ljava/lang/String; = "sys.vivo.fp.bright"

.field private static final PROP_FINGERPRINT_TYPE:Ljava/lang/String; = "persist.sys.fptype"

.field private static final PROP_KEY_KEYGUARD_FINGER:Ljava/lang/String; = "sys.fingerprint.keguard"

.field private static final PROP_VAL_FAILED_REPEATLY:I = 0x3

.field private static final SETTING_DISABLE_FINGER_UNLOCK:I = 0x0

.field private static final SETTING_ENABLE_FINGER_UNLOCK:I = 0x1

.field private static final SETTING_FINGER_PRESS_KEY_UNLOCK:Ljava/lang/String; = "finger_press_key_unlock"

.field private static final SETTING_FINGER_UNLOCK_OPEN:Ljava/lang/String; = "finger_unlock_open"

.field private static final TAG:Ljava/lang/String; = "FingerprintWakeHook"

.field private static final WAKE_SOURCE_HOME_KEY:Ljava/lang/String; = "HomeKey"

.field private static final WAKE_SOURCE_WAKE_KEY:Ljava/lang/String; = "WakeKey"

.field private static mAnimatedBacklight:I

.field private static mBlockNotifier:Z

.field private static mCollectData:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

.field private static mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

.field private static mLastSuccessResultTime:J

.field private static mLock:Ljava/lang/Object;

.field private static mNotifierHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;


# instance fields
.field private DELAY_FOR_TIMEOUT:I

.field private end:J

.field private identifying:Z

.field private mEnableUnlock:Z

.field private mFingerTouchUnlockEnabled:Z

.field private mFingerWakeUpKey:Z

.field private mFpAuthStatus:I

.field private mFpWakingUp:Z

.field private mHasFingerprinitWake:Z

.field private mObserver:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;

.field private mRegisteredObeserver:Z

.field private mSleep:Z

.field private mThread:Landroid/os/HandlerThread;

.field private mTimeGoToSleep:J

.field private mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

.field private mWakingUp:Z

.field private mWakingUpByFinger:Z

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "FingerPrint"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERKEY_LIST:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WakeKey"

    aput-object v1, v0, v3

    const-string v1, "HomeKey"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "Logout"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->PHYSICAL_WAKE_SOURCES:[Ljava/lang/String;

    .line 61
    const-string v0, "persist.sys.fptype"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERPRINT_TYPE:I

    .line 62
    const-string v0, "persist.sys.fptype"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERPRINT_TYPE_STRING:Ljava/lang/String;

    .line 64
    const-string v0, "debug.finger.wakehook"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DEBUG:Z

    .line 66
    const-string v0, "ro.product.model.bbk"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->MODEL:Ljava/lang/String;

    .line 106
    const/16 v0, 0x64

    sput v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_FOR_BRIGHT:I

    .line 107
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->getAuthSuccessDelay()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_SUCCESS:J

    .line 108
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->getAuthFailedDelay()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_FAILED:J

    .line 114
    sput-object v5, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .line 115
    const/16 v0, 0xff

    sput v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mAnimatedBacklight:I

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;

    .line 126
    sput-object v5, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mContext:Landroid/content/Context;

    .line 131
    sput-boolean v3, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mBlockNotifier:Z

    .line 137
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLastSuccessResultTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/16 v0, 0x320

    iput v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_FOR_TIMEOUT:I

    .line 117
    const/4 v0, -0x2

    iput v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    .line 118
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpWakingUp:Z

    .line 119
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mSleep:Z

    .line 121
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHasFingerprinitWake:Z

    .line 125
    iput-object v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    .line 127
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mRegisteredObeserver:Z

    .line 128
    iput-object v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mObserver:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;

    .line 129
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mEnableUnlock:Z

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerTouchUnlockEnabled:Z

    .line 132
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z

    .line 133
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUpByFinger:Z

    .line 134
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerWakeUpKey:Z

    .line 140
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z

    .line 141
    iput-wide v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->start:J

    .line 142
    iput-wide v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->end:J

    .line 145
    iput-wide v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mTimeGoToSleep:J

    .line 155
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FingerprintWakeHook"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mThread:Landroid/os/HandlerThread;

    .line 156
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 157
    new-instance v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;-><init>(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Landroid/os/Looper;)V

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    .line 159
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->getDisplayDelay()V

    .line 160
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 5
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/16 v0, 0x320

    iput v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_FOR_TIMEOUT:I

    .line 117
    const/4 v0, -0x2

    iput v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    .line 118
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpWakingUp:Z

    .line 119
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mSleep:Z

    .line 121
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHasFingerprinitWake:Z

    .line 125
    iput-object v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    .line 127
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mRegisteredObeserver:Z

    .line 128
    iput-object v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mObserver:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;

    .line 129
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mEnableUnlock:Z

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerTouchUnlockEnabled:Z

    .line 132
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z

    .line 133
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUpByFinger:Z

    .line 134
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerWakeUpKey:Z

    .line 140
    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z

    .line 141
    iput-wide v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->start:J

    .line 142
    iput-wide v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->end:J

    .line 145
    iput-wide v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mTimeGoToSleep:J

    .line 149
    new-instance v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-direct {v0, p0, p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;-><init>(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Landroid/os/Looper;)V

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    .line 151
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->getDisplayDelay()V

    .line 152
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$1002(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUpByFinger:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->hideKeyguard()V

    return-void
.end method

.method static synthetic access$1300()Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .param p1, "x1"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->end:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setCollectData()V

    return-void
.end method

.method static synthetic access$1600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isPolicyOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isLcmOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->registerOberserver()V

    return-void
.end method

.method static synthetic access$1900(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->handleFingerPrintResult(I)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mBlockNotifier:Z

    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setHasFingerprintWake(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setFpAuthStatus(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->showKeyguard()V

    return-void
.end method

.method static synthetic access$802(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .param p1, "x1"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mTimeGoToSleep:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z

    return v0
.end method

.method static synthetic access$902(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z

    return p1
.end method

.method private static authStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 421
    packed-switch p0, :pswitch_data_0

    .line 439
    :pswitch_0
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 423
    :pswitch_1
    const-string v0, "FP_AUTH_ERROR"

    goto :goto_0

    .line 425
    :pswitch_2
    const-string v0, "FP_AUTH_FAILED"

    goto :goto_0

    .line 427
    :pswitch_3
    const-string v0, "FP_AUTH_HELP"

    goto :goto_0

    .line 429
    :pswitch_4
    const-string v0, "FP_AUTH_SUCCESS"

    goto :goto_0

    .line 431
    :pswitch_5
    const-string v0, "FP_AUTH_ING"

    goto :goto_0

    .line 433
    :pswitch_6
    const-string v0, "FP_AUTH_IDLE"

    goto :goto_0

    .line 435
    :pswitch_7
    const-string v0, "FP_AUTH_FAILED_AND_LIGHT_ON"

    goto :goto_0

    .line 437
    :pswitch_8
    const-string v0, "FP_AUTH_ING_WITH_PHYSICAL_WAKE"

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static createNotifierHandler()V
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mNotifierHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;

    invoke-direct {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;-><init>()V

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mNotifierHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;

    .line 712
    :cond_0
    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDisplayDelay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    const-string v0, "PD1515A"

    sget-object v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sput v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_FOR_BRIGHT:I

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    sput v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_FOR_BRIGHT:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .locals 2

    .prologue
    .line 180
    sget-object v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    invoke-direct {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;-><init>()V

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .line 183
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    monitor-exit v1

    .line 185
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    monitor-exit v1

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    sget-object v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    invoke-direct {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;-><init>()V

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .line 212
    invoke-static {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setContext(Landroid/content/Context;)V

    .line 213
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    monitor-exit v1

    .line 218
    :goto_0
    return-object v0

    .line 215
    :cond_0
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 216
    invoke-static {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setContext(Landroid/content/Context;)V

    .line 218
    :cond_1
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    monitor-exit v1

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 192
    const-string v0, "FingerprintWakeHook getInstance"

    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .line 196
    invoke-static {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setContext(Landroid/content/Context;)V

    .line 197
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    monitor-exit v1

    .line 202
    :goto_0
    return-object v0

    .line 199
    :cond_0
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 200
    invoke-static {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setContext(Landroid/content/Context;)V

    .line 202
    :cond_1
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    monitor-exit v1

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleFingerPrintResult(I)V
    .locals 10
    .param p1, "result"    # I

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x3

    const-wide/16 v4, 0x0

    .line 322
    iget-boolean v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHasFingerprinitWake:Z

    if-eqz v0, :cond_7

    .line 323
    const-string v0, "FingerprintWakeHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFingerprintResult result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-ne v6, p1, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeAllMessages()V

    .line 326
    const-string v0, "FingerprintWakeHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFingerprintResultDelayed result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-wide v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_SUCCESS:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 328
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    sget-wide v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_SUCCESS:J

    invoke-virtual {v0, v9, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 385
    :goto_0
    return-void

    .line 330
    :cond_0
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v0, v9}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_4

    .line 333
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeAllMessages()V

    .line 334
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->isUseWindowHideFunction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->showKeyguard()V

    .line 337
    :cond_2
    const-string v0, "FingerprintWakeHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFingerprintResultDelayed result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-wide v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_FAILED:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 339
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    sget-wide v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_FAILED:J

    invoke-virtual {v0, v7, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 341
    :cond_3
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v0, v7}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 344
    :cond_4
    const/16 v0, 0xa

    if-ne v0, p1, :cond_6

    .line 345
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeAllMessages()V

    .line 346
    const-string v0, "FingerprintWakeHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFingerprintResultDelayed result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-wide v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_FAILED:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    .line 348
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    sget-wide v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_FAILED:J

    invoke-virtual {v0, v8, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 350
    :cond_5
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v0, v8}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 353
    :cond_6
    invoke-direct {p0, p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setFpAuthStatus(I)V

    goto :goto_0

    .line 355
    :cond_7
    if-ne v6, p1, :cond_9

    .line 356
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeAllMessages()V

    .line 357
    const-string v0, "FingerprintWakeHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFingerprintResult result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no WAKEUP but success!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-wide v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_SUCCESS:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    .line 359
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    sget-wide v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_SUCCESS:J

    invoke-virtual {v0, v6, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 361
    :cond_8
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v0, v6}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 363
    :cond_9
    const/4 v0, 0x4

    if-ne v0, p1, :cond_c

    .line 364
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeAllMessages()V

    .line 365
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->isUseWindowHideFunction()Z

    move-result v0

    if-nez v0, :cond_a

    .line 366
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->showKeyguard()V

    .line 368
    :cond_a
    const-string v0, "FingerprintWakeHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFingerprintResult result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no WAKEUP but light on!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-wide v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_FAILED:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_b

    .line 370
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    sget-wide v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_FAILED:J

    invoke-virtual {v0, v7, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 372
    :cond_b
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v0, v7}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 374
    :cond_c
    const/16 v0, 0xa

    if-ne v0, p1, :cond_e

    .line 375
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeAllMessages()V

    .line 376
    const-string v0, "FingerprintWakeHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFingerprintResultDelayed result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-wide v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_FAILED:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_d

    .line 378
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    sget-wide v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_AFTER_FAILED:J

    invoke-virtual {v0, v8, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 380
    :cond_d
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v0, v8}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 383
    :cond_e
    const-string v0, "FingerprintWakeHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFingerprintResult result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no WAKEUP, ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleSettingsChangedLocked()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 256
    sget-object v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "finger_unlock_open"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "conf":I
    if-ne v3, v0, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mEnableUnlock:Z

    .line 259
    const-string v2, "persist.sys.fptype"

    const/4 v5, -0x1

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERPRINT_TYPE:I

    .line 260
    const-string v2, "persist.sys.fptype"

    const-string v5, "default"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERPRINT_TYPE_STRING:Ljava/lang/String;

    .line 261
    const-string v2, "FingerprintWakeHook"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSettingsChangedLocked mEnableUnlock="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mEnableUnlock:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERPRINT_TYPE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERPRINT_TYPE_STRING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "finger_press_key_unlock"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 264
    .local v1, "press":I
    if-ne v1, v3, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerTouchUnlockEnabled:Z

    .line 265
    const-string v2, "FingerprintWakeHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSettingsChangedLocked mEnableUnlock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mEnableUnlock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERPRINT_TYPE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERPRINT_TYPE_STRING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " press="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerTouchUnlockEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-boolean v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerTouchUnlockEnabled:Z

    if-eqz v2, :cond_2

    .line 267
    const/16 v2, 0x320

    iput v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_FOR_TIMEOUT:I

    .line 271
    :goto_2
    return-void

    .end local v1    # "press":I
    :cond_0
    move v2, v4

    .line 257
    goto/16 :goto_0

    .restart local v1    # "press":I
    :cond_1
    move v3, v4

    .line 264
    goto :goto_1

    .line 269
    :cond_2
    const/16 v2, 0x12c0

    iput v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_FOR_TIMEOUT:I

    goto :goto_2
.end method

.method private static hasFingerprint()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 286
    const-string v2, "persist.vivo.fp_wakehook"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 287
    .local v0, "conf":Z
    sget v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERPRINT_TYPE:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERPRINT_TYPE_STRING:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 290
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideKeyguard()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isFpAuthFailedRepeatedly()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mAnimatedBacklight:I

    if-nez v0, :cond_0

    .line 696
    const-string v0, "FingerprintWakeHook"

    const-string v1, "hideKeyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->hideKeyguardByFingerprint(I)V

    .line 699
    :cond_0
    return-void
.end method

.method public static isFingerKey(Ljava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 728
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 736
    :cond_0
    :goto_0
    return v4

    .line 731
    :cond_1
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->FINGERKEY_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 732
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 733
    const/4 v4, 0x1

    goto :goto_0

    .line 731
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isFpAuthFailedRepeatedly()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 882
    const-string v6, "sys.fingerprint.keguard"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 883
    .local v3, "val":I
    const/4 v6, 0x3

    if-ne v6, v3, :cond_2

    move v2, v4

    .line 885
    .local v2, "ret":Z
    :goto_0
    const-string v6, "persist.vivo.fp.bright"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 887
    .local v0, "failedWhenScreenOff3Times":Z
    const-string v6, "sys.vivo.fp.bright"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 890
    .local v1, "failedWhenScreenOff3TimesSys":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFpAuthFailedRepeatedly:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " off3:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    .line 891
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    return v5

    .end local v0    # "failedWhenScreenOff3Times":Z
    .end local v1    # "failedWhenScreenOff3TimesSys":Z
    .end local v2    # "ret":Z
    :cond_2
    move v2, v5

    .line 883
    goto :goto_0
.end method

.method private isLcmOff()Z
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    invoke-interface {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->getCurrentDisplayPolicy()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    invoke-interface {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->getAnimatedBrightness()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedWakeHook()Z
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mEnableUnlock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhysicalWakeJustAfterSuccess()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 389
    sget-wide v6, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLastSuccessResultTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v4

    .line 392
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 393
    .local v2, "now":J
    sget-wide v6, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLastSuccessResultTime:J

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 394
    sget-wide v6, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLastSuccessResultTime:J

    sub-long v0, v2, v6

    .line 395
    .local v0, "interval":J
    const-wide/16 v6, 0xc8

    cmp-long v5, v0, v6

    if-gez v5, :cond_2

    const/4 v4, 0x1

    .line 396
    .local v4, "ret":Z
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPhysicalWakeJustAfterSuccess: now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interval="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isPhysiscalWakeSource(Ljava/lang/String;)Z
    .locals 5
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 740
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->PHYSICAL_WAKE_SOURCES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 741
    .local v3, "source":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 742
    const/4 v4, 0x1

    .line 745
    .end local v3    # "source":Ljava/lang/String;
    :goto_1
    return v4

    .line 740
    .restart local v3    # "source":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    .end local v3    # "source":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isPolicyOff()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    invoke-interface {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->getCurrentDisplayPolicy()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 275
    sget-boolean v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "FingerprintWakeHook"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    return-void
.end method

.method private registerOberserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 243
    iget-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mRegisteredObeserver:Z

    if-nez v1, :cond_0

    .line 244
    sget-object v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 245
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;

    sget-object v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-direct {v1, p0, v2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;-><init>(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mObserver:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;

    .line 246
    const-string v1, "finger_unlock_open"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mObserver:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 248
    const-string v1, "finger_press_key_unlock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mObserver:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mRegisteredObeserver:Z

    .line 252
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 653
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->removeMessages(I)V

    .line 656
    return-void
.end method

.method private removeTimeoutMessage()V
    .locals 2

    .prologue
    .line 648
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->removeMessages(I)V

    .line 649
    return-void
.end method

.method private sendNotifierBlock()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 658
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mNotifierHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mBlockNotifier:Z

    .line 661
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mNotifierHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;

    invoke-virtual {v0, v4}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;->removeMessages(I)V

    .line 664
    const-string v0, "sendNotifierBlock send MSG_NOTIFIER_BLOCK"

    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    .line 665
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mNotifierHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;

    iget v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_FOR_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    const-string v0, "FingerprintWakeHook"

    const-string v1, "sendNotifierBlock mNotifierHandler is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendNotifierPass()V
    .locals 2

    .prologue
    .line 678
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mBlockNotifier:Z

    .line 679
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mNotifierHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;

    if-eqz v0, :cond_0

    .line 682
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mNotifierHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;->removeMessages(I)V

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    const-string v0, "FingerprintWakeHook"

    const-string v1, "sendNotifierPass mNotifierHandler is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setAnimatedBacklight(I)V
    .locals 5
    .param p0, "backlight"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 715
    if-eqz p0, :cond_1

    move v0, v2

    .line 716
    .local v0, "currentOn":Z
    :goto_0
    sget v4, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mAnimatedBacklight:I

    if-eqz v4, :cond_2

    move v1, v2

    .line 717
    .local v1, "prevOn":Z
    :goto_1
    sput p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mAnimatedBacklight:I

    .line 718
    if-eq v0, v1, :cond_0

    .line 719
    const-string v2, "FingerprintWakeHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAnimatedBacklight backlight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mAnimatedBacklight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    return-void

    .end local v0    # "currentOn":Z
    .end local v1    # "prevOn":Z
    :cond_1
    move v0, v3

    .line 715
    goto :goto_0

    .restart local v0    # "currentOn":Z
    :cond_2
    move v1, v3

    .line 716
    goto :goto_1
.end method

.method private setCollectData()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 868
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 869
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mCollectData:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    if-nez v3, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    iget-wide v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->start:J

    iget-wide v6, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->end:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    iget-wide v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->start:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    .line 874
    iget-wide v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->end:J

    iget-wide v6, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->start:J

    sub-long v0, v4, v6

    .line 875
    .local v0, "ms":J
    iput-wide v8, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->start:J

    .line 876
    const-string v3, "speed"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v3, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mCollectData:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    sget-object v4, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mCollectData:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    const-string v4, "1073"

    sget-object v5, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mCollectData:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    const-string v5, "10731"

    invoke-virtual {v3, v4, v5, v2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    sput-object p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mContext:Landroid/content/Context;

    .line 175
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessage(I)Z

    .line 176
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->getInstance(Landroid/content/Context;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mCollectData:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    .line 177
    return-void
.end method

.method private setFpAuthStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x1

    .line 444
    packed-switch p1, :pswitch_data_0

    .line 456
    :goto_0
    iget v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    if-nez v0, :cond_3

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeAllMessages()V

    .line 459
    iget-boolean v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z

    if-nez v0, :cond_2

    .line 460
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v0, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessage(I)Z

    .line 474
    :cond_1
    :goto_1
    return-void

    .line 452
    :pswitch_0
    iput p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    .line 453
    const-string v0, "FingerprintWakeHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFpAuthStatus mFpAuthStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    invoke-static {v2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFpAuthStatus mWakingUp, ignore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 464
    :cond_3
    iget v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 465
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeAllMessages()V

    .line 467
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    const/4 v1, 0x2

    sget v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_FOR_BRIGHT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 468
    :cond_4
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeAllMessages()V

    .line 470
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->showKeyguard()V

    .line 472
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 444
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setHasFingerprintWake(Z)V
    .locals 4
    .param p1, "has"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpWakingUp:Z

    .line 295
    iput-boolean p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHasFingerprinitWake:Z

    .line 296
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeTimeoutMessage()V

    .line 297
    if-eqz p1, :cond_0

    .line 298
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->DELAY_FOR_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    :cond_0
    const-string v0, "FingerprintWakeHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasFingerprintWake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method private showKeyguard()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    if-eqz v0, :cond_0

    .line 703
    const-string v0, "FingerprintWakeHook"

    const-string v1, "showKeyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->hideKeyguardByFingerprint(I)V

    .line 706
    :cond_0
    return-void
.end method


# virtual methods
.method public blockBrightnessOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 304
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isNeedWakeHook()Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHasFingerprinitWake:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public blockNotifier()Z
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isNeedWakeHook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mBlockNotifier:Z

    goto :goto_0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 724
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public isFingerWakeUpKey()Z
    .locals 6

    .prologue
    .line 900
    const/4 v1, 0x0

    .line 901
    .local v1, "fingerSleep":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 902
    .local v2, "now":J
    iget-wide v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mTimeGoToSleep:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 904
    .local v0, "elapsed":I
    if-lez v0, :cond_0

    const/16 v4, 0x3e8

    if-ge v0, v4, :cond_0

    .line 905
    const-string v4, "Screen on quickly after finger sleep"

    invoke-static {v4}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    .line 906
    const/4 v1, 0x1

    .line 910
    :cond_0
    iget-boolean v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerWakeUpKey:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUpByFinger:Z

    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isWakeUpByFinger()Z
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUpByFinger:Z

    return v0
.end method

.method public logoutWakeHookLocked()V
    .locals 1

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->sendNotifierPass()V

    .line 673
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setHasFingerprintWake(Z)V

    .line 674
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setFpAuthStatus(I)V

    .line 675
    return-void
.end method

.method public onWakeUpByWho(JLjava/lang/String;IJ)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "who"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "ident"    # J

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 749
    const-string v2, "FingerprintWakeHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWakeUpByWho: eventTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " who:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ident:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->createNotifierHandler()V

    .line 752
    const-string v2, "Init"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isNeedWakeHook()Z

    move-result v2

    if-nez v2, :cond_2

    .line 757
    const-string v2, "FingerprintWakeHook"

    const-string v3, "Need to do nothing."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    :cond_2
    const-string v2, "FingerPrint"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 762
    sget-object v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v2, v7}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->removeMessages(I)V

    .line 763
    sput-boolean v5, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mBlockNotifier:Z

    .line 764
    sget-object v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mNotifierHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;->removeMessages(I)V

    .line 766
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isPhysicalWakeJustAfterSuccess()Z

    move-result v0

    .line 767
    .local v0, "justSuccess":Z
    const/4 v1, 0x0

    .line 768
    .local v1, "shouldWaitShowKeyguard":Z
    iget-boolean v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 770
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->isUseWindowHideFunction()Z

    move-result v2

    if-nez v2, :cond_3

    .line 771
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->showKeyguard()V

    .line 773
    :cond_3
    const/4 v2, -0x1

    iget v3, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->isUseWindowHideFunction()Z

    move-result v2

    if-nez v2, :cond_6

    .line 774
    const/4 v1, 0x1

    .line 780
    :cond_4
    :goto_1
    if-eqz v1, :cond_7

    .line 781
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->sendFingerprintResult(I)V

    .line 789
    :goto_2
    iget-object v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    if-eqz v2, :cond_5

    .line 790
    iget-object v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    invoke-interface {v2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;->setFingerFlagDirty()V

    .line 800
    :cond_5
    invoke-virtual {p0, v5}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setSleep(Z)V

    .line 801
    iput-boolean v5, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z

    .line 802
    invoke-direct {p0, p3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isPhysiscalWakeSource(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    iput-boolean v6, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z

    goto :goto_0

    .line 776
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWakeUpByWho: showKeyguard mFpAuthStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    invoke-static {v3}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 783
    :cond_7
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->removeAllMessages()V

    .line 784
    iput-boolean v5, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHasFingerprinitWake:Z

    .line 785
    invoke-direct {p0, v5}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->setHasFingerprintWake(Z)V

    .line 786
    const/4 v2, -0x2

    iput v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFpAuthStatus:I

    goto :goto_2

    .line 807
    .end local v0    # "justSuccess":Z
    .end local v1    # "shouldWaitShowKeyguard":Z
    :cond_8
    iput-boolean v6, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerWakeUpKey:Z

    .line 822
    iget-boolean v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakingUp:Z

    if-eqz v2, :cond_9

    .line 823
    const-string v2, "onWakeUpByWho mWakingUp return"

    invoke-static {v2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 827
    :cond_9
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isLcmOff()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 828
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->isUseWindowHideFunction()Z

    move-result v2

    if-nez v2, :cond_a

    .line 829
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->hideKeyguard()V

    .line 831
    :cond_a
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->sendNotifierBlock()V

    .line 832
    sget-object v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v2, v7}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessage(I)Z

    .line 833
    iget-boolean v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z

    if-nez v2, :cond_0

    .line 834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->start:J

    .line 835
    iput-boolean v6, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->identifying:Z

    goto/16 :goto_0

    .line 838
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->start:J

    .line 839
    const-string v2, "onWakeUpByWho screen is light on, return."

    invoke-static {v2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onWakeUpFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 853
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isNeedWakeHook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_0
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v0, v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->removeMessages(I)V

    .line 857
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v0, v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public sendFingerprintResult(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isNeedWakeHook()Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Need Wake Hook, sendFingerprintResult result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->authStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " press="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerTouchUnlockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-boolean v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerTouchUnlockEnabled:Z

    if-nez v1, :cond_1

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFingerprintResult touch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerTouchUnlockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_1
    const/4 v1, 0x3

    if-ne v1, p1, :cond_2

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLastSuccessResultTime:J

    .line 415
    :cond_2
    sget-object v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 417
    sget-object v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mHandler:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;

    invoke-virtual {v1, v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$WakeHookHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setFingerWakeUpKeyDefault()V
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mFingerWakeUpKey:Z

    .line 915
    return-void
.end method

.method public setSleep(Z)V
    .locals 1
    .param p1, "sleep"    # Z

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->isNeedWakeHook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    :goto_0
    return-void

    .line 864
    :cond_0
    iput-boolean p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mSleep:Z

    goto :goto_0
.end method

.method public setupCallback(Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mWakeHookCallback:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCallback;

    .line 282
    return-void
.end method
