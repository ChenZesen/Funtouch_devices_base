.class final Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;
.super Landroid/os/Handler;
.source "AntiMisoperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/antimisoperation/AntiMisoperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AntiMisoperationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;


# direct methods
.method public constructor <init>(Lcom/vivo/common/antimisoperation/AntiMisoperation;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    .line 240
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 241
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    const-string v0, "AntiMisoperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->msgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # invokes: Lcom/vivo/common/antimisoperation/AntiMisoperation;->setProximitySensorEnabledInner(Z)Z
    invoke-static {v0, v4}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$600(Lcom/vivo/common/antimisoperation/AntiMisoperation;Z)Z

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # invokes: Lcom/vivo/common/antimisoperation/AntiMisoperation;->setProximitySensorEnabledInner(Z)Z
    invoke-static {v0, v5}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$600(Lcom/vivo/common/antimisoperation/AntiMisoperation;Z)Z

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;
    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$700(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mCallback:Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;
    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$700(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/vivo/common/antimisoperation/AntiMisoperationCallback;->onTriggered(Z)V

    goto :goto_0

    .line 258
    :pswitch_3
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # invokes: Lcom/vivo/common/antimisoperation/AntiMisoperation;->onAntiMisoperationMoved()V
    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$800(Lcom/vivo/common/antimisoperation/AntiMisoperation;)V

    goto :goto_0

    .line 261
    :pswitch_4
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # invokes: Lcom/vivo/common/antimisoperation/AntiMisoperation;->logoutAntiMisoperationInnger()V
    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$900(Lcom/vivo/common/antimisoperation/AntiMisoperation;)V

    goto :goto_0

    .line 264
    :pswitch_5
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # invokes: Lcom/vivo/common/antimisoperation/AntiMisoperation;->acquirePartialWakeLock()V
    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$1000(Lcom/vivo/common/antimisoperation/AntiMisoperation;)V

    goto :goto_0

    .line 267
    :pswitch_6
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # invokes: Lcom/vivo/common/antimisoperation/AntiMisoperation;->releasePartialWakeLock()V
    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$1100(Lcom/vivo/common/antimisoperation/AntiMisoperation;)V

    goto :goto_0

    .line 270
    :pswitch_7
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$1200(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # += operator for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockKickCount:I
    invoke-static {v0, v5}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$1312(Lcom/vivo/common/antimisoperation/AntiMisoperation;I)I

    .line 272
    const-string v0, "AntiMisoperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AntiMisoperationWakelockWARNING: wake held for too long. last for ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockKickCount:I
    invoke-static {v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$1300(Lcom/vivo/common/antimisoperation/AntiMisoperation;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;
    invoke-static {v0}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$500(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # getter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mAntiMisoperationHandler:Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;
    invoke-static {v1}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$500(Lcom/vivo/common/antimisoperation/AntiMisoperation;)Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    # setter for: Lcom/vivo/common/antimisoperation/AntiMisoperation;->mWakelockKickCount:I
    invoke-static {v0, v4}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$1302(Lcom/vivo/common/antimisoperation/AntiMisoperation;I)I

    goto/16 :goto_0

    .line 280
    :pswitch_8
    # invokes: Lcom/vivo/common/antimisoperation/AntiMisoperation;->isQQWorkSource()Z
    invoke-static {}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/vivo/common/antimisoperation/AntiMisoperation$AntiMisoperationHandler;->this$0:Lcom/vivo/common/antimisoperation/AntiMisoperation;

    invoke-virtual {v0, v4}, Lcom/vivo/common/antimisoperation/AntiMisoperation;->logoutAntiMisoperation(Z)V

    goto/16 :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
