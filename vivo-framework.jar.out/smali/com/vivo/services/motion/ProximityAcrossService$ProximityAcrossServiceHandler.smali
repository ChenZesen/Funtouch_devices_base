.class Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;
.super Landroid/os/Handler;
.source "ProximityAcrossService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ProximityAcrossService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityAcrossServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ProximityAcrossService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/ProximityAcrossService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    .line 186
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 194
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 277
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 207
    :pswitch_1
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1100(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1100(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1100(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-ne v6, v2, :cond_2

    .line 215
    const-string v2, "ProximityAcrossService"

    const-string v3, "MSG_PROX_ACROSS_DET_TRIGER+++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 217
    .local v1, "smsg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 218
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 219
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1200(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1200(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    const-string v2, "ProximityAcrossService"

    const-string v3, "MSG_PROX_ACROSS_DET_TRIGER---"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    .end local v1    # "smsg":Landroid/os/Message;
    :goto_1
    const-string v2, "ProximityAcrossService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callNotice():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # invokes: Lcom/vivo/services/motion/ProximityAcrossService;->callNotice()Z
    invoke-static {v4}, Lcom/vivo/services/motion/ProximityAcrossService;->access$300(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    .restart local v0    # "IntegerActionType":Ljava/lang/Integer;
    .restart local v1    # "smsg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 228
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    .end local v1    # "smsg":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1100(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_smart_touch_setting"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # invokes: Lcom/vivo/services/motion/ProximityAcrossService;->callNotice()Z
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$300(Lcom/vivo/services/motion/ProximityAcrossService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 232
    .restart local v1    # "smsg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 233
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 234
    .restart local v0    # "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 236
    :try_start_2
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1200(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 238
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1200(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 241
    const-string v2, "ProximityAcrossService"

    const-string v3, "BBK_SMART_TOUCH_SETTING open triger"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 240
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 245
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    .end local v1    # "smsg":Landroid/os/Message;
    :cond_4
    const-string v2, "ProximityAcrossService"

    const-string v3, "MSG_PROX_ACROSS_DET_TRIGER, BUT SCREEN IS OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler$1;

    invoke-direct {v3, p0}, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler$1;-><init>(Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1100(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1100(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-ne v6, v2, :cond_6

    .line 253
    const-string v2, "ProximityAcrossService"

    const-string v3, "MSG_PROX_ACROSS_DET_TRIGER, AFTER DELAY SCREEN IS ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 256
    .restart local v1    # "smsg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 257
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 258
    .restart local v0    # "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->access$500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 260
    :try_start_4
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1200(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 262
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    # getter for: Lcom/vivo/services/motion/ProximityAcrossService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->access$1200(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    :cond_5
    monitor-exit v3

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 268
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    .end local v1    # "smsg":Landroid/os/Message;
    :cond_6
    const-string v2, "ProximityAcrossService"

    const-string v3, "MSG_PROX_ACROSS_DET_TRIGER, AFTER DELAY SCREEN IS STILL OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
