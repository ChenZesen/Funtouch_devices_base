.class Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;
.super Lcom/android/internal/util/State;
.source "VivoBandWidthCollect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoBandWidthCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoWifiConnectedState"
.end annotation


# instance fields
.field mCurrentConfig:Landroid/net/wifi/WifiConfiguration;

.field mTotalte0:J

.field mTotalte1:J

.field final synthetic this$0:Lcom/android/server/wifi/VivoBandWidthCollect;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoBandWidthCollect;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 219
    iput-object p1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 220
    iput-wide v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte0:J

    .line 221
    iput-wide v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte1:J

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mCurrentConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    .line 227
    :try_start_0
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1300(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 228
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte0:J

    .line 229
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte1:J

    .line 230
    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1402(Lcom/android/server/wifi/VivoBandWidthCollect;I)I

    .line 231
    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1500(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1500(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mCurrentConfig:Landroid/net/wifi/WifiConfiguration;

    .line 234
    :cond_1
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte0:J

    .line 237
    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1402(Lcom/android/server/wifi/VivoBandWidthCollect;I)I

    .line 238
    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v2, 0x21905

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->removeMessages(I)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1600(Lcom/android/server/wifi/VivoBandWidthCollect;I)V

    .line 239
    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v2, 0x21905

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->sendMessageDelayed(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_2
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 300
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$2300(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 302
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1402(Lcom/android/server/wifi/VivoBandWidthCollect;I)I

    .line 303
    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v2, 0x21905

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->removeMessages(I)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$2400(Lcom/android/server/wifi/VivoBandWidthCollect;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 248
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 293
    iget-object v2, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$2100(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$2200(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    move v2, v3

    .line 294
    :goto_0
    return v2

    .line 251
    :pswitch_0
    const/4 v3, 0x1

    :try_start_0
    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$102(Z)Z

    .line 253
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte0:J

    .line 254
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1402(Lcom/android/server/wifi/VivoBandWidthCollect;I)I

    .line 255
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v4, 0x21905

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->removeMessages(I)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1700(Lcom/android/server/wifi/VivoBandWidthCollect;I)V

    .line 256
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v4, 0x21905

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/VivoBandWidthCollect;->sendMessageDelayed(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const/4 v3, 0x0

    :try_start_1
    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$102(Z)Z

    .line 264
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1402(Lcom/android/server/wifi/VivoBandWidthCollect;I)I

    .line 266
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v4, 0x21905

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->removeMessages(I)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1800(Lcom/android/server/wifi/VivoBandWidthCollect;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 267
    :catch_1
    move-exception v0

    .line 268
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte1:J

    .line 275
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    iget-wide v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte1:J

    iget-wide v6, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte0:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc00

    div-long/2addr v4, v6

    long-to-int v4, v4

    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1402(Lcom/android/server/wifi/VivoBandWidthCollect;I)I

    .line 276
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTotalte0:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte0:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTotalte1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte1:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSpeedKB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I
    invoke-static {v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1400(Lcom/android/server/wifi/VivoBandWidthCollect;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1900(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mCurrentConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/VivoWifiConfiguration;->getVivoLastAutoEnabledTime()I

    move-result v1

    .line 278
    .local v1, "maxSpeedBefore":I
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I
    invoke-static {v3}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1400(Lcom/android/server/wifi/VivoBandWidthCollect;)I

    move-result v3

    if-le v3, v1, :cond_2

    .line 279
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update max speed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I
    invoke-static {v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1400(Lcom/android/server/wifi/VivoBandWidthCollect;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", maxSpeedBefore:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$2000(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 280
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mCurrentConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    iget-object v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I
    invoke-static {v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1400(Lcom/android/server/wifi/VivoBandWidthCollect;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/VivoWifiConfiguration;->setVivoLastAutoEnabledTime(I)V

    .line 281
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mCurrentConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/VivoWifiConfiguration;->setVivoIsInRange(Z)V

    .line 282
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mCurrentConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 284
    :cond_2
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 285
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v4, 0x21905

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/VivoBandWidthCollect;->sendMessageDelayed(IJ)V

    .line 287
    :cond_3
    iget-wide v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte1:J

    iput-wide v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;->mTotalte0:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 288
    .end local v1    # "maxSpeedBefore":I
    :catch_2
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x21903
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
