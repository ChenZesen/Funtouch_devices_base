.class Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate$1;
.super Landroid/os/Handler;
.source "HallManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;-><init>(Lcom/vivo/services/hallstate/HallManagerService;Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

.field final synthetic val$this$0:Lcom/vivo/services/hallstate/HallManagerService;


# direct methods
.method constructor <init>(Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;Landroid/os/Looper;Lcom/vivo/services/hallstate/HallManagerService;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate$1;->this$1:Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

    iput-object p3, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate$1;->val$this$0:Lcom/vivo/services/hallstate/HallManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 480
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/vivo/services/hallstate/HallEvent;

    .line 482
    .local v1, "t":Lcom/vivo/services/hallstate/HallEvent;
    if-eqz v1, :cond_1

    .line 483
    :try_start_0
    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z
    invoke-static {}, Lcom/vivo/services/hallstate/HallManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    const-string v2, "HallManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage onHallStateChanged event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vivo/services/hallstate/HallEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate$1;->this$1:Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

    # getter for: Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mHallEventListener:Lcom/vivo/services/hallstate/IHallEventListener;
    invoke-static {v2}, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->access$900(Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;)Lcom/vivo/services/hallstate/IHallEventListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/vivo/services/hallstate/IHallEventListener;->onHallStateChanged(Lcom/vivo/services/hallstate/HallEvent;)V

    .line 493
    :goto_0
    return-void

    .line 488
    :cond_1
    const-string v2, "HallManagerService"

    const-string v3, "handleMessage onHallStateChanged event: null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HallManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call onHallStateChanged exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
