.class Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;
.super Landroid/os/Handler;
.source "PhoneAcrossService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneAcrossService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAcrossServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/PhoneAcrossService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/PhoneAcrossService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    .line 626
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 627
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x10

    .line 634
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 637
    :pswitch_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 638
    .local v1, "smsg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 639
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 640
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 641
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1400(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1400(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    const-string v2, "PhoneAcrossService"

    const-string v3, "MSG_PICK_UP_DET_TRIGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    .end local v1    # "smsg":Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 650
    iput v3, p1, Landroid/os/Message;->what:I

    .line 651
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x11

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 652
    .restart local v0    # "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 653
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1400(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 655
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1400(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 656
    const-string v2, "PhoneAcrossService"

    const-string v3, "++++++++++++++++++++++++++++PHONEACROSS---+CLOSE+---SUCCESS+++++++++++++++++++++++++++++++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    :pswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 662
    iput v3, p1, Landroid/os/Message;->what:I

    .line 663
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x12

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 664
    .restart local v0    # "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 665
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1400(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 667
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->access$1400(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 668
    const-string v2, "PhoneAcrossService"

    const-string v3, "++++++++++++++++++++++++++++PHONEACROSS---+AWAY+---SUCCESS+++++++++++++++++++++++++++++++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
