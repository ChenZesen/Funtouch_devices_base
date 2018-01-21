.class Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeDetectServiceHandler;
.super Landroid/os/Handler;
.source "ShakeDetectServiceTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ShakeDetectServiceTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeDetectServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/ShakeDetectServiceTwo;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :pswitch_1
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    const/4 v3, 0x1

    # setter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->trigerFlag:Z
    invoke-static {v2, v3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$002(Lcom/vivo/services/motion/ShakeDetectServiceTwo;Z)Z

    .line 92
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 93
    .local v1, "smsg":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 94
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 95
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$100(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$100(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    const-string v2, "ShakeDetectServiceTwo"

    const-string v3, "MSG_SHAKE_DET_TRIGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$200(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeDetectServiceHandler;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;
    invoke-static {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$200(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->reset()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
