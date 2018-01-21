.class Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
.super Ljava/lang/Object;
.source "HallManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/hallstate/HallManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HallMonitorDelegate"
.end annotation


# instance fields
.field private final mHallEventListener:Lcom/vivo/services/hallstate/IHallEventListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/vivo/services/hallstate/HallManagerService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/hallstate/HallManagerService;Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "listener"    # Lcom/vivo/services/hallstate/IHallEventListener;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object p2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mToken:Landroid/os/IBinder;

    .line 473
    iput-object p3, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mHallEventListener:Lcom/vivo/services/hallstate/IHallEventListener;

    .line 474
    iput-object p4, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mTag:Ljava/lang/String;

    .line 475
    iput-object p5, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mPackageName:Ljava/lang/String;

    .line 476
    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/vivo/services/hallstate/HallManagerService;->access$1000(Lcom/vivo/services/hallstate/HallManagerService;)Landroid/os/Looper;

    move-result-object v0

    .line 477
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate$1;-><init>(Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;Landroid/os/Looper;Lcom/vivo/services/hallstate/HallManagerService;)V

    iput-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mHandler:Landroid/os/Handler;

    .line 495
    return-void
.end method

.method static synthetic access$900(Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;)Lcom/vivo/services/hallstate/IHallEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mHallEventListener:Lcom/vivo/services/hallstate/IHallEventListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->handleHallMonitorDeath(Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;)V
    invoke-static {v0, p0}, Lcom/vivo/services/hallstate/HallManagerService;->access$1200(Lcom/vivo/services/hallstate/HallManagerService;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;)V

    .line 519
    return-void
.end method

.method public onStateChangedLocked(Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 497
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 498
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 499
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 501
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 502
    return-void
.end method

.method public onStateChangedLocked(Lcom/vivo/services/hallstate/HallEvent;J)V
    .locals 2
    .param p1, "event"    # Lcom/vivo/services/hallstate/HallEvent;
    .param p2, "delay"    # J

    .prologue
    .line 504
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 505
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 506
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 507
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 508
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 509
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;
    invoke-static {}, Lcom/vivo/services/hallstate/HallManagerService;->access$1100()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTag:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPackageName:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_null"

    goto :goto_0

    :cond_1
    const-string v0, "not_null"

    goto :goto_1
.end method
