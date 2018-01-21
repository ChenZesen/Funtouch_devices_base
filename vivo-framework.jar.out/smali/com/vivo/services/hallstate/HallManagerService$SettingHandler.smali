.class final Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;
.super Landroid/os/Handler;
.source "HallManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/hallstate/HallManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/hallstate/HallManagerService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/hallstate/HallManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 119
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 123
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/vivo/services/hallstate/HallEvent;

    .line 126
    .local v0, "event":Lcom/vivo/services/hallstate/HallEvent;
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->sendHallStateBroadcast(Lcom/vivo/services/hallstate/HallEvent;)V
    invoke-static {v1, v0}, Lcom/vivo/services/hallstate/HallManagerService;->access$300(Lcom/vivo/services/hallstate/HallManagerService;Lcom/vivo/services/hallstate/HallEvent;)V

    .line 130
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->updateSettingHallState(Lcom/vivo/services/hallstate/HallEvent;)V
    invoke-static {v1, v0}, Lcom/vivo/services/hallstate/HallManagerService;->access$400(Lcom/vivo/services/hallstate/HallManagerService;Lcom/vivo/services/hallstate/HallEvent;)V

    goto :goto_0

    .line 132
    :cond_0
    const-string v1, "HallManagerService"

    const-string v2, "SettingHandler event is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
