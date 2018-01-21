.class public Lcom/android/internal/telephony/util/Alex;
.super Ljava/lang/Object;
.source "Alex.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vivo_phoneapp_Alex"

.field private static final MSG_RELEASE:I = 0x1

.field private static instance:Lcom/android/internal/telephony/util/Alex;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPm:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/util/Alex;->instance:Lcom/android/internal/telephony/util/Alex;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/android/internal/telephony/util/Alex$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/util/Alex$1;-><init>(Lcom/android/internal/telephony/util/Alex;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mHandler:Landroid/os/Handler;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mPm:Landroid/os/PowerManager;

    .line 31
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mPm:Landroid/os/PowerManager;

    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mPm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "vivo_phoneapp_Alex"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/util/Alex;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/util/Alex;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/internal/telephony/util/Alex;->releaseLock()V

    return-void
.end method

.method private declared-synchronized acquireLock()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/util/Alex;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/android/internal/telephony/util/Alex;->instance:Lcom/android/internal/telephony/util/Alex;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 37
    new-instance v0, Lcom/android/internal/telephony/util/Alex;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/util/Alex;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/util/Alex;->instance:Lcom/android/internal/telephony/util/Alex;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/util/Alex;->instance:Lcom/android/internal/telephony/util/Alex;

    return-object v0
.end method

.method private releaseLock()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public down(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    return-void
.end method

.method public high(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Lcom/android/internal/telephony/util/Alex;->acquireLock()V

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 49
    return-void
.end method
