.class Lcom/vivo/services/hallstate/HallManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "HallManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/hallstate/HallManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/hallstate/HallManagerService;


# direct methods
.method constructor <init>(Lcom/vivo/services/hallstate/HallManagerService;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vivo/services/hallstate/HallManagerService$1;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z
    invoke-static {}, Lcom/vivo/services/hallstate/HallManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "HallManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    const-string v2, "com.android.service.hallobserver.invalid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService$1;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mEventHandler:Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;
    invoke-static {v2}, Lcom/vivo/services/hallstate/HallManagerService;->access$100(Lcom/vivo/services/hallstate/HallManagerService;)Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->removeMessages(I)V

    .line 91
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService$1;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mEventHandler:Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;
    invoke-static {v2}, Lcom/vivo/services/hallstate/HallManagerService;->access$100(Lcom/vivo/services/hallstate/HallManagerService;)Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 92
    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z
    invoke-static {}, Lcom/vivo/services/hallstate/HallManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string v2, "HallManagerService"

    const-string v3, "sendMessage MSG_HALL_STATE_INVALID"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService$1;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mEventHandler:Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;
    invoke-static {v2}, Lcom/vivo/services/hallstate/HallManagerService;->access$100(Lcom/vivo/services/hallstate/HallManagerService;)Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method
