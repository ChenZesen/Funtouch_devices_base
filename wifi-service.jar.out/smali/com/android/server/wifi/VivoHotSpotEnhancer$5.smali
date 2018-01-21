.class Lcom/android/server/wifi/VivoHotSpotEnhancer$5;
.super Landroid/content/BroadcastReceiver;
.source "VivoHotSpotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoHotSpotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 317
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "action":Ljava/lang/String;
    const-string v5, "VivoHotSpotEnhancer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.vivo.net.hotspot.LimitationUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 323
    const-string v5, "VivoHotSpotEnhancer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pre data limitation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mPreDataLimitation:J
    invoke-static {v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2500(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "datalimitation :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->resetControlVariables()V
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V

    .line 325
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v5, v5, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->removeMessages(I)V

    .line 326
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v5, v5, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->removeMessages(I)V

    .line 327
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->getDateConsumed()J
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v6

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2702(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J

    .line 328
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const-string v6, "hotspot.data.limitation"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$002(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J

    .line 329
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 332
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 333
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->showAlertDialog(Landroid/content/Context;)V
    invoke-static {v5, p1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2900(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 335
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->setDateSpeedLimit(Z)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3000(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)V

    .line 336
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 337
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v5, v5, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, v6, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 339
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v5, v5, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, v6, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 342
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.vivo.changeDataConsumption"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 343
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const-string v6, "com.hotspot.dataConsumption.modification"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumedOffset:J
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3102(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J

    .line 344
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v5, v5, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->removeMessages(I)V

    .line 345
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v5, v5, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, v6, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 346
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 347
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isScreenOn:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3202(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    goto/16 :goto_0

    .line 348
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 349
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isScreenOn:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3202(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    goto/16 :goto_0

    .line 350
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "intent.action.super_power_save_send"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 351
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isPowerSave:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3302(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    goto/16 :goto_0

    .line 352
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.vivo.net.wifi.statusbarchanged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 353
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isApEnabled:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 354
    const-string v5, "VivoHotSpotEnhancer"

    const-string v6, "ap is not set up, return"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 357
    :cond_9
    const-string v5, "statusbar.state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "up"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 358
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$402(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    goto/16 :goto_0

    .line 360
    :cond_a
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$402(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    .line 361
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isNotify()Z
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3400(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v6

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->calDataUsageAndBroadcast(Z)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3500(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)V

    .line 363
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow()Z
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v6

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3602(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    .line 364
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 365
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->showAlertDialog(Landroid/content/Context;)V
    invoke-static {v5, p1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2900(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 368
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vivo.intent.action.STATUS_BAR_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 369
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isApEnabled:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 370
    const-string v5, "VivoHotSpotEnhancer"

    const-string v6, "ap is not set up, return"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 373
    :cond_c
    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "closed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 374
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$402(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    goto/16 :goto_0

    .line 376
    :cond_d
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$402(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    .line 377
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isNotify()Z
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3400(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v6

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->calDataUsageAndBroadcast(Z)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3500(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)V

    .line 379
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow()Z
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v6

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3602(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    .line 380
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 381
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->showAlertDialog(Landroid/content/Context;)V
    invoke-static {v5, p1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2900(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 384
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.vivo.hotpot.dataInterfaceChanged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 385
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const-string v6, "vivo.hotspot.dataInterfaceChanged"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3902(Lcom/android/server/wifi/VivoHotSpotEnhancer;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$200(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    const-string v5, "VivoHotSpotEnhancer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface changed with new interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3900(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 389
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 390
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 391
    .local v1, "currentNetworkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_10

    .line 392
    const-string v5, "VivoHotSpotEnhancer"

    const-string v6, "currentNetworkInfo is null,return "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 395
    :cond_10
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 397
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_0

    const-string v5, "false"

    const-string v6, "net.wifi.vivosoftap"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "none"

    const-string v6, "net.wifi.vivosoftap.KeyMgmt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 401
    const-string v5, "VivoHotSpotEnhancer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the current netowrkInfo is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MOBILE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 403
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$200(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    const-string v5, "VivoHotSpotEnhancer"

    const-string v6, "disable the third hotspot nat after 1.5s "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 409
    .end local v1    # "currentNetworkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 411
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-virtual {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->unRegisterReceiver()V

    goto/16 :goto_0

    .line 412
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 413
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 414
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2200(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 416
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$200(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 417
    const-string v5, "VivoHotSpotEnhancer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkgName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", shut down the softap"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_13
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 421
    .end local v2    # "data":Landroid/net/Uri;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_14
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 422
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->handleConnectionChanges()V
    invoke-static {v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$500(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V

    goto/16 :goto_0
.end method
