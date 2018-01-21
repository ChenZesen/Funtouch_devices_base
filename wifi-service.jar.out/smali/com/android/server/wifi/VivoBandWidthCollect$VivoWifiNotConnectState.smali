.class Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;
.super Lcom/android/internal/util/State;
.source "VivoBandWidthCollect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoBandWidthCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoWifiNotConnectState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoBandWidthCollect;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoBandWidthCollect;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 316
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$2500(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 336
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$2800(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 328
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$2600(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$2700(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 324
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->isWiFiEnabled()Z
    invoke-static {v0}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$300(Lcom/android/server/wifi/VivoBandWidthCollect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x21902
        :pswitch_0
    .end packed-switch
.end method
