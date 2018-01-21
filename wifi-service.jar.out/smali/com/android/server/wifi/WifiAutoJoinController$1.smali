.class Lcom/android/server/wifi/WifiAutoJoinController$1;
.super Ljava/lang/Object;
.source "WifiAutoJoinController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiAutoJoinController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiAutoJoinController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiAutoJoinController;)V
    .locals 0

    .prologue
    .line 2492
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2496
    .local v4, "now":J
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v7}, Lcom/android/server/wifi/WifiAutoJoinController;->access$000(Lcom/android/server/wifi/WifiAutoJoinController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2497
    .local v0, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    iget-object v7, v7, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    if-nez v7, :cond_1

    .line 2517
    :cond_0
    :goto_0
    return-void

    .line 2501
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v7}, Lcom/android/server/wifi/WifiAutoJoinController;->access$000(Lcom/android/server/wifi/WifiAutoJoinController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2502
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "txSuccessRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_2

    const-string v7, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v12, v1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rxSuccessRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_3

    const-string v7, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v12, v1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "current.numNoInternetAccessReports:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_4

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2504
    .local v2, "internetInfo":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    const-string v8, "******************************BEGIN*******************************\n"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2505
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Step Count Info:\nTotal steps:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mVivoWifiStep:Lcom/android/server/wifi/VivoWifiStep;
    invoke-static {v7}, Lcom/android/server/wifi/WifiAutoJoinController;->access$100(Lcom/android/server/wifi/WifiAutoJoinController;)Lcom/android/server/wifi/VivoWifiStep;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mVivoWifiStep:Lcom/android/server/wifi/VivoWifiStep;
    invoke-static {v7}, Lcom/android/server/wifi/WifiAutoJoinController;->access$100(Lcom/android/server/wifi/WifiAutoJoinController;)Lcom/android/server/wifi/VivoWifiStep;

    invoke-static {}, Lcom/android/server/wifi/VivoWifiStep;->getStepCount()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Steps from last:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiAutoJoinController;->getDiffWifiStep()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Seconds From Last AutoJoin:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mLastAutoJoinTimeMillis:J
    invoke-static {}, Lcom/android/server/wifi/WifiAutoJoinController;->access$200()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2508
    .local v6, "stepCountInfo":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->vivoAutoJoinDebugString:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiAutoJoinController;->access$400(Lcom/android/server/wifi/WifiAutoJoinController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/WifiAutoJoinController;->mAutoJoinInfoString:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiAutoJoinController;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 2510
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    iget-object v7, v7, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2511
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2512
    .local v3, "sBuf":Ljava/lang/StringBuffer;
    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mAutoJoinInfoString:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiAutoJoinController;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mRecentNetworkString:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiAutoJoinController;->access$700(Lcom/android/server/wifi/WifiAutoJoinController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mCompareNetworkString:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiAutoJoinController;->access$600(Lcom/android/server/wifi/WifiAutoJoinController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mUserChoiceString:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiAutoJoinController;->access$500(Lcom/android/server/wifi/WifiAutoJoinController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2514
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    iget-object v7, v7, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2516
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/wifi/WifiAutoJoinController;->access$800(Lcom/android/server/wifi/WifiAutoJoinController;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController$1;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    iget-object v8, v8, Lcom/android/server/wifi/WifiAutoJoinController;->mAutoJoinProfilingInfo:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2502
    .end local v2    # "internetInfo":Ljava/lang/String;
    .end local v3    # "sBuf":Ljava/lang/StringBuffer;
    .end local v6    # "stepCountInfo":Ljava/lang/String;
    :cond_2
    const-string v7, "null"

    goto/16 :goto_1

    :cond_3
    const-string v7, "null"

    goto/16 :goto_2

    :cond_4
    const-string v7, "null"

    goto/16 :goto_3

    .line 2505
    .restart local v2    # "internetInfo":Ljava/lang/String;
    :cond_5
    const-string v7, "null"

    goto/16 :goto_4
.end method
