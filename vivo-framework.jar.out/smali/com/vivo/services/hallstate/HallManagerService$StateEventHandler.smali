.class final Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;
.super Landroid/os/Handler;
.source "HallManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/hallstate/HallManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/hallstate/HallManagerService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/hallstate/HallManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    .line 144
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 172
    const-string v1, "HallManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage unkown msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->hasPendingEvent()Z
    invoke-static {v1}, Lcom/vivo/services/hallstate/HallManagerService;->access$500(Lcom/vivo/services/hallstate/HallManagerService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    const-string v1, "HallManagerService"

    const-string v2, "handleMessage MSG_HALL_STATE_CHANGED bug no pending event."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->hasPendingEvent()Z
    invoke-static {v1}, Lcom/vivo/services/hallstate/HallManagerService;->access$500(Lcom/vivo/services/hallstate/HallManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->popEvent()Lcom/vivo/services/hallstate/HallEvent;
    invoke-static {v1}, Lcom/vivo/services/hallstate/HallManagerService;->access$600(Lcom/vivo/services/hallstate/HallManagerService;)Lcom/vivo/services/hallstate/HallEvent;

    move-result-object v0

    .line 157
    .local v0, "event":Lcom/vivo/services/hallstate/HallEvent;
    if-eqz v0, :cond_2

    .line 159
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->dispatchEvent(Lcom/vivo/services/hallstate/HallEvent;)V
    invoke-static {v1, v0}, Lcom/vivo/services/hallstate/HallManagerService;->access$700(Lcom/vivo/services/hallstate/HallManagerService;Lcom/vivo/services/hallstate/HallEvent;)V

    goto :goto_1

    .line 161
    :cond_2
    const-string v1, "HallManagerService"

    const-string v2, "handleMessage got null event."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    .end local v0    # "event":Lcom/vivo/services/hallstate/HallEvent;
    :pswitch_1
    const-string v1, "HallManagerService"

    const-string v2, "handleMessage got MSG_HALL_STATE_INVALID"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->handleHallInvalid()V
    invoke-static {v1}, Lcom/vivo/services/hallstate/HallManagerService;->access$800(Lcom/vivo/services/hallstate/HallManagerService;)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
