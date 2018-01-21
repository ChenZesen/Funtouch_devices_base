.class Lcom/vivo/services/motion/MoveService$MoveServiceHandler;
.super Landroid/os/Handler;
.source "MoveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MoveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/MoveService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/MoveService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vivo/services/motion/MoveService$MoveServiceHandler;->this$0:Lcom/vivo/services/motion/MoveService;

    .line 91
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    .line 98
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    const-string v2, "MoveService"

    const-string v3, "MSG_MOVE_DET_START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :pswitch_1
    const-string v2, "MoveService"

    const-string v3, "MSG_MOVE_DET_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :pswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 111
    .local v1, "smsg":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 112
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x13

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 113
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveServiceHandler;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/MoveService;->access$400(Lcom/vivo/services/motion/MoveService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveServiceHandler;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/MoveService;->access$400(Lcom/vivo/services/motion/MoveService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    const-string v2, "MoveService"

    const-string v3, "MSG_MOVE_DET_TRIGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveServiceHandler;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/MoveService;->access$500(Lcom/vivo/services/motion/MoveService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "MoveService"

    const-string v3, "TRIGER:MSG_MOVE_DET_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveServiceHandler;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/MoveService;->access$500(Lcom/vivo/services/motion/MoveService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveServiceHandler;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/MoveService;->access$500(Lcom/vivo/services/motion/MoveService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
