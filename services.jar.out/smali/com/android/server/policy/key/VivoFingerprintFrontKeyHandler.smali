.class public Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
.super Lcom/android/server/policy/AVivoInterceptKeyCallback;
.source "VivoFingerprintFrontKeyHandler.java"

# interfaces
.implements Lcom/android/server/policy/key/PhoneWindowNotifyFinger$FingerNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;,
        Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;,
        Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$fpCallBack;
    }
.end annotation


# static fields
.field private static final ACTION_VISITMODE_SWITCH:Ljava/lang/String; = "android.settings.VisitMode.action.TURN_ON"

.field private static final CAPTURE_IMAGE:I = 0x64

.field private static final CAPTURE_IMAGE_SENSOR:I = 0x6e

.field private static final CLEAR_AUTH_PARAM:I = 0x64

.field private static final EVENT_SCREEN_OFF:I = 0xc

.field private static final EVENT_SCREEN_ON:I = 0xd

.field private static final FAIL_TEMP_SCREEN_ON:I = 0x3

.field private static final FINGERPRINT_DOWN:I = 0x5

.field private static final FINGERPRINT_UP:I = 0x6

.field private static final FINGER_PRESS_UNLOCK:Ljava/lang/String; = "1"

.field private static final FINGER_PRESS_UNLOCK_KEY:Ljava/lang/String; = "finger_press_key_unlock"

.field private static final FINGER_SIMPINPUK:Ljava/lang/String; = "finger_simpinpuk"

.field private static final FINGER_TOUCH_SWITCH:Ljava/lang/String; = "finger_touch_switch"

.field private static final FINGER_TOUCH_UNLOCK:Ljava/lang/String; = "0"

.field private static final FINGER_UNLOCK:Ljava/lang/String; = "finger_unlock"

.field private static final FINGER_UNLOCK_OPEN:Ljava/lang/String; = "finger_unlock_open"

.field private static final FP_UNLOCK_SWITCH_OFF:I = 0xf

.field private static final FP_UNLOCK_SWITCH_ON:I = 0xe

.field private static final HOME_TOUCH_SWITCH_OFF:I = 0x11

.field private static final HOME_TOUCH_SWITCH_ON:I = 0x10

.field private static final INFRARED_FAR_AWAY:I = 0x6

.field private static final INFRARED_NEAR:I = 0x9

.field private static final IS_SUPPOT_FINGER_KEY:Ljava/lang/String; = "persist.vivo.support.fingerkey"

.field private static final KEYGUARD_HIDE_PKGNAME:[Ljava/lang/String;

.field private static final KEY_MODE:I = 0x3

.field private static final LOCK_CAPTURE_IMAGE:I = 0x8

.field private static final MSG_FINGER_AUTHENTICATE:I = 0x3e8

.field private static final MSG_FINGER_CANCEL:I = 0x3e9

.field private static final MSG_FINGER_FAIL:I = 0x3ee

.field private static final MSG_FINGER_INFRARED_FAR_AWAY:I = 0x3eb

.field private static final MSG_FINGER_INFRARED_NEAR:I = 0x3ea

.field private static final MSG_FINGER_INFRARED_OPERATION:I = 0x3f7

.field private static final MSG_FINGER_KEYGURD_EXIT:I = 0x3f3

.field private static final MSG_FINGER_KEYGURD_HIDE:I = 0x3f2

.field private static final MSG_FINGER_KEYGURD_SHOW:I = 0x3f1

.field private static final MSG_FINGER_NOTIFY_SWITCH_STATE:I = 0x3f5

.field private static final MSG_FINGER_SCREEN_OFF:I = 0x3f0

.field private static final MSG_FINGER_SCREEN_ON:I = 0x3ef

.field private static final MSG_FINGER_SEND_CMD:I = 0x3ec

.field private static final MSG_FINGER_SIMPINPUK_DATA:I = 0x3f4

.field private static final MSG_FINGER_SUCCESS:I = 0x3ed

.field private static final MSG_FINGER_SYSTEM_REBOOT:I = 0x3f6

.field private static final POWER_FAIL:I = 0x1

.field private static final POWER_SUCCESS:I = 0x3

.field private static final PROP_KEGUAR_FINGER:Ljava/lang/String; = "sys.fingerprint.keguard"

.field private static final SCREEN_ON_PKGNAME:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "frontfingerprintkey"

.field private static final TYPE_FP_UNLOCK_SWITCH:I = 0x1

.field private static final TYPE_HOME_TOUCH_SWITCH:I = 0x2

.field private static final TYPE_PRESS_UNLOCK_SWITCH:I = 0x3

.field private static final VIVO_SWITCH_STATE_OFF:I = 0x0

.field private static final VIVO_SWITCH_STATE_ON:I = 0x1

.field private static final WAIT_FINGER_DOWN:I = 0x4


# instance fields
.field private brightScreenFailCount:I

.field private failCount:I

.field private isCameraPreview:Z

.field private isConfigurationState:I

.field private isFingerprintSuccess:Z

.field private isKeyguardHide:Z

.field private isOpenCamera:Z

.field private isReaderConfiguration:Z

.field private isRegisterSensor:Z

.field private isScreenOn:Z

.field private isSupportFingerKey:Z

.field private isUserReboot:Z

.field private isVerify:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFingerHandler:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

.field private mFingerStatusRecorder:Lcom/android/server/policy/VivoFingerStatusRecorder;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasFingerSensorTouched:Z

.field private mHomePressedScreenOff:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPressUnlockSwitchState:I

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mScreenOffFailCount:I

.field private mScreenOffFailVerify:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mThread:Landroid/os/HandlerThread;

.field private mTouchSwitchState:I

.field private mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

.field private mWindowManager:Landroid/view/WindowManager;

.field private product_info:Ljava/lang/String;

.field private screenStatusReceiver:Landroid/content/BroadcastReceiver;

.field private sensorEventpositive:Z

.field private tempScreenFail:I

.field private tempScreenFailConut:I

.field private unlock_mode:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.camera"

    aput-object v1, v0, v3

    const-string v1, "com.android.BBKClock"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "com.android.incallui"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->KEYGUARD_HIDE_PKGNAME:[Ljava/lang/String;

    .line 87
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.incallui"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->SCREEN_ON_PKGNAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mVivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcom/android/server/policy/AVivoInterceptKeyCallback;-><init>()V

    .line 133
    iput v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->brightScreenFailCount:I

    .line 134
    iput v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    .line 135
    iput v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailCount:I

    .line 136
    iput v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isConfigurationState:I

    .line 138
    iput v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFail:I

    .line 139
    iput v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFailConut:I

    .line 140
    iput v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mTouchSwitchState:I

    .line 141
    iput v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mPressUnlockSwitchState:I

    .line 142
    const-string v0, "enable"

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    .line 145
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    .line 147
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenCamera:Z

    .line 149
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isReaderConfiguration:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isCameraPreview:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z

    .line 152
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHasFingerSensorTouched:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isSupportFingerKey:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintSuccess:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isUserReboot:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isRegisterSensor:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardHide:Z

    .line 168
    iput-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 169
    iput-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerStatusRecorder:Lcom/android/server/policy/VivoFingerStatusRecorder;

    .line 174
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->unlock_mode:Ljava/lang/String;

    .line 340
    new-instance v0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;-><init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContentObserver:Landroid/database/ContentObserver;

    .line 356
    new-instance v0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$2;-><init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 389
    new-instance v0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$3;-><init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->screenStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    iput-object p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 179
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->initHandler()V

    .line 182
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->registerReceiver()V

    .line 183
    invoke-static {p1}, Landroid/hardware/fingerprint/FingerprintCollectData;->getInstance(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintCollectData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

    .line 184
    const-string v0, "persist.vivo.support.fingerkey"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isSupportFingerKey:Z

    .line 185
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 186
    invoke-static {}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->getInstance()Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->setFingerNotifyListener(Lcom/android/server/policy/key/PhoneWindowNotifyFinger$FingerNotify;)V

    .line 187
    const-string v0, "ro.product.model.bbk"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->product_info:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_simpinpuk"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_unlock_open"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_touch_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_press_key_unlock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 193
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifySwitchState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;ILandroid/os/Message;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Message;
    .param p3, "x3"    # J

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHasFingerSensorTouched:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;IIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifyFingerEvents(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerToStringLog(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerInfraredNear()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerInfraredfar()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->removeFingerMessage(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerFingerSuccess()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerFingerFail()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerFingerScreenOn()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerFingerScreenOff()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerKeyGuardShow()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerExitKeyGuard()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerOtherApp()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerKeyGuardHide()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSystemReboot()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerHandler:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # F

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerInfrared(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenCamera:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifyPhoneWindowFail()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->lockMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)Lcom/android/internal/widget/ILockSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    return-object v0
.end method

.method private checkFingerUnLockSwitch()V
    .locals 3

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenUnlockSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->readFingerSwitchStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_unlock_open"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    :cond_0
    return-void
.end method

.method private detectRebootReason()V
    .locals 3

    .prologue
    .line 202
    invoke-static {}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->getInstance()Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->detectRebootReason()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isUserReboot:Z

    .line 203
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isUserReboot:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "sys.fingerprint.keguard"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectRebootReason isUserReboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isUserReboot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method private fingerprintFail(Z)V
    .locals 6
    .param p1, "isFingerScreenOn"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 515
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerprintFail isFingerScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenOffFailCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHomePressedScreenOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct {p0, v4}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerprintResult(I)V

    .line 520
    invoke-direct {p0, v5, v5, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifyFingerEvents(IIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isUserReboot:Z

    if-eqz v0, :cond_2

    .line 524
    invoke-direct {p0, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->rebootTip(Z)V

    goto :goto_0

    .line 527
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getLockDeadline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const-string v1, "lock-deadLine"

    invoke-interface {v0, v3, v1, v3}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->resultKeyguardByFingerprint(ZLjava/lang/String;I)V

    goto :goto_0

    .line 529
    :cond_3
    if-eqz p1, :cond_4

    .line 530
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    .line 531
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFailConut:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFailConut:I

    .line 532
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->screenOnTip()V

    .line 533
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z

    .line 534
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    goto :goto_0

    .line 536
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z

    .line 537
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isSupportFingerKey:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mPressUnlockSwitchState:I

    if-ne v4, v0, :cond_5

    .line 538
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    .line 539
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFailConut:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFailConut:I

    goto :goto_0

    .line 541
    :cond_5
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mPressUnlockSwitchState:I

    if-ne v4, v0, :cond_0

    .line 542
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailCount:I

    .line 543
    const/16 v0, 0x32

    iget v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailCount:I

    if-ne v0, v1, :cond_0

    .line 544
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    .line 545
    const-string v0, "sys.fingerprint.keguard"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fingerprintsuccess()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 592
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationSucceeded SimPinObserver is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sensorEventpositive is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isScreenOn is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationSucceeded isConfigurationState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isConfigurationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v0, "enable"

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    .line 596
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isReaderConfiguration:Z

    .line 597
    invoke-direct {p0, v5}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerprintResult(I)V

    .line 599
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isRejectUnlock()Z

    move-result v1

    invoke-direct {p0, v0, v3, v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifyFingerEvents(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iput-boolean v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    .line 601
    invoke-direct {p0, v6}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V

    .line 644
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isUserReboot:Z

    if-eqz v0, :cond_1

    .line 605
    invoke-direct {p0, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->rebootTip(Z)V

    goto :goto_0

    .line 608
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isRejectUnlock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    invoke-direct {p0, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->fingerprintFail(Z)V

    .line 610
    iput-boolean v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    .line 611
    invoke-direct {p0, v6}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V

    goto :goto_0

    .line 613
    :cond_2
    iput v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    .line 614
    iput v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailCount:I

    .line 615
    iput-boolean v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z

    .line 616
    iput-boolean v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    .line 617
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardHide:Z

    .line 618
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isConfigurationState:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isConfigurationState:I

    if-ne v0, v5, :cond_5

    .line 619
    :cond_3
    const-string v0, "sys.fingerprint.keguard"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :goto_1
    iput v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isConfigurationState:I

    .line 624
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    if-eqz v0, :cond_4

    .line 625
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintSuccess:Z

    .line 626
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->unregisterSensor()V

    .line 627
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-interface {v0, v3, v3}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->keyguardDone(ZZ)V

    .line 628
    invoke-direct {p0, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerprintAuthorizedBroadcast(Z)V

    .line 629
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$4;-><init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 642
    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V

    goto :goto_0

    .line 621
    :cond_5
    const-string v0, "sys.fingerprint.keguard"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 836
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v1, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;-><init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;)V

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setFingerprintStateCallback(Landroid/hardware/fingerprint/FingerprintManager$FingerprintStateCallback;)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLockDeadline()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 723
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 724
    .local v2, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 726
    .local v0, "deadline":J
    const-string v4, "frontfingerprintkey"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLockDeadline..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 728
    const/4 v3, 0x1

    .line 730
    :cond_0
    return v3
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    .line 213
    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 214
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 216
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private getVibrator(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 703
    .local v0, "vib":Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 704
    return-void
.end method

.method private handlerAuthenticate(I)V
    .locals 7
    .param p1, "flag"    # I

    .prologue
    .line 990
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerAuthenticate flag is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-class v6, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    monitor-enter v6

    .line 992
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintAuthAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 993
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->unlock_mode:Ljava/lang/String;

    .line 994
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 997
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenCamera:Z

    .line 998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    .line 999
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_3

    .line 1000
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    .line 1004
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v4, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$fpCallBack;

    const/4 v3, 0x0

    invoke-direct {v4, p0, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$fpCallBack;-><init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;)V

    const/4 v5, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 1005
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isAllowRequstAuth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    const-string v0, "frontfingerprintkey"

    const-string v1, "is screen on and it not in keygurd view not allow request Finger auth,cancel finerprint auth"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V

    .line 1009
    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifyFingerEvents(IIZ)Z

    .line 1015
    :cond_2
    :goto_1
    monitor-exit v6

    .line 1016
    return-void

    .line 1002
    :cond_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    goto :goto_0

    .line 1015
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1011
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    if-nez v0, :cond_2

    .line 1012
    const-string v0, "frontfingerprintkey"

    const-string v1, "start fingerprint verify fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private handlerCancelAuthenticate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1018
    const-string v0, "frontfingerprintkey"

    const-string v1, "handlerCancelAuthenticate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 1020
    const-string v0, "frontfingerprintkey"

    const-string v1, "cancelverify(): begin cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifyFingerEvents(IIZ)Z

    .line 1022
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 1023
    iput-object v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 1025
    :cond_0
    iput-object v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1026
    iput-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    .line 1027
    const-string v0, "frontfingerprintkey"

    const-string v1, "cancelverify(): end cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void
.end method

.method private handlerExitKeyGuard()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1120
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerExitKeyGuard: isScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isUserReboot:Z

    .line 1122
    iput v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->brightScreenFailCount:I

    .line 1123
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    if-eqz v0, :cond_0

    .line 1124
    iput-boolean v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isReaderConfiguration:Z

    .line 1125
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    .line 1126
    const-string v0, "sys.fingerprint.keguard"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V

    .line 1128
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->unregisterSensor()V

    .line 1129
    iput v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isConfigurationState:I

    .line 1130
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    .line 1132
    :cond_0
    const-string v0, "enable"

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    .line 1133
    iput v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    .line 1134
    iput v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailCount:I

    .line 1135
    iput-boolean v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardHide:Z

    .line 1136
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    .line 1137
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z

    .line 1138
    return-void
.end method

.method private handlerFingerFail()V
    .locals 3

    .prologue
    .line 1046
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerFingerFail sensorEventpositive is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isScreenOn is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->fingerprintFail(Z)V

    .line 1048
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerprintAuthorizedBroadcast(Z)V

    .line 1049
    const-string v0, "fail"

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->setCollectData(Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method private handlerFingerScreenOff()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 1076
    const-string v0, "frontfingerprintkey"

    const-string v1, "handlerFingerScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    .line 1078
    invoke-direct {p0, v4}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    .line 1079
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isReaderConfiguration:Z

    if-eqz v0, :cond_0

    .line 1080
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->registerSensor()V

    .line 1081
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isConfigurationState:I

    .line 1082
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isReaderConfiguration:Z

    .line 1083
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConfigurationState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isConfigurationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintSuccess:Z

    .line 1086
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    .line 1087
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenCamera:Z

    .line 1088
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z

    .line 1089
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    .line 1090
    iput v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFailConut:I

    .line 1091
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    if-nez v0, :cond_2

    .line 1092
    invoke-direct {p0, v4}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V

    .line 1097
    :cond_1
    :goto_0
    return-void

    .line 1093
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    if-eqz v0, :cond_1

    .line 1094
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    .line 1095
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V

    goto :goto_0
.end method

.method private handlerFingerScreenOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1052
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerFingerScreenOn isVerify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sensor state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isFingerprintSuccess is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isKeyguardHide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardHide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    .line 1055
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    .line 1056
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    iput v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFail:I

    .line 1057
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1058
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    if-eqz v0, :cond_2

    .line 1059
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V

    .line 1065
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerExitKeyGuard()V

    .line 1072
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->resendVerifyFailMsg()V

    .line 1073
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->brightScreenFailCount:I

    .line 1074
    return-void

    .line 1060
    :cond_2
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mTouchSwitchState:I

    if-ne v3, v0, :cond_0

    .line 1061
    const-string v0, "frontfingerprintkey"

    const-string v1, "it is not keguard view set ket mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    goto :goto_0

    .line 1066
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintSuccess:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardHide:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->SCREEN_ON_PKGNAME:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isTopActivity([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1067
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V

    goto :goto_1

    .line 1068
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintSuccess:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    if-eqz v0, :cond_1

    .line 1069
    const-string v0, "frontfingerprintkey"

    const-string v1, "screen on restart fingerprint identify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V

    goto :goto_1
.end method

.method private handlerFingerSuccess()V
    .locals 2

    .prologue
    .line 1041
    const-string v0, "frontfingerprintkey"

    const-string v1, "handlerFingerSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->fingerprintsuccess()V

    .line 1043
    const-string v0, "success"

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->setCollectData(Ljava/lang/String;)V

    .line 1044
    return-void
.end method

.method private handlerInfrared(F)V
    .locals 3
    .param p1, "distance"    # F

    .prologue
    .line 1174
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mProximityThreshold:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    .line 1175
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handlerInfrared sensorEventpositive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isRegisterSensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isRegisterSensor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isRegisterSensor:Z

    if-nez v0, :cond_2

    .line 1177
    :cond_0
    const-string v0, "frontfingerprintkey"

    const-string v1, "not executed handlerInfrared operation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :goto_1
    return-void

    .line 1174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1180
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    if-eqz v0, :cond_3

    .line 1181
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerInfraredNear()V

    goto :goto_1

    .line 1183
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerInfraredfar()V

    goto :goto_1
.end method

.method private handlerInfraredNear()V
    .locals 1

    .prologue
    .line 1030
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    .line 1031
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V

    .line 1032
    return-void
.end method

.method private handlerInfraredfar()V
    .locals 1

    .prologue
    .line 1034
    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V

    .line 1035
    return-void
.end method

.method private handlerKeyGuardHide()V
    .locals 2

    .prologue
    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardHide:Z

    .line 1114
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->KEYGUARD_HIDE_PKGNAME:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isTopActivity([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    const-string v0, "frontfingerprintkey"

    const-string v1, "handlerKeyGuardHide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V

    .line 1118
    :cond_0
    return-void
.end method

.method private handlerKeyGuardShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1099
    const-string v0, "frontfingerprintkey"

    const-string v1, "handlerKeyGuardShow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardHide:Z

    .line 1101
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    if-eqz v0, :cond_1

    .line 1102
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenCamera:Z

    .line 1104
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintSuccess:Z

    .line 1105
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V

    .line 1107
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isUserReboot:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenUnlockSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const-string v1, "user-reboot"

    const/4 v2, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->resultKeyguardByFingerprint(ZLjava/lang/String;I)V

    .line 1111
    :cond_2
    return-void
.end method

.method private handlerOtherApp()V
    .locals 3

    .prologue
    .line 1140
    const-string v0, "frontfingerprintkey"

    const-string v1, "handlerOtherApp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_simpinpuk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    .line 1143
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimPinObserver value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1145
    const-string v0, "enable"

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1148
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V

    .line 1153
    :cond_1
    :goto_0
    return-void

    .line 1149
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V

    goto :goto_0
.end method

.method private handlerSendFingerprintCmd(I)V
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    .line 1037
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerSendFingerprintCmd cmd is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " string is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerToStringLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->sendFingerprintCmd(I)I

    .line 1039
    return-void
.end method

.method private handlerSystemReboot()V
    .locals 7

    .prologue
    const/16 v2, 0xf

    const/4 v6, 0x1

    .line 1155
    const-string v3, "frontfingerprintkey"

    const-string v4, "handler System Reboot begin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1157
    :cond_0
    const-string v3, "frontfingerprintkey"

    const-string v4, "has not enroll fingerprints or is not keyguard Secure view"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_unlock_open"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1162
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_unlock_open"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1163
    .local v1, "unlockSwitchState":I
    if-ne v6, v1, :cond_1

    const/16 v2, 0xe

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    .line 1164
    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isSupportFingerKey:Z

    if-eqz v2, :cond_2

    .line 1165
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_touch_switch"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1166
    .local v0, "touchSwitchState":I
    iput v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mTouchSwitchState:I

    .line 1167
    if-nez v0, :cond_4

    const/16 v2, 0x11

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V

    .line 1168
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_press_key_unlock"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mPressUnlockSwitchState:I

    .line 1170
    .end local v0    # "touchSwitchState":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->detectRebootReason()V

    .line 1171
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V

    .line 1172
    return-void

    .line 1160
    .end local v1    # "unlockSwitchState":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->checkFingerUnLockSwitch()V

    goto :goto_0

    .line 1167
    .restart local v0    # "touchSwitchState":I
    .restart local v1    # "unlockSwitchState":I
    :cond_4
    const/16 v2, 0x10

    goto :goto_1
.end method

.method private handlerToStringLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1188
    const-string v0, "unknow message"

    .line 1189
    .local v0, "message":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1291
    :goto_0
    return-object v0

    .line 1191
    :sswitch_0
    const-string v0, "MSG_FINGER_AUTHENTICATE"

    .line 1192
    goto :goto_0

    .line 1195
    :sswitch_1
    const-string v0, "MSG_FINGER_CANCEL"

    .line 1196
    goto :goto_0

    .line 1199
    :sswitch_2
    const-string v0, "MSG_FINGER_INFRARED_NEAR"

    .line 1200
    goto :goto_0

    .line 1203
    :sswitch_3
    const-string v0, "MSG_FINGER_INFRARED_FAR_AWAY"

    .line 1204
    goto :goto_0

    .line 1207
    :sswitch_4
    const-string v0, "MSG_FINGER_SEND_CMD"

    .line 1208
    goto :goto_0

    .line 1211
    :sswitch_5
    const-string v0, "MSG_FINGER_FAIL"

    .line 1212
    goto :goto_0

    .line 1215
    :sswitch_6
    const-string v0, "MSG_FINGER_SUCCESS"

    .line 1216
    goto :goto_0

    .line 1219
    :sswitch_7
    const-string v0, "KEY_MODE"

    .line 1220
    goto :goto_0

    .line 1223
    :sswitch_8
    const-string v0, "EVENT_SCREEN_OFF"

    .line 1224
    goto :goto_0

    .line 1227
    :sswitch_9
    const-string v0, "EVENT_SCREEN_ON"

    .line 1228
    goto :goto_0

    .line 1231
    :sswitch_a
    const-string v0, "CLEAR_AUTH_PARAM"

    .line 1232
    goto :goto_0

    .line 1235
    :sswitch_b
    const-string v0, "MSG_FINGER_SCREEN_ON"

    .line 1236
    goto :goto_0

    .line 1239
    :sswitch_c
    const-string v0, "MSG_FINGER_SCREEN_OFF"

    .line 1240
    goto :goto_0

    .line 1243
    :sswitch_d
    const-string v0, "MSG_FINGER_KEYGURD_SHOW"

    .line 1244
    goto :goto_0

    .line 1247
    :sswitch_e
    const-string v0, "MSG_FINGER_KEYGURD_EXIT"

    .line 1248
    goto :goto_0

    .line 1251
    :sswitch_f
    const-string v0, "MSG_FINGER_SIMPINPUK_DATA"

    .line 1252
    goto :goto_0

    .line 1255
    :sswitch_10
    const-string v0, "MSG_FINGER_KEYGURD_HIDE"

    .line 1256
    goto :goto_0

    .line 1259
    :sswitch_11
    const-string v0, "MSG_FINGER_NOTIFY_SWITCH_STATE"

    .line 1260
    goto :goto_0

    .line 1263
    :sswitch_12
    const-string v0, "MSG_FINGER_SYSTEM_REBOOT"

    .line 1264
    goto :goto_0

    .line 1267
    :sswitch_13
    const-string v0, "FP_UNLOCK_SWITCH_ON"

    .line 1268
    goto :goto_0

    .line 1271
    :sswitch_14
    const-string v0, "FP_UNLOCK_SWITCH_OFF"

    .line 1272
    goto :goto_0

    .line 1275
    :sswitch_15
    const-string v0, "HOME_TOUCH_SWITCH_ON"

    .line 1276
    goto :goto_0

    .line 1279
    :sswitch_16
    const-string v0, "HOME_TOUCH_SWITCH_OFF"

    .line 1280
    goto :goto_0

    .line 1283
    :sswitch_17
    const-string v0, "MSG_FINGER_INFRARED_OPERATION"

    .line 1284
    goto :goto_0

    .line 1287
    :sswitch_18
    const-string v0, "INFRARED_FAR_AWAY"

    goto :goto_0

    .line 1189
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_7
        0x6 -> :sswitch_18
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_13
        0xf -> :sswitch_14
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0x64 -> :sswitch_a
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_b
        0x3f0 -> :sswitch_c
        0x3f1 -> :sswitch_d
        0x3f2 -> :sswitch_10
        0x3f3 -> :sswitch_e
        0x3f4 -> :sswitch_f
        0x3f5 -> :sswitch_11
        0x3f6 -> :sswitch_12
        0x3f7 -> :sswitch_17
    .end sparse-switch
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "frontfingerprintkey"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mThread:Landroid/os/HandlerThread;

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 198
    new-instance v0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;-><init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerHandler:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

    .line 199
    return-void
.end method

.method private isAllowCancelCamera()Z
    .locals 4

    .prologue
    .line 423
    const/4 v0, 0x1

    .line 424
    .local v0, "isAllowCancel":Z
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenUnlockSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 427
    :cond_0
    const-string v1, "frontfingerprintkey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowCancelCamera isAllowCancel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v0
.end method

.method private isAllowRequstAuth()Z
    .locals 1

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    if-eqz v0, :cond_0

    .line 763
    const/4 v0, 0x0

    .line 765
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFingerprintAuthAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 793
    const-string v1, "frontfingerprintkey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFingerprintAuthAvailable isVerify:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sensorEventpositive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    if-eqz v1, :cond_1

    .line 795
    const-string v1, "frontfingerprintkey"

    const-string v2, "fingerprint identify is ready not allow again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    :goto_0
    return v0

    .line 798
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintSuccess:Z

    if-eqz v1, :cond_2

    .line 799
    const-string v1, "frontfingerprintkey"

    const-string v2, "fingerprint is already success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sensorEventpositive:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    if-nez v1, :cond_3

    .line 803
    const-string v1, "frontfingerprintkey"

    const-string v2, "Infrared near not allow finger identify"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 806
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->value:Ljava/lang/String;

    const-string v2, "disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenUnlockSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isFingerprintDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    goto :goto_0
.end method

.method private isFingerprintDevice(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 706
    const-string v2, "com.vivo.fingerprint"

    .line 707
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 709
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "com.vivo.fingerprint"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 714
    :goto_0
    const-string v5, "frontfingerprintkey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFingerprintDevice: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_0

    const-string v3, "fingerprint supported"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    if-nez v1, :cond_1

    move v3, v4

    .line 718
    :goto_2
    return v3

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 712
    const-string v3, "frontfingerprintkey"

    const-string v5, "isFingerprintDevice: package not found"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "fingerprint unsupported"

    goto :goto_1

    .line 718
    :cond_1
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private isFingerprintDisabled()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 771
    iget-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 772
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    .line 774
    .local v3, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    const/4 v2, 0x0

    .line 780
    .local v2, "isCanUserFingerprintDisabled":Z
    if-eqz v0, :cond_0

    .line 781
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_1

    move v2, v4

    .line 783
    :cond_0
    :goto_0
    const-string v7, "frontfingerprintkey"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFingerprintDisabled is can user fingerprint:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_2

    move v6, v4

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    if-nez v2, :cond_3

    .end local v2    # "isCanUserFingerprintDisabled":Z
    :goto_2
    return v4

    .line 775
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "frontfingerprintkey"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFingerprintDisabled e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 777
    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "isCanUserFingerprintDisabled":Z
    :cond_1
    move v2, v5

    .line 781
    goto :goto_0

    :cond_2
    move v6, v5

    .line 783
    goto :goto_1

    :cond_3
    move v4, v5

    .line 784
    goto :goto_2
.end method

.method private isKeyguardShowing()Z
    .locals 4

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "isShowing":Z
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 415
    const-string v1, "frontfingerprintkey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyguardShowing: isShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v0
.end method

.method private isOpenUnlockSwitch()Z
    .locals 4

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "isOpen":Z
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_unlock_open"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 437
    const/4 v0, 0x1

    .line 439
    :cond_0
    const-string v1, "frontfingerprintkey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpenUnlockSwitch: isOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return v0
.end method

.method private isRejectUnlock()Z
    .locals 2

    .prologue
    .line 739
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getLockDeadline()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailCount:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTopActivity([Ljava/lang/String;)Z
    .locals 11
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 841
    iget-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v6, :cond_0

    .line 842
    iget-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    .line 844
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v6, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 845
    .local v5, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v1, 0x0

    .line 846
    .local v1, "cmpNameTemp":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 847
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 848
    const-string v6, "frontfingerprintkey"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "top activity package name is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 850
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 855
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    :goto_1
    return v6

    .line 849
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    move v6, v8

    .line 855
    goto :goto_1
.end method

.method private lockMode(Z)V
    .locals 7
    .param p1, "VisitorMode"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "Lock_mode":I
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 653
    const-string v2, "frontfingerprintkey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lock_mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " VisitorMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    if-eqz p1, :cond_1

    .line 655
    if-eq v0, v6, :cond_0

    .line 656
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.VisitMode.action.TURN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "switch_menu"

    const-string v3, "visit_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 669
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    if-eqz v0, :cond_0

    .line 663
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 664
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.VisitMode.action.TURN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "switch_menu"

    const-string v3, "visit_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private notifyFingerEvents(IIZ)Z
    .locals 7
    .param p1, "type"    # I
    .param p2, "event"    # I
    .param p3, "value"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 859
    iget-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerStatusRecorder:Lcom/android/server/policy/VivoFingerStatusRecorder;

    if-nez v6, :cond_0

    .line 860
    invoke-static {}, Lcom/android/server/policy/VivoFingerStatusRecorder;->getInstance()Lcom/android/server/policy/VivoFingerStatusRecorder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerStatusRecorder:Lcom/android/server/policy/VivoFingerStatusRecorder;

    .line 862
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerStatusRecorder:Lcom/android/server/policy/VivoFingerStatusRecorder;

    if-eqz v6, :cond_8

    .line 863
    const/4 v3, 0x1

    .line 864
    .local v3, "type_finger_status":I
    const/4 v1, 0x2

    .line 865
    .local v1, "type_auth_result":I
    const/4 v2, 0x3

    .line 866
    .local v2, "type_auth_status":I
    if-ne v4, p1, :cond_3

    .line 867
    iget-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerStatusRecorder:Lcom/android/server/policy/VivoFingerStatusRecorder;

    if-ne v4, p2, :cond_2

    :goto_0
    invoke-virtual {v6, v4}, Lcom/android/server/policy/VivoFingerStatusRecorder;->updateTouchStatus(Z)V

    .line 880
    .end local v1    # "type_auth_result":I
    .end local v2    # "type_auth_status":I
    .end local v3    # "type_finger_status":I
    :cond_1
    :goto_1
    return v5

    .restart local v1    # "type_auth_result":I
    .restart local v2    # "type_auth_status":I
    .restart local v3    # "type_finger_status":I
    :cond_2
    move v4, v5

    .line 867
    goto :goto_0

    .line 868
    :cond_3
    const/4 v6, 0x2

    if-ne v6, p1, :cond_6

    .line 869
    move v0, p3

    .line 870
    .local v0, "isReject":Z
    iget-boolean v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isUserReboot:Z

    if-eqz v6, :cond_4

    .line 871
    const/4 v0, 0x1

    .line 873
    :cond_4
    iget-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerStatusRecorder:Lcom/android/server/policy/VivoFingerStatusRecorder;

    if-ne v4, p2, :cond_5

    :goto_2
    invoke-virtual {v6, v4, v0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->onAuthResult(ZZ)Z

    move-result v5

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2

    .line 874
    .end local v0    # "isReject":Z
    :cond_6
    const/4 v6, 0x3

    if-ne v6, p1, :cond_1

    .line 875
    iget-object v6, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerStatusRecorder:Lcom/android/server/policy/VivoFingerStatusRecorder;

    if-ne v4, p2, :cond_7

    :goto_3
    invoke-virtual {v6, v4}, Lcom/android/server/policy/VivoFingerStatusRecorder;->updateAuthStatus(Z)V

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_3

    .line 878
    .end local v1    # "type_auth_result":I
    .end local v2    # "type_auth_status":I
    .end local v3    # "type_finger_status":I
    :cond_8
    const-string v4, "frontfingerprintkey"

    const-string v6, "null == mFingerStatusRecorder"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notifyPhoneWindowFail()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->sendFingerprintMessage(I)V

    .line 565
    :cond_0
    return-void
.end method

.method private notifySwitchState(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/16 v6, 0x3f5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "switchState":I
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerHandler:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

    if-eqz v2, :cond_1

    .line 300
    if-ne v4, p1, :cond_2

    .line 301
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_unlock_open"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 309
    :cond_0
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->removeFingerMessage(I)V

    .line 310
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerHandler:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, p1, v1, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 311
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x0

    invoke-direct {p0, v5, v0, v2, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V

    .line 313
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 302
    :cond_2
    const/4 v2, 0x2

    if-ne v2, p1, :cond_3

    .line 303
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_touch_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 304
    iput v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mTouchSwitchState:I

    goto :goto_0

    .line 305
    :cond_3
    const/4 v2, 0x3

    if-ne v2, p1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_press_key_unlock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mPressUnlockSwitchState:I

    goto :goto_1
.end method

.method private parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 276
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 279
    .local v1, "outerDepth":I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    if-ne v3, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_2

    .line 280
    :cond_1
    if-eq v3, v8, :cond_0

    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    .line 284
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "tagName":Ljava/lang/String;
    const-string v5, "boolean"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    const-string v5, "name"

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "name":Ljava/lang/String;
    const-string v5, "value"

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "value":Ljava/lang/String;
    const-string v5, "frontfingerprintkey"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseFingerprintsLocked name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v5, "finger_unlock"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 294
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private readFingerSwitchStatus()Z
    .locals 18

    .prologue
    .line 235
    const-string v1, "com.vivo.fingerprint"

    .line 236
    .local v1, "FINGER_MANAGER_PKG":Ljava/lang/String;
    const/4 v3, 0x0

    .line 237
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 238
    .local v6, "mFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 240
    .local v5, "isOpen":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    const-string v16, "com.vivo.fingerprint"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 241
    .local v9, "othercontext":Landroid/content/Context;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_preferences.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "name":Ljava/lang/String;
    const-string v12, "data/data/com.vivo.fingerprint/shared_prefs/"

    .line 243
    .local v12, "path":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v6    # "mFile":Ljava/io/File;
    .local v7, "mFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 245
    const-string v15, "frontfingerprintkey"

    const-string v16, "not file"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    const/4 v15, 0x0

    .line 266
    if-eqz v3, :cond_0

    .line 267
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_0
    move-object v6, v7

    .line 271
    .end local v7    # "mFile":Ljava/io/File;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "othercontext":Landroid/content/Context;
    .end local v12    # "path":Ljava/lang/String;
    .restart local v6    # "mFile":Ljava/io/File;
    :goto_0
    return v15

    .line 248
    .end local v6    # "mFile":Ljava/io/File;
    .restart local v7    # "mFile":Ljava/io/File;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "othercontext":Landroid/content/Context;
    .restart local v12    # "path":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 249
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 250
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    invoke-interface {v11, v4, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 251
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 254
    .local v10, "outerDepth":I
    :cond_2
    :goto_1
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_4

    const/4 v15, 0x3

    if-ne v14, v15, :cond_3

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v10, :cond_4

    .line 255
    :cond_3
    const/4 v15, 0x3

    if-eq v14, v15, :cond_2

    const/4 v15, 0x4

    if-eq v14, v15, :cond_2

    .line 258
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, "tagName":Ljava/lang/String;
    const-string v15, "map"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 260
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v5

    goto :goto_1

    .line 266
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_7

    .line 267
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v6, v7

    .end local v7    # "mFile":Ljava/io/File;
    .restart local v6    # "mFile":Ljava/io/File;
    move-object v3, v4

    .line 270
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "othercontext":Landroid/content/Context;
    .end local v10    # "outerDepth":I
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "path":Ljava/lang/String;
    .end local v14    # "type":I
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_5
    :goto_2
    const-string v15, "frontfingerprintkey"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readFingerSwitchStatus isOpen:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v5

    .line 271
    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v15, "frontfingerprintkey"

    const-string v16, "No fingerprint message"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    if-eqz v3, :cond_5

    .line 267
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    :goto_4
    if-eqz v3, :cond_6

    .line 267
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v15

    .line 266
    .end local v6    # "mFile":Ljava/io/File;
    .restart local v7    # "mFile":Ljava/io/File;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "othercontext":Landroid/content/Context;
    .restart local v12    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v15

    move-object v6, v7

    .end local v7    # "mFile":Ljava/io/File;
    .restart local v6    # "mFile":Ljava/io/File;
    goto :goto_4

    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v6    # "mFile":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catchall_2
    move-exception v15

    move-object v6, v7

    .end local v7    # "mFile":Ljava/io/File;
    .restart local v6    # "mFile":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 263
    .end local v6    # "mFile":Ljava/io/File;
    .restart local v7    # "mFile":Ljava/io/File;
    :catch_1
    move-exception v2

    move-object v6, v7

    .end local v7    # "mFile":Ljava/io/File;
    .restart local v6    # "mFile":Ljava/io/File;
    goto :goto_3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v6    # "mFile":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catch_2
    move-exception v2

    move-object v6, v7

    .end local v7    # "mFile":Ljava/io/File;
    .restart local v6    # "mFile":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v6    # "mFile":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    .restart local v10    # "outerDepth":I
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "type":I
    :cond_7
    move-object v6, v7

    .end local v7    # "mFile":Ljava/io/File;
    .restart local v6    # "mFile":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private rebootTip(Z)V
    .locals 4
    .param p1, "FingerSuccess"    # Z

    .prologue
    const/4 v3, 0x0

    .line 981
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebootTip FingerSuccess is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    if-eqz p1, :cond_0

    .line 983
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isVerify:Z

    .line 984
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const-string v1, "user-reboot"

    invoke-interface {v0, v3, v1, v3}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->resultKeyguardByFingerprint(ZLjava/lang/String;I)V

    .line 987
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 505
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 506
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->screenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 508
    return-void
.end method

.method private registerSensor()V
    .locals 5

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    .line 316
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->product_info:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->product_info:Ljava/lang/String;

    const-string v2, "LG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenUnlockSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 320
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 321
    .local v0, "mProximitySensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_2

    .line 322
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mProximityThreshold:F

    .line 326
    :goto_0
    const-string v1, "frontfingerprintkey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSensor: arg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mProximityThreshold:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isRegisterSensor:Z

    .line 331
    .end local v0    # "mProximitySensor":Landroid/hardware/Sensor;
    :cond_1
    return-void

    .line 324
    .restart local v0    # "mProximitySensor":Landroid/hardware/Sensor;
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mProximityThreshold:F

    goto :goto_0
.end method

.method private removeFingerMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerHandler:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerHandler:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->removeMessages(I)V

    .line 978
    :cond_0
    return-void
.end method

.method private resendVerifyFailMsg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 494
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resendVerifyFailMsg: arg1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isSupportFingerKey:Z

    if-eqz v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->screenOnTip()V

    .line 498
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    .line 499
    iput-boolean v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z

    .line 502
    :cond_0
    return-void
.end method

.method private screenOnTip()V
    .locals 3

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 552
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    if-ne v0, v1, :cond_0

    .line 553
    const-string v0, "sys.fingerprint.keguard"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const-string v1, "fail-five"

    invoke-interface {v0, v2, v1, v2}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->resultKeyguardByFingerprint(ZLjava/lang/String;I)V

    .line 560
    :goto_0
    return-void

    .line 555
    :cond_0
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->failCount:I

    if-le v0, v1, :cond_1

    .line 556
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const-string v1, "fail-six"

    invoke-interface {v0, v2, v1, v2}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->resultKeyguardByFingerprint(ZLjava/lang/String;I)V

    goto :goto_0

    .line 558
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->showKeyguardPass()V

    goto :goto_0
.end method

.method private sendFingerMessage(ILandroid/os/Message;J)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "delayMillis"    # J

    .prologue
    .line 967
    if-eqz p2, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerHandler:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerHandler:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private sendFingerprintAuthorizedBroadcast(Z)V
    .locals 3
    .param p1, "isFingerResult"    # Z

    .prologue
    .line 816
    const-string v1, "frontfingerprintkey"

    const-string v2, "sendFingerprintAuthorizedBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.fingerprint.action_authorized"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isFingerprintSuccess"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 820
    return-void
.end method

.method private sendFingerprintResult(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 826
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFingerprintResult..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->sendFingerprintResult(I)V

    .line 829
    :cond_0
    return-void
.end method

.method private setCollectData(Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 745
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

    if-nez v2, :cond_0

    .line 759
    :goto_0
    return-void

    .line 748
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 749
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_touch_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 750
    .local v1, "propValue":I
    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mIsScreenOn:Z

    if-eqz v2, :cond_1

    .line 751
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

    const-string v2, "screen_state"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

    const-string v2, "identify"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

    const-string v2, "unlock_mode"

    iget-object v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->unlock_mode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

    const-string v3, "press_touch_unlock"

    if-ne v4, v1, :cond_2

    const-string v2, "1"

    :goto_2
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

    iget-object v3, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

    const-string v3, "1073"

    iget-object v4, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

    const-string v4, "10731"

    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/fingerprint/FingerprintCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 753
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mCollectData:Landroid/hardware/fingerprint/FingerprintCollectData;

    const-string v2, "screen_state"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 757
    :cond_2
    const-string v2, "0"

    goto :goto_2
.end method

.method private showKeyguardPass()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 572
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFail:I

    if-ge v0, v4, :cond_2

    .line 573
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tempScreenFail<FAIL_TEMP_SCREEN_ON tempScreenFailConut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFailConut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFailConut:I

    if-ge v0, v4, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const-string v1, "fail-toast"

    invoke-interface {v0, v3, v1, v3}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->resultKeyguardByFingerprint(ZLjava/lang/String;I)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const-string v1, "fail-pass"

    invoke-interface {v0, v3, v1, v3}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->resultKeyguardByFingerprint(ZLjava/lang/String;I)V

    goto :goto_0

    .line 579
    :cond_2
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFail:I

    if-ne v0, v4, :cond_0

    .line 580
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tempScreenFail==FAIL_TEMP_SCREEN_ON tempScreenFailConut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFailConut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->tempScreenFailConut:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 582
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const-string v1, "fail-toast"

    invoke-interface {v0, v3, v1, v3}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->resultKeyguardByFingerprint(ZLjava/lang/String;I)V

    goto :goto_0

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const-string v1, "fail-pass"

    invoke-interface {v0, v3, v1, v3}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->resultKeyguardByFingerprint(ZLjava/lang/String;I)V

    goto :goto_0
.end method

.method private unregisterSensor()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->product_info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->product_info:Ljava/lang/String;

    const-string v1, "LG4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isRegisterSensor:Z

    .line 339
    :cond_1
    return-void
.end method


# virtual methods
.method public notifyFingerprintKeyHandler(I)V
    .locals 9
    .param p1, "action"    # I

    .prologue
    const/16 v8, 0x3f1

    const/16 v7, 0x3f0

    const/16 v6, 0x3ef

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 461
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFingerprintKeyHandler action is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    packed-switch p1, :pswitch_data_0

    .line 488
    :goto_0
    return-void

    .line 464
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->removeFingerMessage(I)V

    .line 465
    invoke-direct {p0, v6, v3, v4, v5}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V

    goto :goto_0

    .line 469
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->removeFingerMessage(I)V

    .line 470
    invoke-direct {p0, v7, v3, v4, v5}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V

    goto :goto_0

    .line 474
    :pswitch_2
    const/16 v0, 0x3f2

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->removeFingerMessage(I)V

    .line 475
    const/16 v0, 0x3f2

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V

    goto :goto_0

    .line 479
    :pswitch_3
    invoke-direct {p0, v8}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->removeFingerMessage(I)V

    .line 480
    invoke-direct {p0, v8, v3, v4, v5}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V

    goto :goto_0

    .line 484
    :pswitch_4
    const/16 v0, 0x3f6

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V

    goto :goto_0

    .line 462
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

.method public onCheckForward(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)I
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 449
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 450
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->unlock_mode:Ljava/lang/String;

    .line 451
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE_HOME: isScreenon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasFingerSensorTouched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHasFingerSensorTouched:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isScreenOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHasFingerSensorTouched:Z

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z

    .line 456
    :cond_0
    const/16 v0, -0x64

    return v0
.end method
