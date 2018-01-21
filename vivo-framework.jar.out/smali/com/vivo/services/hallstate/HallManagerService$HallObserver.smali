.class Lcom/vivo/services/hallstate/HallManagerService$HallObserver;
.super Landroid/os/UEventObserver;
.source "HallManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/hallstate/HallManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HallObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HallObserver"


# instance fields
.field private mHallState:I

.field private mHallTimeStamp:J

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/vivo/services/hallstate/HallManagerService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/hallstate/HallManagerService;)V
    .locals 2

    .prologue
    .line 529
    iput-object p1, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 525
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallTimeStamp:J

    .line 526
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mLock:Ljava/lang/Object;

    .line 527
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallState:I

    .line 530
    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/vivo/services/hallstate/HallManagerService;->access$1300(Lcom/vivo/services/hallstate/HallManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->isEnabled(Landroid/content/ContentResolver;)Z
    invoke-static {p1, v0}, Lcom/vivo/services/hallstate/HallManagerService;->access$1400(Lcom/vivo/services/hallstate/HallManagerService;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vivo/services/hallstate/HallManagerService;->hallSwitchEnable(I)I

    .line 536
    :goto_0
    const-string v0, "DEVPATH=/devices/virtual/switch/hall"

    invoke-virtual {p0, v0}, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->startObserving(Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->initHallState()V

    .line 538
    return-void

    .line 533
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vivo/services/hallstate/HallManagerService;->hallSwitchEnable(I)I

    goto :goto_0
.end method

.method private initHallState()V
    .locals 5

    .prologue
    .line 541
    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->nativeInitHallState()I
    invoke-static {}, Lcom/vivo/services/hallstate/HallManagerService;->access$1500()I

    move-result v0

    iput v0, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallState:I

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallTimeStamp:J

    .line 543
    iget v0, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallState:I

    invoke-direct {p0, v0}, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->isValidState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mLastHallEvent:Lcom/vivo/services/hallstate/HallEvent;
    invoke-static {}, Lcom/vivo/services/hallstate/HallManagerService;->access$1600()Lcom/vivo/services/hallstate/HallEvent;

    move-result-object v0

    new-instance v1, Lcom/vivo/services/hallstate/HallEvent;

    iget-wide v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallTimeStamp:J

    iget v4, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallState:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vivo/services/hallstate/HallEvent;-><init>(JI)V

    invoke-virtual {v0, v1}, Lcom/vivo/services/hallstate/HallEvent;->copyFrom(Lcom/vivo/services/hallstate/HallEvent;)V

    .line 546
    :cond_0
    const-string v0, "HallObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initHallState mHallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void
.end method

.method private isValidState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 550
    packed-switch p1, :pswitch_data_0

    .line 555
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 553
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 562
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallTimeStamp:J

    .line 563
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallState:I

    .line 564
    iget v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallState:I

    invoke-direct {p0, v2}, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->isValidState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    const-string v2, "HallObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUEvent unkown:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :goto_0
    return-void

    .line 568
    :cond_0
    new-instance v1, Lcom/vivo/services/hallstate/HallEvent;

    iget-wide v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallTimeStamp:J

    iget v4, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallState:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vivo/services/hallstate/HallEvent;-><init>(JI)V

    .line 569
    .local v1, "hallEvent":Lcom/vivo/services/hallstate/HallEvent;
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->clearEvent()V
    invoke-static {v2}, Lcom/vivo/services/hallstate/HallManagerService;->access$1700(Lcom/vivo/services/hallstate/HallManagerService;)V

    .line 570
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->pushEvent(Lcom/vivo/services/hallstate/HallEvent;)V
    invoke-static {v2, v1}, Lcom/vivo/services/hallstate/HallManagerService;->access$1800(Lcom/vivo/services/hallstate/HallManagerService;Lcom/vivo/services/hallstate/HallEvent;)V

    .line 571
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mEventHandler:Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;
    invoke-static {v2}, Lcom/vivo/services/hallstate/HallManagerService;->access$100(Lcom/vivo/services/hallstate/HallManagerService;)Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->removeMessages(I)V

    .line 572
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mEventHandler:Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;
    invoke-static {v2}, Lcom/vivo/services/hallstate/HallManagerService;->access$100(Lcom/vivo/services/hallstate/HallManagerService;)Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mEventHandler:Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;
    invoke-static {v3}, Lcom/vivo/services/hallstate/HallManagerService;->access$100(Lcom/vivo/services/hallstate/HallManagerService;)Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 573
    const-string v2, "HallObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUEvent mHallState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;->mHallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v1    # "hallEvent":Lcom/vivo/services/hallstate/HallEvent;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "HallObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUEvent e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
