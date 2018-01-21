.class Lcom/android/server/wifi/VivoHotSpotEnhancer$4;
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
    .line 261
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-virtual {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->reset()V

    .line 265
    const-string v6, "wifi_state"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 266
    .local v5, "wifiApStat":I
    const-string v6, "previous_wifi_state"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 267
    .local v3, "preWifiApState":I
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    new-instance v7, Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-virtual {v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mHandler:Landroid/os/Handler;
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$602(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/os/Handler;)Landroid/os/Handler;

    .line 268
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->setDebugMode()V
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V

    .line 269
    const-string v6, "VivoHotSpotEnhancer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDebugMode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDebugMode:Z
    invoke-static {v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/16 v6, 0xd

    if-ne v5, v6, :cond_4

    const/16 v6, 0xd

    if-eq v3, v6, :cond_4

    .line 273
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSubInfoList:Ljava/util/List;
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$902(Lcom/android/server/wifi/VivoHotSpotEnhancer;Ljava/util/List;)Ljava/util/List;

    .line 274
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSubInfoList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$900(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 275
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSubInfoList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$900(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSimNums:I
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1102(Lcom/android/server/wifi/VivoHotSpotEnhancer;I)I

    .line 276
    const-string v6, "VivoHotSpotEnhancer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the sublist size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSimNums:I
    invoke-static {v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1300(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/INetworkStatsService;

    move-result-object v7

    invoke-interface {v7}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1202(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/net/INetworkStatsSession;)Landroid/net/INetworkStatsSession;

    .line 278
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSubInfoList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$900(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 279
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    const-string v6, "VivoHotSpotEnhancer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSubscriptionId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {p1, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1500(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1402(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    .line 281
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1400(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1402(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    .line 282
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplateList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1400(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/NetworkTemplate;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "VivoHotSpotEnhancer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " fatal error happens on get statssessiond "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v7, 0x1

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isApEnabled:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1802(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    .line 297
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStartTime:J
    invoke-static {v6, v8, v9}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1902(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J

    .line 298
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->updateDataConsume()J
    invoke-static {v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v8

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStartDataUsage:J
    invoke-static {v6, v8, v9}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2002(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J

    .line 299
    const-string v6, "VivoHotSpotEnhancer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " start datausage is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStartDataUsage:J
    invoke-static {v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableBlockedClient;

    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {v7, v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableBlockedClient;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerUid:I
    invoke-static {v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2300(Lcom/android/server/wifi/VivoHotSpotEnhancer;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->getPackageName(I)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerPackageName:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2202(Lcom/android/server/wifi/VivoHotSpotEnhancer;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-virtual {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->registerReceiver()V

    .line 311
    .end local v3    # "preWifiApState":I
    .end local v5    # "wifiApStat":I
    :cond_1
    :goto_2
    return-void

    .line 285
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "preWifiApState":I
    .restart local v5    # "wifiApStat":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 286
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, v6, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 287
    .local v2, "msg1":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, v6, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    invoke-virtual {v6, v2}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 288
    .end local v2    # "msg1":Landroid/os/Message;
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 289
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, v6, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 290
    .restart local v2    # "msg1":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, v6, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    invoke-virtual {v6, v2}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 304
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "msg1":Landroid/os/Message;
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, v6, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->removeMessages(I)V

    .line 305
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v6, v6, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->removeMessages(I)V

    .line 306
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isApEnabled:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1802(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    .line 307
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-virtual {v6}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->unRegisterReceiver()V

    .line 308
    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v7, 0x1

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->cancelDialog(I)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2400(Lcom/android/server/wifi/VivoHotSpotEnhancer;I)V

    goto :goto_2
.end method
