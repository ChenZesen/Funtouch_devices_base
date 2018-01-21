.class public Lcom/android/server/policy/VivoFingerStatusRecorder;
.super Ljava/lang/Object;
.source "VivoFingerStatusRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;,
        Lcom/android/server/policy/VivoFingerStatusRecorder$SettingsObserver;,
        Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;,
        Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_TIP:Z

.field private static final FINGER_FAIL_AFTER_UNTOUCHED_INTERVAL:I = 0x12c

.field private static final FINGER_TOUCH_UNLOCK_DISABLED:I = 0x0

.field private static final FINGER_TOUCH_UNLOCK_ENABLED:I = 0x1

.field private static final KEYGUARD_DONE_BY_FINGER_VERTICAL:Ljava/lang/String; = "1"

.field private static final MSG_AUTH_RESULT_EXPIRED:I = 0x4

.field private static final MSG_DEBUG_TIP:I = 0x0

.field private static final MSG_HIDE_KEYGUARD:I = 0x1

.field private static final MSG_KEYGUARD_DONE:I = 0x3

.field private static final MSG_WAKE_UP:I = 0x2

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.debug.fingershot"

.field private static final PROP_KEGUAR_FINGER:Ljava/lang/String; = "sys.fingerprint.keguard"

.field public static final SETTING_FINGER_PRESS_KEY_UNLOCK:Ljava/lang/String; = "finger_press_key_unlock"

.field private static final TAG:Ljava/lang/String;

.field private static mHomeKeyEvent:Landroid/view/KeyEvent;

.field private static mInstance:Lcom/android/server/policy/VivoFingerStatusRecorder;

.field private static mLock:Ljava/lang/Object;

.field private static mPowerKeyEvent:Landroid/view/KeyEvent;

.field private static mUseFingerTouchShot:Z


# instance fields
.field private mCallback:Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;

.field private mContext:Landroid/content/Context;

.field private mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

.field private mFingerTouchUnlockEnabled:Z

.field private mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

.field private mKeygaurdShowing:Z

.field private mLastShotTimeStamp:J

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Lcom/android/server/policy/VivoFingerStatusRecorder$SettingsObserver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 28
    const-class v0, Lcom/android/server/policy/VivoFingerStatusRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "persist.debug.fingershot"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->DEBUG:Z

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->DEBUG_TIP:Z

    .line 34
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->isFrontFingerprintkey()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mUseFingerTouchShot:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mInstance:Lcom/android/server/policy/VivoFingerStatusRecorder;

    .line 44
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x1a

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    sput-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mPowerKeyEvent:Landroid/view/KeyEvent;

    .line 45
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    sput-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHomeKeyEvent:Landroid/view/KeyEvent;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mContext:Landroid/content/Context;

    .line 48
    iput-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    .line 49
    iput-boolean v4, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mKeygaurdShowing:Z

    .line 50
    new-instance v0, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    invoke-direct {v0, p0}, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;-><init>(Lcom/android/server/policy/VivoFingerStatusRecorder;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLastShotTimeStamp:J

    .line 55
    new-instance v0, Lcom/android/server/policy/VivoFingerStatus;

    invoke-direct {v0}, Lcom/android/server/policy/VivoFingerStatus;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    .line 58
    iput-boolean v5, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerTouchUnlockEnabled:Z

    .line 59
    iput-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mResolver:Landroid/content/ContentResolver;

    .line 60
    iput-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mCallback:Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;

    .line 61
    iput-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mSettingsObserver:Lcom/android/server/policy/VivoFingerStatusRecorder$SettingsObserver;

    .line 62
    iput-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mPowerManager:Landroid/os/PowerManager;

    .line 63
    iput-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    iput-object p1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;-><init>(Lcom/android/server/policy/VivoFingerStatusRecorder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    .line 130
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mResolver:Landroid/content/ContentResolver;

    .line 131
    new-instance v0, Lcom/android/server/policy/VivoFingerStatusRecorder$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/VivoFingerStatusRecorder$SettingsObserver;-><init>(Lcom/android/server/policy/VivoFingerStatusRecorder;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mSettingsObserver:Lcom/android/server/policy/VivoFingerStatusRecorder$SettingsObserver;

    .line 132
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_press_key_unlock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mSettingsObserver:Lcom/android/server/policy/VivoFingerStatusRecorder$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 135
    iput-object p3, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mCallback:Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;

    .line 136
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mPowerManager:Landroid/os/PowerManager;

    .line 137
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/server/policy/VivoFingerStatusRecorder;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 142
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->handleSettingsChangedLocked()V

    .line 143
    return-void

    .line 140
    :cond_0
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->TAG:Ljava/lang/String;

    const-string v1, "VivoFingerStatusRecorder mPowerManager is null, can not new wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/VivoFingerStatusRecorder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoFingerStatusRecorder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/VivoFingerStatusRecorder;)Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoFingerStatusRecorder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mCallback:Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/VivoFingerStatusRecorder;)Lcom/android/server/policy/VivoFingerStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoFingerStatusRecorder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/VivoFingerStatusRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoFingerStatusRecorder;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->releaseWakeLockLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/VivoFingerStatusRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoFingerStatusRecorder;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->handleSettingsChangedLocked()V

    return-void
.end method

.method private acquireWakeLockLocked()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 158
    :cond_0
    return-void
.end method

.method private blockAuthResultForPressKeyUnlockLocked(ZZ)Z
    .locals 10
    .param p1, "success"    # Z
    .param p2, "rejectUnlock"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 296
    iget-boolean v6, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerTouchUnlockEnabled:Z

    if-eqz v6, :cond_0

    .line 297
    const-string v5, "blockAuthResultForPressKeyUnlockLocked true,return;"

    invoke-static {v5}, Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V

    move v0, v4

    .line 355
    :goto_0
    return v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    .line 301
    .local v0, "block":Z
    iget-object v6, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    invoke-virtual {v6, p1}, Lcom/android/server/policy/VivoFingerStatus;->updateAuthResult(Z)V

    .line 306
    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->isHaveHomePowerKeyPressEventLocked()Z

    move-result v2

    .line 307
    .local v2, "homePowerEvent":Z
    iget-object v6, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    invoke-virtual {v6}, Lcom/android/server/policy/VivoFingerStatus;->isFingerDown()Z

    move-result v1

    .line 308
    .local v1, "fingerDown":Z
    iget-object v6, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    iget-wide v6, v6, Lcom/android/server/policy/VivoFingerStatus;->mTouchEventTime:J

    iget-object v8, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-wide v8, v8, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mTimeStamp:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    move v3, v5

    .line 309
    .local v3, "touchBeforeWake":Z
    :goto_1
    if-eqz p1, :cond_1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 312
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/VivoFingerStatus;->updateAuthResult(Z)V

    .line 313
    const/4 v0, 0x0

    .line 350
    :cond_2
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blockAuthResultForPressKeyUnlockLocked wake:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-boolean v5, v5, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAuthing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    iget-boolean v5, v5, Lcom/android/server/policy/VivoFingerStatus;->mAuthing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fingerDown:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reject:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " block:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " before:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "touchBeforeWake":Z
    :cond_3
    move v3, v4

    .line 308
    goto :goto_1

    .line 314
    .restart local v3    # "touchBeforeWake":Z
    :cond_4
    iget-object v6, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-boolean v6, v6, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    if-nez v6, :cond_6

    .line 318
    iget-object v6, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    iget-boolean v6, v6, Lcom/android/server/policy/VivoFingerStatus;->mAuthing:Z

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 319
    sget-object v6, Lcom/android/server/policy/VivoFingerStatusRecorder;->TAG:Ljava/lang/String;

    const-string v7, "blockAuthResultForPressKeyUnlockLocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v6, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->sendEmptyMessage(I)Z

    .line 321
    iget-object v5, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->sendEmptyMessage(I)Z

    .line 322
    iget-object v5, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/VivoFingerStatus;->updateAuthResult(Z)V

    goto/16 :goto_2

    .line 325
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 333
    :cond_6
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 339
    :try_start_0
    const-string v4, "blockAuthResultForPressKeyUnlockLocked sleep 100"

    invoke-static {v4}, Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V

    .line 340
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 341
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method private blockAuthResultForScreenShotLocked(Z)Z
    .locals 12
    .param p1, "success"    # Z

    .prologue
    const/4 v8, 0x0

    .line 233
    sget-boolean v9, Lcom/android/server/policy/VivoFingerStatusRecorder;->mUseFingerTouchShot:Z

    if-nez v9, :cond_1

    move v0, v8

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    const/4 v0, 0x0

    .line 237
    .local v0, "block":Z
    sget-boolean v9, Lcom/android/server/policy/VivoFingerStatusRecorder;->DEBUG_TIP:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    if-eqz v9, :cond_2

    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "su:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sh:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mKeygaurdShowing:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " do:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->isPowerKeyDownLocked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " wa:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-boolean v10, v10, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "tip":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    invoke-virtual {v9, v8}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 240
    .local v4, "msg":Landroid/os/Message;
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    iget-object v8, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 243
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "tip":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->isPowerKeyDownLocked()Z

    move-result v1

    .line 244
    .local v1, "down":Z
    const-wide/16 v2, -0x1

    .line 247
    .local v2, "interval":J
    if-eqz v1, :cond_5

    iget-boolean v8, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mKeygaurdShowing:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-boolean v8, v8, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/server/policy/VivoFingerStatusRecorder;->mPowerKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-wide v10, v10, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mTimeStamp:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 248
    const/4 v0, 0x1

    .line 261
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    sget-boolean v8, Lcom/android/server/policy/VivoFingerStatusRecorder;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 262
    :cond_4
    sget-object v8, Lcom/android/server/policy/VivoFingerStatusRecorder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "blockAuthResultForScreenShotLocked block: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " su:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sh:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mKeygaurdShowing:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " do:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " wa:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-boolean v10, v10, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    :cond_5
    iget-object v8, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-boolean v8, v8, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mKeygaurdShowing:Z

    if-eqz v8, :cond_3

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 254
    .local v6, "now":J
    iget-wide v8, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLastShotTimeStamp:J

    sub-long v2, v6, v8

    .line 255
    iget-wide v8, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLastShotTimeStamp:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    const-wide/16 v8, 0x12c

    cmp-long v8, v2, v8

    if-gez v8, :cond_3

    .line 256
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAuthResult interval:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/android/server/policy/VivoFingerStatusRecorder;
    .locals 2

    .prologue
    .line 167
    sget-object v1, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mInstance:Lcom/android/server/policy/VivoFingerStatusRecorder;

    monitor-exit v1

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;)Lcom/android/server/policy/VivoFingerStatusRecorder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;

    .prologue
    .line 146
    sget-object v1, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mInstance:Lcom/android/server/policy/VivoFingerStatusRecorder;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/android/server/policy/VivoFingerStatusRecorder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/VivoFingerStatusRecorder;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;)V

    sput-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mInstance:Lcom/android/server/policy/VivoFingerStatusRecorder;

    .line 150
    :cond_0
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mInstance:Lcom/android/server/policy/VivoFingerStatusRecorder;

    monitor-exit v1

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSettingsChangedLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 428
    iget-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "finger_press_key_unlock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 429
    .local v0, "pressUnlcok":I
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->isFrontFingerprintkey()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerTouchUnlockEnabled:Z

    .line 430
    sget-object v1, Lcom/android/server/policy/VivoFingerStatusRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSettingsChangedLocked press:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerTouchUnlockEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 429
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHaveHomePowerKeyPressEventLocked()Z
    .locals 8

    .prologue
    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 287
    .local v2, "now":J
    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->isHomeKeyDownLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->isPowerKeyDownLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHomeKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x12c

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/VivoFingerStatusRecorder;->isRecentEvent(JJJ)Z

    move-result v0

    goto :goto_0
.end method

.method private isHomeKeyDownLocked()Z
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHomeKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHomeKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPowerKeyDownLocked()Z
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mPowerKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mPowerKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecentEvent(JJJ)Z
    .locals 7
    .param p1, "now"    # J
    .param p3, "eventTime"    # J
    .param p5, "recent"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "ret":Z
    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    cmp-long v3, p3, v4

    if-lez v3, :cond_0

    cmp-long v3, p5, v4

    if-lez v3, :cond_0

    .line 271
    sub-long v0, p1, p3

    .line 272
    .local v0, "interval":J
    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    cmp-long v3, v0, p5

    if-gez v3, :cond_0

    .line 273
    const/4 v2, 0x1

    .line 276
    .end local v0    # "interval":J
    :cond_0
    return v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-boolean v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void
.end method

.method private onKeyDownEventLocked(Z)V
    .locals 5
    .param p1, "down"    # Z

    .prologue
    const/4 v4, 0x1

    .line 179
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-boolean v0, v0, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    iget-boolean v0, v0, Lcom/android/server/policy/VivoFingerStatus;->mAuthing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    invoke-virtual {v0}, Lcom/android/server/policy/VivoFingerStatus;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    iget-boolean v0, v0, Lcom/android/server/policy/VivoFingerStatus;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->TAG:Ljava/lang/String;

    const-string v1, "onKeyDownEventLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->sendEmptyMessage(I)Z

    .line 184
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 186
    invoke-direct {p0, v4}, Lcom/android/server/policy/VivoFingerStatusRecorder;->sendFingerprintAuthorizedBroadcast(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/VivoFingerStatus;->updateAuthResult(Z)V

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDownEventLocked down:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAuthing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    iget-boolean v1, v1, Lcom/android/server/policy/VivoFingerStatus;->mAuthing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fingerDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    invoke-virtual {v1}, Lcom/android/server/policy/VivoFingerStatus;->isFingerDown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    iget-boolean v1, v1, Lcom/android/server/policy/VivoFingerStatus;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseWakeLockLocked()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 164
    :cond_0
    return-void
.end method

.method private sendFingerprintAuthorizedBroadcast(Z)V
    .locals 3
    .param p1, "isFingerResult"    # Z

    .prologue
    .line 436
    sget-object v1, Lcom/android/server/policy/VivoFingerStatusRecorder;->TAG:Ljava/lang/String;

    const-string v2, "sendFingerprintAuthorizedBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.fingerprint.action_authorized"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isFingerprintSuccess"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    iget-object v1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 440
    return-void
.end method


# virtual methods
.method public onAuthResult(ZZ)Z
    .locals 3
    .param p1, "success"    # Z
    .param p2, "rejectUnlock"    # Z

    .prologue
    .line 370
    sget-boolean v1, Lcom/android/server/policy/VivoFingerStatusRecorder;->mUseFingerTouchShot:Z

    if-nez v1, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    .line 375
    .local v0, "block":Z
    sget-object v2, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 377
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/VivoFingerStatusRecorder;->blockAuthResultForScreenShotLocked(Z)Z

    move-result v0

    .line 378
    if-eqz v0, :cond_1

    .line 379
    monitor-exit v2

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 381
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/VivoFingerStatusRecorder;->blockAuthResultForPressKeyUnlockLocked(ZZ)Z

    move-result v0

    .line 382
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onTakeScreenShot()V
    .locals 4

    .prologue
    .line 227
    sget-object v1, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLastShotTimeStamp:J

    .line 229
    monitor-exit v1

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "showing"    # Z

    .prologue
    .line 195
    sget-object v3, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 196
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setKeyDown "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " show="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 198
    .local v1, "keycode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 199
    .local v0, "down":Z
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mKeygaurdShowing:Z

    .line 200
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_2

    .line 201
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    sput-object v2, Lcom/android/server/policy/VivoFingerStatusRecorder;->mPowerKeyEvent:Landroid/view/KeyEvent;

    .line 205
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->onKeyDownEventLocked(Z)V

    .line 206
    monitor-exit v3

    .line 207
    return-void

    .line 198
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    .restart local v0    # "down":Z
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 203
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    sput-object v2, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHomeKeyEvent:Landroid/view/KeyEvent;

    goto :goto_1

    .line 206
    .end local v0    # "down":Z
    .end local v1    # "keycode":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setWakeStatus(Z)V
    .locals 1
    .param p1, "wake"    # Z

    .prologue
    .line 210
    sget-boolean v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mUseFingerTouchShot:Z

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->setWake(Z)V

    goto :goto_0
.end method

.method public updateAuthResult(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 120
    sget-object v1, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->removeMessages(I)V

    .line 122
    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->releaseWakeLockLocked()V

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/VivoFingerStatus;->updateAuthResult(Z)V

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAuthStatus(Z)V
    .locals 6
    .param p1, "auth"    # Z

    .prologue
    .line 108
    sget-object v1, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/VivoFingerStatus;->updateAuthStatus(Z)V

    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->acquireWakeLockLocked()V

    .line 113
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    const/4 v2, 0x4

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    :cond_0
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateTouchStatus(Z)V
    .locals 6
    .param p1, "touched"    # Z

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTouchStatus touched is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/VivoFingerStatus;->updateTouchStatus(Z)V

    .line 89
    if-nez p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->acquireWakeLockLocked()V

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mHandler:Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;

    const/4 v2, 0x4

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/policy/VivoFingerStatusRecorder$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 95
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-boolean v0, v0, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    iget-boolean v0, v0, Lcom/android/server/policy/VivoFingerStatus;->mSuccess:Z

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lcom/android/server/policy/VivoFingerStatusRecorder;->TAG:Ljava/lang/String;

    const-string v2, "updateTouchStatus"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    monitor-exit v1

    .line 105
    return-void

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTouchStatus touched="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mWake="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mWakeStatus:Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;

    iget-boolean v2, v2, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " success:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder;->mFingerStatus:Lcom/android/server/policy/VivoFingerStatus;

    iget-boolean v2, v2, Lcom/android/server/policy/VivoFingerStatus;->mSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
