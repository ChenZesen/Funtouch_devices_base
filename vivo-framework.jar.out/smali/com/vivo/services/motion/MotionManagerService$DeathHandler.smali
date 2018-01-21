.class Lcom/vivo/services/motion/MotionManagerService$DeathHandler;
.super Ljava/lang/Object;
.source "MotionManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MotionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathHandler"
.end annotation


# instance fields
.field private mClientId:Ljava/lang/String;

.field final synthetic this$0:Lcom/vivo/services/motion/MotionManagerService;


# direct methods
.method constructor <init>(Lcom/vivo/services/motion/MotionManagerService;Ljava/lang/String;)V
    .locals 0
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vivo/services/motion/MotionManagerService$DeathHandler;->this$0:Lcom/vivo/services/motion/MotionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/vivo/services/motion/MotionManagerService$DeathHandler;->mClientId:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 90
    # getter for: Lcom/vivo/services/motion/MotionManagerService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/MotionManagerService;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_0
    const-string v0, "MotionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[binderDied] mClientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/MotionManagerService$DeathHandler;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/vivo/services/motion/MotionManagerService$DeathHandler;->this$0:Lcom/vivo/services/motion/MotionManagerService;

    iget-object v2, p0, Lcom/vivo/services/motion/MotionManagerService$DeathHandler;->mClientId:Ljava/lang/String;

    const/4 v3, 0x0

    # invokes: Lcom/vivo/services/motion/MotionManagerService;->removeClientStackEntry(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v3}, Lcom/vivo/services/motion/MotionManagerService;->access$200(Lcom/vivo/services/motion/MotionManagerService;Ljava/lang/String;Z)V

    .line 93
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
