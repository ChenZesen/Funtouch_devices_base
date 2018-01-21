.class public final Lcom/android/server/policy/key/VivoCameraKeyHandler;
.super Lcom/android/server/policy/AVivoInterceptKeyCallback;
.source "VivoCameraKeyHandler.java"

# interfaces
.implements Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;,
        Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;,
        Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;
    }
.end annotation


# static fields
.field public static final ACTION_START_CAMERA:Ljava/lang/String; = "android.media.action.VIVO_STILL_IMAGE_CAMERA"

.field public static final ACTION_START_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.VIVO_STILL_IMAGE_CAMERA_SECURE"

.field private static final BRIGHT_SCREEN_DELAY:J = 0xc8L

.field private static final ENABLE_SENSOR_CTRL:Z = false

.field public static final FINISH_HANDLED:I = -0x65

.field public static final FINISH_NOT_HANDLED:I = -0x66

.field public static final FORWARD:I = -0x64

.field public static final KEY_START_MODE:Ljava/lang/String; = "START_MODE"

.field private static final SPLASH_ANIMATOR_TIMEOUT:J = 0x1f4L

.field private static final SPLASH_DISMISS_DELAY:J = 0x3e8L

.field private static final TAG_CAMERA_KEY:Ljava/lang/String; = "CAMERA_KEY"

.field public static final VALUE_DOUBLE_CLICK:Ljava/lang/String; = "DOUBLE_CLICK"

.field public static final VALUE_LONG_PRESS:Ljava/lang/String; = "LONG_PRESS"

.field private static final WAKE_LOCK_TIMEOUT:J = 0x1388L


# instance fields
.field private mBrightWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMessageHandler:Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;

.field private mNeedDiscard:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximitySensorListener:Lcom/android/server/policy/VivoProximitySensorListener;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWMS:Landroid/view/IWindowManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/server/policy/AVivoInterceptKeyCallback;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mContext:Landroid/content/Context;

    .line 62
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWMS:Landroid/view/IWindowManager;

    .line 63
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 64
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 66
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 67
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    .line 68
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 69
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mMessageHandler:Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;

    .line 70
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mProximitySensorListener:Lcom/android/server/policy/VivoProximitySensorListener;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mNeedDiscard:Z

    .line 72
    iput-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 492
    new-instance v0, Lcom/android/server/policy/key/VivoCameraKeyHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler$4;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mContext:Landroid/content/Context;

    .line 77
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 78
    new-instance v0, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;Lcom/android/server/policy/key/VivoCameraKeyHandler$1;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mMessageHandler:Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoCameraKeyHandler;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->dismissSplashView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/key/VivoCameraKeyHandler;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoCameraKeyHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/key/VivoCameraKeyHandler;)Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoCameraKeyHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/key/VivoCameraKeyHandler;Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;)Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoCameraKeyHandler;
    .param p1, "x1"    # Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoCameraKeyHandler;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->acquireBrightLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/key/VivoCameraKeyHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoCameraKeyHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    return-void
.end method

.method private acquireBrightLock()V
    .locals 4

    .prologue
    .line 478
    const-string v0, "acquire mBrightWakeLock, timeout=5000"

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->initBrightWakeLock()V

    .line 480
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 481
    return-void
.end method

.method private disableSensorListener()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mProximitySensorListener:Lcom/android/server/policy/VivoProximitySensorListener;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mProximitySensorListener:Lcom/android/server/policy/VivoProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/server/policy/VivoProximitySensorListener;->disable()V

    .line 529
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mNeedDiscard:Z

    .line 530
    return-void
.end method

.method private dismissSplashView()V
    .locals 4

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 383
    .local v0, "alphAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 384
    new-instance v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler$2;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 422
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 382
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private enableSensorListener()V
    .locals 1

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->initSensorListener()V

    .line 519
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mProximitySensorListener:Lcom/android/server/policy/VivoProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/server/policy/VivoProximitySensorListener;->enable()V

    .line 520
    return-void
.end method

.method private getCameraSplashView(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)Landroid/view/View;
    .locals 2
    .param p1, "msgParam"    # Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;->setMessageParam(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mCameraSplashView:Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;

    return-object v0
.end method

.method private initBrightWakeLock()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "CAMERA_KEY"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 88
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method private initSensorListener()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mProximitySensorListener:Lcom/android/server/policy/VivoProximitySensorListener;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/server/policy/VivoProximitySensorListener;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mMessageHandler:Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;

    invoke-virtual {v2}, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/policy/VivoProximitySensorListener;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mProximitySensorListener:Lcom/android/server/policy/VivoProximitySensorListener;

    .line 98
    :cond_0
    return-void
.end method

.method private postBrightScreen()V
    .locals 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mMessageHandler:Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;

    new-instance v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler$3;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    return-void
.end method

.method private postDismissSplashView()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mMessageHandler:Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;

    new-instance v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler$1;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 374
    return-void
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 613
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private releaseBrightLock()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "release mBrightWakeLock"

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 490
    :cond_0
    return-void
.end method

.method private showSplashView(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V
    .locals 6
    .param p1, "msgParam"    # Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 336
    const-string v3, "showSplashView"

    invoke-direct {p0, v3}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    .line 338
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 341
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7df

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 342
    const v3, 0x80518

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 345
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 346
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 347
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 348
    const-string v3, "CameraSplashView"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 350
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 353
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 356
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->getCameraSplashView(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, "cameraSplashView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 358
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 361
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->postDismissSplashView()V

    .line 362
    return-void
.end method

.method private vibrate(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V
    .locals 6
    .param p1, "msgParam"    # Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    .prologue
    .line 442
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mView:Landroid/view/View;

    .line 445
    .local v2, "view":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_1

    .line 447
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v1

    .line 450
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performHapticFeedback: result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    .line 461
    .end local v1    # "result":Z
    :goto_1
    return-void

    .line 442
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 454
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 454
    nop

    :array_0
    .array-data 8
        0x1
        0x64
    .end array-data
.end method

.method private wakeUp()V
    .locals 3

    .prologue
    .line 430
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V

    .line 432
    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->getWMS()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method public getWMS()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWMS:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWMS:Landroid/view/IWindowManager;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWMS:Landroid/view/IWindowManager;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public isSuperPowerSaverMode()Z
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/android/server/policy/VivoPolicyUtil;->isSPSMode()Z

    move-result v0

    return v0
.end method

.method public newMessageParam()Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    invoke-direct {v0, p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V

    return-object v0
.end method

.method public onCheckDoubleClickEnabled(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public onCheckForward(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "isDrop":Z
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIsScreenOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIsKeyguardActive:Z

    if-nez v1, :cond_0

    .line 550
    const/4 v0, 0x1

    .line 553
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mNeedDiscard:Z

    if-eqz v1, :cond_1

    .line 555
    const/4 v0, 0x1

    .line 558
    :cond_1
    return v0
.end method

.method public onCheckNeedWakeLockWhenScreenOff(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 564
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDoubleClick(ILandroid/view/KeyEvent;)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 595
    new-instance v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    invoke-direct {v1, p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V

    .line 596
    .local v1, "msgParam":Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;
    iput-object p2, v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mKeyEvent:Landroid/view/KeyEvent;

    .line 597
    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIsKeyguardActive:Z

    iput-boolean v2, v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsKeyguardActive:Z

    .line 598
    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIsScreenOn:Z

    iput-boolean v2, v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsScreenOn:Z

    .line 599
    iput-boolean v3, v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsShowSplash:Z

    .line 600
    iput-boolean v4, v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mNeedWakeUp:Z

    .line 603
    const-string v2, "persist.vivo.camera.physic_key"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 604
    .local v0, "cameraPhysicKeySupported":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDoubleClick cameraPhysicKeySupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    .line 605
    if-ne v0, v4, :cond_0

    .line 606
    invoke-virtual {p0, v1}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->startCameraKeyDoubleClickAction(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V

    .line 609
    :cond_0
    return-void
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 576
    new-instance v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    invoke-direct {v1, p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V

    .line 577
    .local v1, "msgParam":Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;
    iput-object p2, v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mKeyEvent:Landroid/view/KeyEvent;

    .line 578
    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIsKeyguardActive:Z

    iput-boolean v2, v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsKeyguardActive:Z

    .line 579
    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIsScreenOn:Z

    iput-boolean v2, v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsScreenOn:Z

    .line 580
    iput-boolean v3, v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsShowSplash:Z

    .line 581
    iput-boolean v4, v1, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mNeedWakeUp:Z

    .line 584
    const-string v2, "persist.vivo.camera.physic_key"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 585
    .local v0, "cameraPhysicKeySupported":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyLongPress cameraPhysicKeySupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    .line 586
    if-ne v0, v4, :cond_0

    .line 587
    invoke-virtual {p0, v1}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->startCameraKeyLongPressAction(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V

    .line 590
    :cond_0
    return-void
.end method

.method public onProximityNegative()V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mNeedDiscard:Z

    .line 542
    return-void
.end method

.method public onProximityPositive()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mNeedDiscard:Z

    .line 536
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 105
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    :cond_0
    return-void
.end method

.method public startCamera(Ljava/lang/String;Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V
    .locals 7
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "msgParam"    # Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    .prologue
    .line 208
    iget-boolean v4, p2, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsScreenOn:Z

    .line 209
    .local v4, "isScreenOn":Z
    iget-boolean v2, p2, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsKeyguardActive:Z

    .line 210
    .local v2, "isKeyguardActive":Z
    const/4 v3, 0x0

    .line 213
    .local v3, "isKeyguardSecure":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->getWMS()Landroid/view/IWindowManager;

    move-result-object v5

    .line 214
    .local v5, "wms":Landroid/view/IWindowManager;
    if-eqz v5, :cond_0

    .line 216
    invoke-interface {v5}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 224
    .end local v5    # "wms":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x34200000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    if-eqz v4, :cond_1

    if-eqz v2, :cond_2

    .line 229
    :cond_1
    const/high16 v6, 0x10000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    :cond_2
    const-string v6, "START_MODE"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    if-nez v4, :cond_4

    .line 234
    :cond_3
    const-string v6, "android.media.action.VIVO_STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :goto_2
    return-void

    .line 219
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v6, "android.media.action.VIVO_STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 245
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public startCameraExt(Ljava/lang/String;Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "msgParam"    # Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    .prologue
    .line 193
    iget-boolean v0, p2, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mNeedWakeUp:Z

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->wakeUp()V

    .line 198
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->startCamera(Ljava/lang/String;Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V

    .line 200
    iget-boolean v0, p2, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsShowSplash:Z

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0, p2}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->showSplashView(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V

    .line 204
    :cond_1
    return-void
.end method

.method public startCameraKeyDoubleClickAction(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V
    .locals 1
    .param p1, "msgParam"    # Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->isSuperPowerSaverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "It\'s in super-power-saver mode, just discard it!"

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v0, "It\'s double click action. startCameraKeyDoubleClickAction"

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    .line 186
    const-string v0, "DOUBLE_CLICK"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->startCameraExt(Ljava/lang/String;Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V

    goto :goto_0
.end method

.method public startCameraKeyLongPressAction(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V
    .locals 1
    .param p1, "msgParam"    # Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->isSuperPowerSaverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "It\'s in super-power-saver mode, just discard it!"

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "It\'s long press action. startCameraKeyLongPressAction"

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->vibrate(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V

    .line 173
    const-string v0, "LONG_PRESS"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->startCameraExt(Ljava/lang/String;Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 115
    return-void
.end method
