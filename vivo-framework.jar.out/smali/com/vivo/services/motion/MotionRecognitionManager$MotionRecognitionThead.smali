.class Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;
.super Ljava/lang/Thread;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionRecognitionThead"
.end annotation


# instance fields
.field mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/vivo/services/motion/MotionRecognitionManager;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/MotionRecognitionManager;)V
    .locals 1

    .prologue
    .line 204
    iput-object p1, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;->this$0:Lcom/vivo/services/motion/MotionRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/MotionRecognitionManager;Lcom/vivo/services/motion/MotionRecognitionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/MotionRecognitionManager;
    .param p2, "x1"    # Lcom/vivo/services/motion/MotionRecognitionManager$1;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;-><init>(Lcom/vivo/services/motion/MotionRecognitionManager;)V

    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    .line 226
    :cond_0
    monitor-enter p0

    .line 228
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 232
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    goto :goto_1

    .line 238
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;->mLooper:Landroid/os/Looper;

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 211
    monitor-enter p0

    .line 213
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;->mLooper:Landroid/os/Looper;

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 215
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
