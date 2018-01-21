.class public final Lcom/android/server/policy/VivoPolicyHelper;
.super Ljava/lang/Object;
.source "VivoPolicyHelper.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/VivoPolicyHelper$QuickLaunchObserver;
    }
.end annotation


# static fields
.field public static final AGAIN_LATER:I = 0x32

.field public static final CONTINUE:I = 0x0

.field static final DOUBLE_TAP_HOME_FLINGER_SERVICE:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field public static FINGER_LONGPRESS_DELAY:I = 0x0

.field public static FINGER_LONGPRESS_DURL:I = 0x0

.field public static FINGER_MISOPERATION_INTERVAL:I = 0x0

.field public static FINGER_PRINT_DELAY:I = 0x0

.field private static final FINGER_QUICK_LAUNCH:Ljava/lang/String; = "fingerprint_quick_launch"

.field private static final HOMEKEY_DISABLE:I = 0x1

.field private static final HOMEKEY_FP_DISABLE:I = 0x3

.field private static final HOMEKEY_FREE:I = 0x0

.field private static final HOMEKEY_LONG_DISABLE:I = 0x2

.field public static HOME_DOUBLE_TAP_TIMEOUT:I = 0x0

.field public static final INTERUPT:I = -0x1

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_TASK:I = 0x1

.field public static final MSG_LAUNCH_HOME_BEHAVIOR:I = 0x0

.field public static final MSG_LONGPRESS_HOME_BEHAVIOR:I = 0x2

.field public static final MSG_PRELOAD_HOME_BEHAVIOR:I = 0x1

.field public static final STATE_DOUBLE_TAP:I = 0x10

.field public static final STATE_LONG_PRESS:I = 0x20

.field public static final STATE_MODE_FINGER:I = 0x2

.field public static final STATE_MODE_KEY:I = 0x4

.field public static final STATE_MODE_REST:I = 0x1

.field public static final STATE_SHORT_PRESS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "VivoPolicyHelper"

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I


# instance fields
.field private final SERVICE_CLSNAME:Ljava/lang/String;

.field private final SERVICE_PKGNAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDoubleTapOnHomeBehavior:I

.field private final mFingerLongPressRunnable:Ljava/lang/Runnable;

.field private mFingerPrint:Z

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mHomeConsumed:Z

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeLongPressPending:Z

.field private mIsFingerFeedback:Z

.field private mIsHomeFromScreenOff:Z

.field private mLongPressOnHomeBehavior:I

.field private mPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

.field private mProcState:I

.field private mQuickLaunchOn:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private sCount:I

.field private sDebug:Z

.field private sDebugOriginal:Z

.field private sFingerDownTime:J

.field private sLastTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 68
    const/16 v0, 0x258

    sput v0, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_PRINT_DELAY:I

    .line 69
    const/16 v0, 0x2bc

    sput v0, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_MISOPERATION_INTERVAL:I

    .line 70
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_LONGPRESS_DURL:I

    .line 71
    sput v1, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_LONGPRESS_DELAY:I

    .line 72
    sput v1, Lcom/android/server/policy/VivoPolicyHelper;->HOME_DOUBLE_TAP_TIMEOUT:I

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/VivoPolicyHelper;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    const-wide/16 v4, -0x1

    const/16 v3, 0xc8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "com.vivo.quickpay"

    iput-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->SERVICE_PKGNAME:Ljava/lang/String;

    .line 93
    const-string v0, "com.vivo.quickpay.fingerkey.QuickPayService"

    iput-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->SERVICE_CLSNAME:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/android/server/policy/VivoPolicyHelper;->sCount:I

    .line 96
    iput-boolean v1, p0, Lcom/android/server/policy/VivoPolicyHelper;->sDebug:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/server/policy/VivoPolicyHelper;->sDebugOriginal:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerPrint:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/server/policy/VivoPolicyHelper;->mQuickLaunchOn:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeConsumed:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeLongPressPending:Z

    .line 105
    iput v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->mLongPressOnHomeBehavior:I

    .line 106
    iput v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->mDoubleTapOnHomeBehavior:I

    .line 108
    iput v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/android/server/policy/VivoPolicyHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/VivoPolicyHelper$1;-><init>(Lcom/android/server/policy/VivoPolicyHelper;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 142
    new-instance v0, Lcom/android/server/policy/VivoPolicyHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/VivoPolicyHelper$2;-><init>(Lcom/android/server/policy/VivoPolicyHelper;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerLongPressRunnable:Ljava/lang/Runnable;

    .line 167
    iput-wide v4, p0, Lcom/android/server/policy/VivoPolicyHelper;->sLastTime:J

    .line 176
    iput-wide v4, p0, Lcom/android/server/policy/VivoPolicyHelper;->sFingerDownTime:J

    .line 186
    iput-object p2, p0, Lcom/android/server/policy/VivoPolicyHelper;->mPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 187
    iput-object p1, p0, Lcom/android/server/policy/VivoPolicyHelper;->mContext:Landroid/content/Context;

    .line 188
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 189
    invoke-direct {p0}, Lcom/android/server/policy/VivoPolicyHelper;->registerQuickLaunchObserver()V

    .line 191
    const-string v0, "persist.vivo.debug.home"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->sDebug:Z

    .line 192
    const-string v0, "persist.vivo.debug.origin"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->sDebugOriginal:Z

    .line 194
    const-string v0, "persist.vivo.finger.delay"

    const/16 v1, 0x258

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_PRINT_DELAY:I

    .line 195
    const-string v0, "persist.vivo.longpress.delay"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_LONGPRESS_DELAY:I

    .line 196
    const-string v0, "persist.vivo.doubletap.timeout"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/VivoPolicyHelper;->HOME_DOUBLE_TAP_TIMEOUT:I

    .line 197
    const-string v0, "persist.vivo.misopt.interval"

    const/16 v1, 0x2bc

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_MISOPERATION_INTERVAL:I

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/VivoPolicyHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyHelper;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/VivoPolicyHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/VivoPolicyHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyHelper;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/policy/VivoPolicyHelper;->handleShortPressOnHome(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/VivoPolicyHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyHelper;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/policy/VivoPolicyHelper;->handleLongPressOnHome(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/VivoPolicyHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyHelper;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mQuickLaunchOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/VivoPolicyHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/policy/VivoPolicyHelper;->mQuickLaunchOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/VivoPolicyHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/VivoPolicyHelper;)Lcom/android/server/policy/IVivoAdjustmentPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    return-object v0
.end method

.method static synthetic access$608(Lcom/android/server/policy/VivoPolicyHelper;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyHelper;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->sCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/policy/VivoPolicyHelper;->sCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/VivoPolicyHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerPrint:Z

    return p1
.end method

.method private checkFingerTimeInterval()Z
    .locals 4

    .prologue
    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->sFingerDownTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_LONGPRESS_DURL:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTimeInterval()Z
    .locals 4

    .prologue
    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->sLastTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_MISOPERATION_INTERVAL:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .locals 3

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->sDebug:Z

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "VivoPolicyHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoubleTapOnHome("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/policy/VivoPolicyHelper;->HOME_DOUBLE_TAP_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->sCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/VivoPolicyHelper$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/VivoPolicyHelper$4;-><init>(Lcom/android/server/policy/VivoPolicyHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :goto_0
    iget v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    .line 285
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->sLastTime:J

    .line 287
    invoke-direct {p0}, Lcom/android/server/policy/VivoPolicyHelper;->resetDoubleTapState()V

    .line 288
    invoke-direct {p0}, Lcom/android/server/policy/VivoPolicyHelper;->startAppService()V

    .line 289
    return-void

    .line 281
    :cond_0
    const-string v0, "VivoPolicyHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoubleTapOnHome("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/policy/VivoPolicyHelper;->HOME_DOUBLE_TAP_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLongPressOnHome(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x2

    .line 254
    const-string v0, "VivoPolicyHelper"

    const-string v1, "handleLongPressOnHome"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v0, 0x131

    if-ne p1, v0, :cond_1

    .line 256
    iget v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    .line 261
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerPrint:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/VivoPolicyHelper;->isFingerAuthenticate()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 262
    :cond_0
    const-string v0, "VivoPolicyHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring HOMELONGPRESS ,fingerprint is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerPrint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerPrint:Z

    .line 268
    :goto_1
    return-void

    .line 258
    :cond_1
    iget v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-interface {v0, p1, v2}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->doCustomKeyHandler(II)V

    goto :goto_1
.end method

.method private handleShortPressOnHome(I)V
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 206
    iget-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->sDebug:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/VivoPolicyHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/VivoPolicyHelper$3;-><init>(Lcom/android/server/policy/VivoPolicyHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    const-string v0, "VivoPolicyHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShortPressOnHome -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->sCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    iget-wide v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->sLastTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/VivoPolicyHelper;->checkTimeInterval()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "VivoPolicyHelper"

    const-string v1, "Don\'t post shortPressOnHome overdue timeinterval.!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_1
    return-void

    .line 218
    :cond_0
    const-string v0, "VivoPolicyHelper"

    const-string v1, "handleShortPressOnHome."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_1
    iget-wide v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->sLastTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 227
    iput-wide v4, p0, Lcom/android/server/policy/VivoPolicyHelper;->sLastTime:J

    .line 230
    :cond_2
    const/16 v0, 0x131

    if-ne p1, v0, :cond_3

    .line 231
    iget v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    .line 236
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerPrint:Z

    if-eqz v0, :cond_4

    .line 237
    const-string v0, "VivoPolicyHelper"

    const-string v1, "Ignoring HOMETAP, unlock from fingerprint."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-boolean v3, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerPrint:Z

    .line 239
    invoke-direct {p0}, Lcom/android/server/policy/VivoPolicyHelper;->resetDoubleTapState()V

    goto :goto_1

    .line 233
    :cond_3
    iget v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    goto :goto_2

    .line 243
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mIsHomeFromScreenOff:Z

    if-eqz v0, :cond_5

    .line 244
    const-string v0, "VivoPolicyHelper"

    const-string v1, "Ignoring HOMETAP, launch home from screen timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iput-boolean v3, p0, Lcom/android/server/policy/VivoPolicyHelper;->mIsHomeFromScreenOff:Z

    goto :goto_1

    .line 249
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/VivoPolicyHelper;->resetDoubleTapState()V

    .line 250
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-interface {v0, p1, v3}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->doCustomKeyHandler(II)V

    goto :goto_1
.end method

.method private isFingerAuthenticate()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isAuthenticate()I

    move-result v0

    return v0
.end method

.method private preloadRecentApps()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method private registerQuickLaunchObserver()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 313
    iget-object v4, p0, Lcom/android/server/policy/VivoPolicyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 315
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "fingerprint_quick_launch"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->mQuickLaunchOn:Z

    .line 317
    const-string v2, "VivoPolicyHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerQuickLaunchObserver ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/VivoPolicyHelper;->mQuickLaunchOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v2, "fingerprint_quick_launch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/policy/VivoPolicyHelper$QuickLaunchObserver;

    iget-object v5, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/VivoPolicyHelper$QuickLaunchObserver;-><init>(Lcom/android/server/policy/VivoPolicyHelper;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 315
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1
.end method

.method private resetDoubleTapState()V
    .locals 2

    .prologue
    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z

    .line 305
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method

.method private startAppService()V
    .locals 4

    .prologue
    .line 294
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.vivo.quickpay"

    const-string v3, "com.vivo.quickpay.fingerkey.QuickPayService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v0, "cmp":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v1, "service":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 297
    iget-object v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 298
    return-void
.end method


# virtual methods
.method public interceptHomeKeyForVivo(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;IZ)I
    .locals 24
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I
    .param p4, "keyguardOn"    # Z

    .prologue
    .line 339
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->sDebugOriginal:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 340
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Debug original here."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v19, -0x64

    .line 590
    :goto_0
    return v19

    .line 344
    :cond_0
    const/high16 v19, 0x20000000

    and-int v19, v19, p3

    if-eqz v19, :cond_2

    const/4 v10, 0x1

    .line 345
    .local v10, "interactive":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 346
    .local v12, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v14

    .line 347
    .local v14, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v13

    .line 348
    .local v13, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 349
    .local v7, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v19

    if-nez v19, :cond_3

    const/4 v6, 0x1

    .line 350
    .local v6, "down":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 351
    .local v5, "canceled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v11

    .line 353
    .local v11, "isLongPress":Z
    sparse-switch v12, :sswitch_data_0

    .line 590
    :cond_1
    :goto_3
    const/16 v19, -0x1

    goto :goto_0

    .line 344
    .end local v5    # "canceled":Z
    .end local v6    # "down":Z
    .end local v7    # "flags":I
    .end local v10    # "interactive":Z
    .end local v11    # "isLongPress":Z
    .end local v12    # "keyCode":I
    .end local v13    # "metaState":I
    .end local v14    # "repeatCount":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 349
    .restart local v7    # "flags":I
    .restart local v10    # "interactive":Z
    .restart local v12    # "keyCode":I
    .restart local v13    # "metaState":I
    .restart local v14    # "repeatCount":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 356
    .restart local v5    # "canceled":Z
    .restart local v6    # "down":Z
    .restart local v11    # "isLongPress":Z
    :sswitch_0
    const/16 v19, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/VivoPolicyHelper;->isFingerAuthenticate()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 357
    const-string v19, "VivoPolicyHelper"

    const-string v20, "physical homekey disabled"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/16 v19, -0x1

    goto :goto_0

    .line 361
    :cond_4
    if-eqz v6, :cond_5

    if-eqz v6, :cond_6

    if-nez v14, :cond_6

    .line 362
    :cond_5
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->isSupportLongPress()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerLongPressRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    :cond_6
    if-eqz v6, :cond_7

    if-nez v14, :cond_7

    .line 368
    const-string v19, "VivoPolicyHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "state home reset here, homekey down is true ,keyguardOn = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ,interactive = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    .line 371
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/VivoPolicyHelper;->mIsHomeFromScreenOff:Z

    .line 373
    and-int/lit8 v19, v7, 0x40

    if-nez v19, :cond_8

    .line 374
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/VivoPolicyHelper;->mIsFingerFeedback:Z

    .line 379
    :goto_4
    if-nez v10, :cond_7

    if-nez p4, :cond_7

    .line 380
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/VivoPolicyHelper;->mIsHomeFromScreenOff:Z

    .line 384
    :cond_7
    if-nez v6, :cond_13

    .line 386
    if-eqz v5, :cond_9

    .line 387
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Ignoring HOME; event canceled."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 376
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/VivoPolicyHelper;->mIsFingerFeedback:Z

    goto :goto_4

    .line 391
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, -0x2

    and-int/lit8 v19, v19, -0x3

    if-eqz v19, :cond_a

    .line 392
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Ignoring HOME_UP, event was handled."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 396
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/VivoPolicyHelper;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v15

    .line 397
    .local v15, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 398
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 402
    :cond_b
    if-eqz p1, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 403
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_5
    if-eqz v4, :cond_f

    .line 404
    sget-object v19, Lcom/android/server/policy/VivoPolicyHelper;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .line 405
    .local v17, "typeCount":I
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v16, v0

    .line 406
    .local v16, "type":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    move/from16 v0, v17

    if-ge v9, v0, :cond_e

    .line 407
    sget-object v19, Lcom/android/server/policy/VivoPolicyHelper;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v19, v19, v9

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 408
    const-string v19, "VivoPolicyHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Do nothing, dropping home key event, win: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 402
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "i":I
    .end local v16    # "type":I
    .end local v17    # "typeCount":I
    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    .line 406
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v9    # "i":I
    .restart local v16    # "type":I
    .restart local v17    # "typeCount":I
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 412
    :cond_e
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v19, v0

    sget v20, Lcom/android/server/policy/VivoPolicyConstant;->PRIVATE_FLAG_HOMEKEY_DISPATCHED:I

    and-int v19, v19, v20

    if-eqz v19, :cond_f

    .line 413
    const-string v19, "VivoPolicyHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Dispatching home key to app window:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 418
    .end local v9    # "i":I
    .end local v16    # "type":I
    .end local v17    # "typeCount":I
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    const/16 v18, 0x1

    .line 419
    .local v18, "virtualKey":Z
    :goto_7
    if-eqz v18, :cond_10

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-interface/range {v19 .. v22}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    .line 423
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mQuickLaunchOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mDoubleTapOnHomeBehavior:I

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    sget v21, Lcom/android/server/policy/VivoPolicyHelper;->HOME_DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Ignoring HOME; a double-tap is possible."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 418
    .end local v18    # "virtualKey":Z
    :cond_11
    const/16 v18, 0x0

    goto :goto_7

    .line 431
    .restart local v18    # "virtualKey":Z
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/policy/VivoPolicyHelper;->handleShortPressOnHome(I)V

    .line 432
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 437
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v18    # "virtualKey":Z
    :cond_13
    if-eqz p1, :cond_15

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 438
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_8
    if-eqz v4, :cond_1a

    .line 439
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v16, v0

    .line 440
    .restart local v16    # "type":I
    const/16 v19, 0x7ed

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    const/16 v19, 0x7d9

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 444
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z

    move/from16 v19, v0

    if-nez v19, :cond_16

    .line 445
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Is keyguard, so give it the key."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 437
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "type":I
    :cond_15
    const/4 v4, 0x0

    goto :goto_8

    .line 448
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v16    # "type":I
    :cond_16
    const-string v19, "VivoPolicyHelper"

    const-string v20, "A double tap on keyguard."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_17
    sget-object v19, Lcom/android/server/policy/VivoPolicyHelper;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .line 452
    .restart local v17    # "typeCount":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    move/from16 v0, v17

    if-ge v9, v0, :cond_19

    .line 453
    sget-object v19, Lcom/android/server/policy/VivoPolicyHelper;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v19, v19, v9

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 454
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Don\'t do anything, but also don\'t pass it to the app."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 452
    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 458
    :cond_19
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v19, v0

    sget v20, Lcom/android/server/policy/VivoPolicyConstant;->PRIVATE_FLAG_HOMEKEY_DISPATCHED:I

    and-int v19, v19, v20

    if-eqz v19, :cond_1a

    .line 459
    const-string v19, "VivoPolicyHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Dispatching home key to app window:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 465
    .end local v9    # "i":I
    .end local v16    # "type":I
    .end local v17    # "typeCount":I
    :cond_1a
    if-nez v14, :cond_1c

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 467
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z

    .line 468
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/VivoPolicyHelper;->handleDoubleTapOnHome()V

    goto/16 :goto_3

    .line 469
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mLongPressOnHomeBehavior:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/VivoPolicyHelper;->preloadRecentApps()V

    goto/16 :goto_3

    .line 472
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 473
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/policy/VivoPolicyHelper;->handleLongPressOnHome(I)V

    goto/16 :goto_3

    .line 482
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/VivoPolicyHelper;->isFingerAuthenticate()I

    move-result v8

    .line 483
    .local v8, "fpValue":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v0, v8, :cond_1d

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v0, v8, :cond_1e

    .line 484
    :cond_1d
    const-string v19, "VivoPolicyHelper"

    const-string v20, "fingerprint home key disabled"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 489
    :cond_1e
    if-eqz v6, :cond_1f

    if-nez v14, :cond_1f

    .line 490
    const-string v19, "VivoPolicyHelper"

    const-string v20, "state finger reset here."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    .line 492
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/VivoPolicyHelper;->sFingerDownTime:J

    .line 493
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/VivoPolicyHelper;->mIsFingerFeedback:Z

    .line 494
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/VivoPolicyHelper;->mIsHomeFromScreenOff:Z

    .line 497
    :cond_1f
    if-eqz v6, :cond_20

    if-eqz v6, :cond_21

    if-nez v14, :cond_21

    .line 498
    :cond_20
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->isSupportLongPress()Z

    move-result v19

    if-eqz v19, :cond_21

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerLongPressRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    :cond_21
    if-nez v6, :cond_2a

    .line 504
    if-eqz v5, :cond_22

    .line 505
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Ignoring FINGER; event canceled."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 509
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mProcState:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, -0x2

    if-eqz v19, :cond_23

    .line 510
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Ignoring FINGER_UP, event was handled."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 514
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/VivoPolicyHelper;->checkFingerTimeInterval()Z

    move-result v19

    if-nez v19, :cond_24

    .line 515
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Ignoring FINGER_UP, event was overtime."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 519
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/VivoPolicyHelper;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v15

    .line 520
    .restart local v15    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v15, :cond_25

    invoke-virtual {v15}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_25

    .line 521
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Ignoring FINGER; there\'s a ringing incoming call."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 526
    :cond_25
    if-eqz p1, :cond_26

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 527
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_a
    if-eqz v4, :cond_29

    .line 528
    sget-object v19, Lcom/android/server/policy/VivoPolicyHelper;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .line 529
    .restart local v17    # "typeCount":I
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v16, v0

    .line 530
    .restart local v16    # "type":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_b
    move/from16 v0, v17

    if-ge v9, v0, :cond_28

    .line 531
    sget-object v19, Lcom/android/server/policy/VivoPolicyHelper;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v19, v19, v9

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_27

    .line 532
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Do nothing, dropping home key event."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 526
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "i":I
    .end local v16    # "type":I
    .end local v17    # "typeCount":I
    :cond_26
    const/4 v4, 0x0

    goto :goto_a

    .line 530
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v9    # "i":I
    .restart local v16    # "type":I
    .restart local v17    # "typeCount":I
    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 536
    :cond_28
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v19, v0

    sget v20, Lcom/android/server/policy/VivoPolicyConstant;->PRIVATE_FLAG_HOMEKEY_DISPATCHED:I

    and-int v19, v19, v20

    if-eqz v19, :cond_29

    .line 537
    const-string v19, "VivoPolicyHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Dispatching home key to app window:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 542
    .end local v9    # "i":I
    .end local v16    # "type":I
    .end local v17    # "typeCount":I
    :cond_29
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/policy/VivoPolicyHelper;->handleShortPressOnHome(I)V

    .line 543
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 548
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2a
    if-eqz p1, :cond_2c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 549
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_c
    if-eqz v4, :cond_30

    .line 550
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v16, v0

    .line 551
    .restart local v16    # "type":I
    const/16 v19, 0x7ed

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_2b

    const/16 v19, 0x7d9

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_2b

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_2d

    .line 555
    :cond_2b
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Is keyguard, so give it the key."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 548
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "type":I
    :cond_2c
    const/4 v4, 0x0

    goto :goto_c

    .line 559
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v16    # "type":I
    :cond_2d
    sget-object v19, Lcom/android/server/policy/VivoPolicyHelper;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .line 560
    .restart local v17    # "typeCount":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_d
    move/from16 v0, v17

    if-ge v9, v0, :cond_2f

    .line 561
    sget-object v19, Lcom/android/server/policy/VivoPolicyHelper;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v19, v19, v9

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_2e

    .line 562
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Don\'t do anything, but also don\'t pass it to the app."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 560
    :cond_2e
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 567
    :cond_2f
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v19, v0

    sget v20, Lcom/android/server/policy/VivoPolicyConstant;->PRIVATE_FLAG_HOMEKEY_DISPATCHED:I

    and-int v19, v19, v20

    if-eqz v19, :cond_30

    .line 568
    const-string v19, "VivoPolicyHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Dispatching home key to app window:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 574
    .end local v9    # "i":I
    .end local v16    # "type":I
    .end local v17    # "typeCount":I
    :cond_30
    if-nez v14, :cond_31

    .line 575
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mLongPressOnHomeBehavior:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/VivoPolicyHelper;->preloadRecentApps()V

    goto/16 :goto_3

    .line 578
    :cond_31
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 579
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->isSupportLongPress()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 580
    const-string v19, "VivoPolicyHelper"

    const-string v20, "Delay fingerLongPress."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerLongPressRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerLongPressRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    sget v21, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_LONGPRESS_DELAY:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x131 -> :sswitch_1
    .end sparse-switch
.end method

.method public isFingerFeedback()Z
    .locals 3

    .prologue
    .line 201
    const-string v0, "VivoPolicyHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFingerFeedback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/VivoPolicyHelper;->mIsFingerFeedback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mIsFingerFeedback:Z

    return v0
.end method

.method public reportFingerPrint()V
    .locals 4

    .prologue
    .line 327
    const-string v0, "VivoPolicyHelper"

    const-string v1, "reportFingerPrint."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mFingerPrint:Z

    .line 329
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/VivoPolicyHelper$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/VivoPolicyHelper$5;-><init>(Lcom/android/server/policy/VivoPolicyHelper;)V

    sget v2, Lcom/android/server/policy/VivoPolicyHelper;->FINGER_PRINT_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    return-void
.end method
