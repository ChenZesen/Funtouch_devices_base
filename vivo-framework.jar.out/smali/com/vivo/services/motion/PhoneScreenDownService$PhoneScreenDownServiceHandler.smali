.class Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;
.super Landroid/os/Handler;
.source "PhoneScreenDownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneScreenDownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneScreenDownServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/PhoneScreenDownService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/PhoneScreenDownService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x2

    .line 81
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    const-string v2, "PhoneScreenDownService"

    const-string v3, "MSG_PHONE_POSTURE_DET_START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :pswitch_1
    const-string v2, "PhoneScreenDownService"

    const-string v3, "MSG_PHONE_POSTURE_DET_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 93
    .local v1, "smsg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 94
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x16

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 95
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$300(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$300(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    const-string v2, "PhoneScreenDownService"

    const-string v3, "MSG_PHONE_POSTURE_DET_TRIGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 109
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    .end local v1    # "smsg":Landroid/os/Message;
    :pswitch_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 110
    .restart local v1    # "smsg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 111
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x17

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 112
    .restart local v0    # "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$300(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$300(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    const-string v2, "PhoneScreenDownService"

    const-string v3, "MSG_PHONE_POSTURE_DET_TRIGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
