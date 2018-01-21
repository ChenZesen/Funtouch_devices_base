.class Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;
.super Landroid/os/UEventObserver;
.source "SarPowerStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/sarpower/SarPowerStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SarPowerObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SarPowerObserver"


# instance fields
.field final synthetic this$0:Lcom/vivo/services/sarpower/SarPowerStateService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V
    .locals 3

    .prologue
    .line 489
    iput-object p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 490
    # invokes: Lcom/vivo/services/sarpower/SarPowerStateService;->nativeInitSarPowerState()I
    invoke-static {}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$1300()I

    move-result v0

    # setter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerRfDetectState:I
    invoke-static {p1, v0}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$202(Lcom/vivo/services/sarpower/SarPowerStateService;I)I

    .line 491
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vivo/services/sarpower/SarPowerStateService;->sarPowerSwitchEnable(I)I

    .line 492
    const-string v0, "SarPowerObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mSarPowerRfDetectState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerRfDetectState:I
    invoke-static {p1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$200(Lcom/vivo/services/sarpower/SarPowerStateService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v0, "DEVPATH=/devices/virtual/switch/sar-power"

    invoke-virtual {p0, v0}, Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;->startObserving(Ljava/lang/String;)V

    .line 495
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerRfDetectState:I
    invoke-static {v1, v2}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$202(Lcom/vivo/services/sarpower/SarPowerStateService;I)I

    .line 503
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->removeMessages(I)V

    .line 504
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v2}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    const-string v1, "SarPowerObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUEvent mSarPowerRfDetectState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService$SarPowerObserver;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerRfDetectState:I
    invoke-static {v3}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$200(Lcom/vivo/services/sarpower/SarPowerStateService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "SarPowerObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUEvent e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
