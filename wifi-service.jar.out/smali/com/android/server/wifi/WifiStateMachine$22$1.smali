.class Lcom/android/server/wifi/WifiStateMachine$22$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine$22;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachine$22;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine$22;)V
    .locals 0

    .prologue
    .line 13350
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$22$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 13352
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$22$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$22;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSuspendOptimization "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->suspendOptimizationEnabled:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$36000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$22$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$22;

    iget-object v3, v3, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$15700(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , current State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$22$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$22;

    iget-object v3, v3, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$36100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13355
    :cond_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->suspendOptimizationEnabled:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$36000()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$22$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$22;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$36200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$22$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$22;

    iget-object v2, v2, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$22$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$22;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15700(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13356
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->getPacketFilter()Ljava/lang/String;

    move-result-object v0

    .line 13357
    .local v0, "packetFilter":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$22$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$22;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSuspendOptimization setRxPacketFileter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13358
    :cond_1
    if-eqz v0, :cond_2

    .line 13359
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$22$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$22;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setRxPacketFileter(Ljava/lang/String;)Z

    .line 13360
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$22$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$22;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->isFilterSet:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$36302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 13363
    .end local v0    # "packetFilter":Ljava/lang/String;
    :cond_2
    return-void
.end method
