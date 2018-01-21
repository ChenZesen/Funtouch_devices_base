.class final Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;
.super Landroid/os/Handler;
.source "VivoSmartMultiWindowAms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VivoSmartMultiWindowAms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;


# direct methods
.method constructor <init>(Lcom/android/server/am/VivoSmartMultiWindowAms;)V
    .locals 0

    .prologue
    .line 7419
    iput-object p1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 7422
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 7455
    :cond_0
    :goto_0
    return-void

    .line 7424
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 7425
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v3, v3, Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoSmartMultiWindowHelper:Landroid/app/IVivoSmartMultiWindowHelper;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 7426
    iget-object v3, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v3, v3, Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoSmartMultiWindowHelper:Landroid/app/IVivoSmartMultiWindowHelper;

    invoke-virtual {v3, v1}, Landroid/app/IVivoSmartMultiWindowHelper;->updateMoveableIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 7432
    .end local v1    # "pkg":Ljava/lang/String;
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_2

    .line 7433
    .local v2, "split":Z
    :goto_1
    const/4 v0, 0x0

    .line 7434
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    # getter for: Lcom/android/server/am/VivoSmartMultiWindowAms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;
    invoke-static {v3}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$700(Lcom/android/server/am/VivoSmartMultiWindowAms;)Lcom/android/server/VivoSmartMultiWindowMgr;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    # getter for: Lcom/android/server/am/VivoSmartMultiWindowAms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;
    invoke-static {v3}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$700(Lcom/android/server/am/VivoSmartMultiWindowAms;)Lcom/android/server/VivoSmartMultiWindowMgr;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mNotifySplitMode:Z

    if-eq v3, v2, :cond_1

    .line 7435
    iget-object v3, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    # getter for: Lcom/android/server/am/VivoSmartMultiWindowAms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;
    invoke-static {v3}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$700(Lcom/android/server/am/VivoSmartMultiWindowAms;)Lcom/android/server/VivoSmartMultiWindowMgr;

    move-result-object v3

    iput-boolean v2, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mNotifySplitMode:Z

    .line 7436
    const/4 v0, 0x1

    .line 7438
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v3, v3, Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoSmartMultiWindowHelper:Landroid/app/IVivoSmartMultiWindowHelper;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 7440
    const-string v3, "vivo_debug_time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify update splitmode status split = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7443
    iget-object v3, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v3, v3, Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoSmartMultiWindowHelper:Landroid/app/IVivoSmartMultiWindowHelper;

    invoke-virtual {v3, v2}, Landroid/app/IVivoSmartMultiWindowHelper;->updateSplitMode(Z)V

    goto :goto_0

    .line 7432
    .end local v0    # "changed":Z
    .end local v2    # "split":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 7450
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iget-object v3, v3, Lcom/android/server/am/VivoSmartMultiWindowAms;->mHandler:Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->removeMessages(I)V

    .line 7451
    iget-object v3, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$MainHandler;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    # invokes: Lcom/android/server/am/VivoSmartMultiWindowAms;->resetActivityDrawnTimeOut()V
    invoke-static {v3}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$800(Lcom/android/server/am/VivoSmartMultiWindowAms;)V

    goto :goto_0

    .line 7422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
