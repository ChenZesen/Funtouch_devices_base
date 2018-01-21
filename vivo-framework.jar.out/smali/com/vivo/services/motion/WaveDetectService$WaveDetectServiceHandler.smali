.class Lcom/vivo/services/motion/WaveDetectService$WaveDetectServiceHandler;
.super Landroid/os/Handler;
.source "WaveDetectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/WaveDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaveDetectServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/WaveDetectService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/WaveDetectService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/vivo/services/motion/WaveDetectService$WaveDetectServiceHandler;->this$0:Lcom/vivo/services/motion/WaveDetectService;

    .line 18
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 23
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 36
    :goto_0
    return-void

    .line 26
    :pswitch_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 27
    .local v1, "smsg":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 28
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 29
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    iget-object v2, p0, Lcom/vivo/services/motion/WaveDetectService$WaveDetectServiceHandler;->this$0:Lcom/vivo/services/motion/WaveDetectService;

    # getter for: Lcom/vivo/services/motion/WaveDetectService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/WaveDetectService;->access$000(Lcom/vivo/services/motion/WaveDetectService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
