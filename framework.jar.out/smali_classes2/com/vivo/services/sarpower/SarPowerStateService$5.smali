.class Lcom/vivo/services/sarpower/SarPowerStateService$5;
.super Landroid/content/BroadcastReceiver;
.source "SarPowerStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/sarpower/SarPowerStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/sarpower/SarPowerStateService;


# direct methods
.method constructor <init>(Lcom/vivo/services/sarpower/SarPowerStateService;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$5;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 268
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "action":Ljava/lang/String;
    const-string v4, "SarPowerStateServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v4, "phone"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 272
    .local v3, "phoneId":I
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "iccStateExtra":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService$5;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # invokes: Lcom/vivo/services/sarpower/SarPowerStateService;->getSimIccid(I)Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$900(Lcom/vivo/services/sarpower/SarPowerStateService;I)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "iccid":Ljava/lang/String;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    const-string v4, "IMSI"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    iget-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService$5;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # invokes: Lcom/vivo/services/sarpower/SarPowerStateService;->isWhiteCard(I)Z
    invoke-static {v4, v3}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$1000(Lcom/vivo/services/sarpower/SarPowerStateService;I)Z

    move-result v4

    if-eqz v4, :cond_2

    # invokes: Lcom/vivo/services/sarpower/SarPowerStateService;->isVSim(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$1100(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 279
    iget-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService$5;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    const/4 v5, 0x1

    # setter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mCardState:I
    invoke-static {v4, v5}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$402(Lcom/vivo/services/sarpower/SarPowerStateService;I)I

    .line 289
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService$5;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v4}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->removeMessages(I)V

    .line 290
    iget-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService$5;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v4}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/sarpower/SarPowerStateService$5;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v5}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 293
    :cond_1
    return-void

    .line 281
    :cond_2
    iget-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService$5;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # setter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mCardState:I
    invoke-static {v4, v7}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$402(Lcom/vivo/services/sarpower/SarPowerStateService;I)I

    goto :goto_0

    .line 283
    :cond_3
    iget-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService$5;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mtelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$1200(Lcom/vivo/services/sarpower/SarPowerStateService;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 284
    iget-object v4, p0, Lcom/vivo/services/sarpower/SarPowerStateService$5;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # setter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mCardState:I
    invoke-static {v4, v7}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$402(Lcom/vivo/services/sarpower/SarPowerStateService;I)I

    .line 285
    const-string v4, "SarPowerStateServices"

    const-string v5, "There is no SIM card"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
