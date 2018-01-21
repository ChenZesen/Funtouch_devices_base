.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 488
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupNetworkReceiver action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 490
    :cond_0
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 491
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v5, 0x21003

    const-string v6, "newRssi"

    const/16 v7, -0xc8

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    const-string v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 494
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v5, 0x21004

    invoke-virtual {v4, v5, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 495
    :cond_3
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 497
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 498
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_5

    .line 501
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$202(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    .line 502
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentDetailState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 505
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v5, 0x21002

    invoke-virtual {v4, v5, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 507
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handleNetworkStateChange(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/content/Intent;)V

    goto :goto_0

    .line 509
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_6
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 510
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v5, 0x21008

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 511
    :cond_7
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 512
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v5, 0x21009

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 513
    :cond_8
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 514
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v5, 0x21005

    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(II)V

    goto/16 :goto_0

    .line 517
    :cond_9
    const-string v4, "wifi.wifi.roamingDetect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 518
    const-string v4, "newBssid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "newBssid":Ljava/lang/String;
    const-string v4, "priBssid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "priBssid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v4, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$502(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 522
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roamingDetect priBssid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newBssid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isRoaming= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 524
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-boolean v4, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    if-ne v4, v7, :cond_1

    .line 525
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roamingDetect priBssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 526
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 528
    .end local v2    # "newBssid":Ljava/lang/String;
    .end local v3    # "priBssid":Ljava/lang/String;
    :cond_a
    const-string v4, "com.mediatek.wifi.p2p.Tx"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 529
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v5, "start"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->p2pStart:Z

    .line 530
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p2pStart= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-boolean v6, v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->p2pStart:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0
.end method