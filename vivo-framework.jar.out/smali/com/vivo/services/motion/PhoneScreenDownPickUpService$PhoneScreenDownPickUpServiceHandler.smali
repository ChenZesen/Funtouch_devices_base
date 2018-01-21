.class Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhoneScreenDownPickUpServiceHandler;
.super Landroid/os/Handler;
.source "PhoneScreenDownPickUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneScreenDownPickUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneScreenDownPickUpServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhoneScreenDownPickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    .line 69
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    .line 76
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    const-string v2, "PhoneScreenDownPickUpService"

    const-string v3, "MSG_PHONE_SCREEN_DOWN_PICK_UP_DET_START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :pswitch_1
    const-string v2, "PhoneScreenDownPickUpService"

    const-string v3, "MSG_PHONE_SCREEN_DOWN_PICK_UP_DET_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :pswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 89
    .local v1, "smsg":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 90
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x18

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 91
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhoneScreenDownPickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$300(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhoneScreenDownPickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$300(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    const-string v2, "PhoneScreenDownPickUpService"

    const-string v3, "MSG_PHONE_SCREEN_DOWN_PICK_UP_DET_TRIGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhoneScreenDownPickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhoneScreenDownPickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhoneScreenDownPickUpServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
