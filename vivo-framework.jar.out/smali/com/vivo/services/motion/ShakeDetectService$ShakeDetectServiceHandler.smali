.class Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;
.super Landroid/os/Handler;
.source "ShakeDetectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ShakeDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeDetectServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ShakeDetectService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/ShakeDetectService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    .line 101
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :pswitch_1
    const-string v2, "ShakeDetectService"

    const-string v3, "MSG_SHAKE_DET_SWITCH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->enableMode_0:Z
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectService;->access$000(Lcom/vivo/services/motion/ShakeDetectService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # invokes: Lcom/vivo/services/motion/ShakeDetectService;->enableAccelerometer(ZI)V
    invoke-static {v2, v5, v4}, Lcom/vivo/services/motion/ShakeDetectService;->access$100(Lcom/vivo/services/motion/ShakeDetectService;ZI)V

    goto :goto_0

    .line 123
    :pswitch_2
    const-string v2, "ShakeDetectService"

    const-string v3, "MSG_SHAKE_DET_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->enableMode_0:Z
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectService;->access$000(Lcom/vivo/services/motion/ShakeDetectService;)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 126
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # invokes: Lcom/vivo/services/motion/ShakeDetectService;->enableAccelerometer(ZI)V
    invoke-static {v2, v4, v4}, Lcom/vivo/services/motion/ShakeDetectService;->access$100(Lcom/vivo/services/motion/ShakeDetectService;ZI)V

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->enableMode_1:Z
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectService;->access$200(Lcom/vivo/services/motion/ShakeDetectService;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 130
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # invokes: Lcom/vivo/services/motion/ShakeDetectService;->enableAccelerometer(ZI)V
    invoke-static {v2, v4, v5}, Lcom/vivo/services/motion/ShakeDetectService;->access$100(Lcom/vivo/services/motion/ShakeDetectService;ZI)V

    goto :goto_0

    .line 136
    :pswitch_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 137
    .local v1, "smsg":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 138
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 139
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectService;->access$300(Lcom/vivo/services/motion/ShakeDetectService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectService;->access$300(Lcom/vivo/services/motion/ShakeDetectService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
