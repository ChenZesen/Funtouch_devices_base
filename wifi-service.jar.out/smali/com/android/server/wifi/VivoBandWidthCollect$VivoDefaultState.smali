.class Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;
.super Lcom/android/internal/util/State;
.source "VivoBandWidthCollect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoBandWidthCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoBandWidthCollect;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoBandWidthCollect;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 156
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$200(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 212
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1200(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 213
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 162
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 204
    iget-object v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1000(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$1100(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    return v7

    .line 164
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->isWiFiEnabled()Z
    invoke-static {v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$300(Lcom/android/server/wifi/VivoBandWidthCollect;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 171
    :pswitch_1
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 172
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 173
    const-string v4, "VivoBandWidthCollect"

    const-string v5, "intent is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v4, "networkInfo"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 178
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    .line 179
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 180
    iget-object v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mCurrentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$402(Lcom/android/server/wifi/VivoBandWidthCollect;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    .line 181
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "VivoBandWidthCollect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentDetailState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mCurrentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v6}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$400(Lcom/android/server/wifi/VivoBandWidthCollect;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mCurrentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$400(Lcom/android/server/wifi/VivoBandWidthCollect;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_3

    .line 183
    iget-object v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    iget-object v5, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoWifiNotConnectState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;
    invoke-static {v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$500(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$600(Lcom/android/server/wifi/VivoBandWidthCollect;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 184
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mCurrentDetailState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$400(Lcom/android/server/wifi/VivoBandWidthCollect;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    .line 185
    const-string v4, "wifiInfo"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    check-cast v3, Landroid/net/wifi/WifiInfo;

    .line 186
    .restart local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "VivoBandWidthCollect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifiInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_4
    if-eqz v3, :cond_5

    .line 188
    iget-object v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->increaseConnectedCount(I)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$700(Lcom/android/server/wifi/VivoBandWidthCollect;I)V

    .line 190
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    iget-object v5, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoWifiConnectedState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;
    invoke-static {v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$800(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$900(Lcom/android/server/wifi/VivoBandWidthCollect;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 198
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_2
    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z
    invoke-static {v7}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$102(Z)Z

    goto/16 :goto_0

    .line 201
    :pswitch_3
    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z
    invoke-static {v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$102(Z)Z

    goto/16 :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x21901
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
