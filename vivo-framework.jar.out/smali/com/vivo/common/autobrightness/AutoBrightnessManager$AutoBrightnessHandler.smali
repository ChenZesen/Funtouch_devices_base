.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;
.super Landroid/os/Handler;
.source "AutoBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutoBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 191
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 195
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage msg.what="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->msgToString(I)Ljava/lang/String;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$300(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    .line 197
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v8, 0x0

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mHasObjectUncoverAction:Z
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$502(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 201
    .local v4, "t":J
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutoBacklightEnabledTimeStamp:J
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    long-to-double v8, v4

    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getObjectUncoverActionTimeout()I

    move-result v7

    int-to-double v10, v7

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    cmpg-double v7, v8, v10

    if-gez v7, :cond_0

    .line 202
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v8, 0x1

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mWasHasObjectUncoverAction:Z
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$702(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    goto :goto_0

    .line 206
    .end local v4    # "t":J
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 207
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/vivo/common/autobrightness/DataParameter;

    .line 208
    .local v0, "data":Lcom/vivo/common/autobrightness/DataParameter;
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyScreenBrightness collectScreenBrightness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/DataParameter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    .line 209
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CollectUseData;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/vivo/common/autobrightness/CollectUseData;->sendDataParameter(Lcom/vivo/common/autobrightness/DataParameter;)V

    goto :goto_0

    .line 213
    .end local v0    # "data":Lcom/vivo/common/autobrightness/DataParameter;
    :pswitch_2
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 214
    :try_start_0
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v9, 0x1

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->setLightSensorEnabledInner(Z)Z
    invoke-static {v7, v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 215
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 218
    :pswitch_3
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 219
    :try_start_1
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v9, 0x0

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->setLightSensorEnabledInner(Z)Z
    invoke-static {v7, v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1000(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 220
    monitor-exit v8

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 224
    :pswitch_4
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 225
    :try_start_2
    const-string v7, "AutoBrightnessManager"

    const-string v9, "start registerReceiver..."

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mShutdownRebootReceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;

    move-result-object v9

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mShutdownRebootReceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;

    move-result-object v9

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.REBOOT"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mShutdownRebootReceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1100(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;

    move-result-object v9

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mFlashLightReceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1300(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;

    move-result-object v9

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.vivo.flashlight.ACTION_FLASHLIGHT_STATE_CHANGD"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    const/high16 v2, 0x40000000    # 2.0f

    .line 231
    .local v2, "romVer":F
    const-string v7, "ro.vivo.rom.version"

    const-string v9, "rom_2.0"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 233
    .local v6, "version":Ljava/lang/String;
    :try_start_3
    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "tmpVer":[Ljava/lang/String;
    array-length v7, v3

    const/4 v9, 0x2

    if-lt v7, v9, :cond_1

    .line 235
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v2

    .line 240
    .end local v3    # "tmpVer":[Ljava/lang/String;
    :cond_1
    :goto_1
    const/high16 v7, 0x40200000    # 2.5f

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_2

    .line 241
    :try_start_4
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingreceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;

    move-result-object v9

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "intent.action.super_power_save_send"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    :goto_2
    monitor-exit v8

    goto/16 :goto_0

    .end local v2    # "romVer":F
    .end local v6    # "version":Ljava/lang/String;
    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    .line 237
    .restart local v2    # "romVer":F
    .restart local v6    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 238
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v7, "AutoBrightnessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoBrightnessHandler Failed to get rom version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v7, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1200(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$AutoBrightnessHandler;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mSuperPowerSavingreceiver:Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$1400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;

    move-result-object v9

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "intent.action.super_power_save"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
