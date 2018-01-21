.class public final Lcom/vivo/services/motion/WaveDetectService;
.super Ljava/lang/Object;
.source "WaveDetectService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/WaveDetectService$WaveDetectServiceHandler;
    }
.end annotation


# static fields
.field private static final MSG_WAVE_DET_TEST:I = 0x1

.field private static singleWaveDetectService:Lcom/vivo/services/motion/WaveDetectService;


# instance fields
.field private isWaveDetectServiceWorking:Z

.field private mCallBackHandler:Landroid/os/Handler;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/vivo/services/motion/WaveDetectService;

    invoke-direct {v0}, Lcom/vivo/services/motion/WaveDetectService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/WaveDetectService;->singleWaveDetectService:Lcom/vivo/services/motion/WaveDetectService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/motion/WaveDetectService;->isWaveDetectServiceWorking:Z

    .line 12
    iput-object v1, p0, Lcom/vivo/services/motion/WaveDetectService;->mCallBackHandler:Landroid/os/Handler;

    .line 13
    iput-object v1, p0, Lcom/vivo/services/motion/WaveDetectService;->mServiceHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/WaveDetectService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/WaveDetectService;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vivo/services/motion/WaveDetectService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/vivo/services/motion/WaveDetectService;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/vivo/services/motion/WaveDetectService;->singleWaveDetectService:Lcom/vivo/services/motion/WaveDetectService;

    return-object v0
.end method


# virtual methods
.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    .line 49
    iget-boolean v1, p0, Lcom/vivo/services/motion/WaveDetectService;->isWaveDetectServiceWorking:Z

    if-nez v1, :cond_0

    .line 51
    iput-boolean v3, p0, Lcom/vivo/services/motion/WaveDetectService;->isWaveDetectServiceWorking:Z

    .line 52
    iput-object p2, p0, Lcom/vivo/services/motion/WaveDetectService;->mCallBackHandler:Landroid/os/Handler;

    .line 53
    new-instance v1, Lcom/vivo/services/motion/WaveDetectService$WaveDetectServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vivo/services/motion/WaveDetectService$WaveDetectServiceHandler;-><init>(Lcom/vivo/services/motion/WaveDetectService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/motion/WaveDetectService;->mServiceHandler:Landroid/os/Handler;

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 56
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 57
    iget-object v1, p0, Lcom/vivo/services/motion/WaveDetectService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    return v3
.end method

.method public stopMotionRecognitionService()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    iget-boolean v0, p0, Lcom/vivo/services/motion/WaveDetectService;->isWaveDetectServiceWorking:Z

    if-ne v0, v1, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/motion/WaveDetectService;->isWaveDetectServiceWorking:Z

    .line 66
    iput-object v2, p0, Lcom/vivo/services/motion/WaveDetectService;->mCallBackHandler:Landroid/os/Handler;

    .line 67
    iput-object v2, p0, Lcom/vivo/services/motion/WaveDetectService;->mServiceHandler:Landroid/os/Handler;

    .line 69
    :cond_0
    return v1
.end method
