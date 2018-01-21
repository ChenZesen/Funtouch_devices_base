.class Lcom/vivo/services/sarpower/SarPowerStateService$4;
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
    .line 242
    iput-object p1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$4;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SarPowerStateServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$4;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # setter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mScreenState:I
    invoke-static {v1, v4}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$302(Lcom/vivo/services/sarpower/SarPowerStateService;I)I

    .line 255
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$4;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->removeMessages(I)V

    .line 256
    iget-object v1, p0, Lcom/vivo/services/sarpower/SarPowerStateService$4;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v1}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/sarpower/SarPowerStateService$4;->this$0:Lcom/vivo/services/sarpower/SarPowerStateService;

    # getter for: Lcom/vivo/services/sarpower/SarPowerStateService;->mPowerChangeHandler:Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;
    invoke-static {v2}, Lcom/vivo/services/sarpower/SarPowerStateService;->access$100(Lcom/vivo/services/sarpower/SarPowerStateService;)Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/services/sarpower/SarPowerStateService$PowerChangeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    :cond_0
    return-void
.end method
