.class Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpServiceHandler;
.super Landroid/os/Handler;
.source "PhonePickUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhonePickUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonePickUpServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/PhonePickUpService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/PhonePickUpService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    .line 112
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    .line 119
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    const-string v2, "PhonePickUpService"

    const-string v3, "MSG_PHONE_PICK_UP_DET_START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :pswitch_1
    const-string v2, "PhonePickUpService"

    const-string v3, "MSG_PHONE_PICK_UP_DET_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 132
    .local v1, "smsg":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 133
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 134
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhonePickUpService;->access$500(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhonePickUpService;->access$500(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    const-string v2, "PhonePickUpService"

    const-string v3, "MSG_PHONE_PICK_UP_DET_TRIGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhonePickUpService;->access$600(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhonePickUpService;->access$600(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhonePickUpService;->access$600(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
