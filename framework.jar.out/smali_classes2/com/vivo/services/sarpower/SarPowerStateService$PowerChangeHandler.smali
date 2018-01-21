.class final Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
.super Landroid/os/Handler;
.source "SarPowerStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/sarpower/SarPowerStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/sarpower/SarPowerStateService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/sarpower/SarPowerStateService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 134
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 156
    const-string v1, "SarPowerStateServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerChangeHandler default, the mProximityState is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mProximityState:I
    invoke-static {v3}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$000(Lcom/vivo/services/sarpower/SarPowerStateService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    const/4 v0, 0x0

    .line 138
    .local v0, "powerState":B
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mSarPowerRfDetectState:I
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$200(Lcom/vivo/services/sarpower/SarPowerStateService;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 139
    const/4 v0, 0x0

    .line 150
    :goto_1
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mLastSarPowerState:B
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$500(Lcom/vivo/services/sarpower/SarPowerStateService;)B

    move-result v1

    if-eq v1, v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # setter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mLastSarPowerState:B
    invoke-static {v1, v0}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$502(Lcom/vivo/services/sarpower/SarPowerStateService;B)B

    .line 152
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # invokes: Lcom/vivo/services/sarpower/SarPowerStateService;->setQcRiSarPowerState(B)V
    invoke-static {v1, v0}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$600(Lcom/vivo/services/sarpower/SarPowerStateService;B)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mProximityState:I
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$000(Lcom/vivo/services/sarpower/SarPowerStateService;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenState:I
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$300(Lcom/vivo/services/sarpower/SarPowerStateService;)I

    move-result v1

    if-nez v1, :cond_2

    .line 142
    const/4 v0, 0x1

    goto :goto_1

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mProximityState:I
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$000(Lcom/vivo/services/sarpower/SarPowerStateService;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mCardState:I
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$400(Lcom/vivo/services/sarpower/SarPowerStateService;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 144
    const/4 v0, 0x1

    goto :goto_1

    .line 146
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
