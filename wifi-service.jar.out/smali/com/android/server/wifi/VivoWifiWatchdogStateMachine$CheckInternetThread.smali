.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;
.super Ljava/lang/Thread;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckInternetThread"
.end annotation


# instance fields
.field private isVivo:Z

.field private networkId:I

.field private state:Lcom/android/internal/util/IState;

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V
    .locals 3
    .param p2, "vivo"    # Z

    .prologue
    .line 3845
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .line 3846
    const-string v1, "NetworkMonitor"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3842
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->isVivo:Z

    .line 3843
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->networkId:I

    .line 3844
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->state:Lcom/android/internal/util/IState;

    .line 3848
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->isVivo:Z

    .line 3849
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->networkId:I

    .line 3850
    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$22400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->state:Lcom/android/internal/util/IState;

    .line 3851
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckInternetThread  isVivo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->isVivo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", networkId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->state:Lcom/android/internal/util/IState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$22500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3855
    :cond_0
    :goto_0
    return-void

    .line 3852
    :catch_0
    move-exception v0

    .line 3853
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isSameNetwork()Z
    .locals 7

    .prologue
    .line 3857
    const/4 v2, 0x0

    .line 3858
    .local v2, "same":Z
    const/4 v1, -0x1

    .line 3859
    .local v1, "nkid":I
    const/4 v3, 0x0

    .line 3861
    .local v3, "st":Lcom/android/internal/util/IState;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 3862
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$22600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v3

    .line 3863
    iget v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->networkId:I

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->state:Lcom/android/internal/util/IState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v3, :cond_0

    .line 3864
    const/4 v2, 0x1

    .line 3869
    :cond_0
    :goto_0
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckInternetThread isSameNetwork "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , networkId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$22700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3870
    :cond_1
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->state:Lcom/android/internal/util/IState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$22800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3871
    :cond_2
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "st     : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$22900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3872
    :cond_3
    return v2

    .line 3866
    :catch_0
    move-exception v0

    .line 3867
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3877
    const/4 v1, 0x0

    :try_start_0
    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23002(Ljava/lang/String;)Ljava/lang/String;

    .line 3878
    iget-boolean v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->isVivo:Z

    if-eqz v1, :cond_2

    .line 3879
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->vivoResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 3880
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isCaptivePortal()I
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v2

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->vivoResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 3886
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->vivoResponseCode:I
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->completed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduResponseCode:I
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->completed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3887
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detected is completed, isVivo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->isVivo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3889
    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isDetecting:Z
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23602(Z)Z

    .line 3892
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckInternetThread isVivo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->isVivo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vivoResponseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->vivoResponseCode:I
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", baiduResponseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduResponseCode:I
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3893
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->isSameNetwork()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3933
    :cond_1
    :goto_1
    return-void

    .line 3882
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23302(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 3883
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduIsCaptivePortal()I
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v2

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23302(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3928
    :catch_0
    move-exception v0

    .line 3929
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3930
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckInternetThread catch exception isVivo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->isVivo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$24500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 3896
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->vivoResponseCode:I
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isOK(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduResponseCode:I
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isOK(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3898
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v2, "CheckInternetThread internet is ok"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3899
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->setInternetAccessState(Z)V

    .line 3900
    sget-boolean v1, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoSwitch4GEnabled:Z

    if-eqz v1, :cond_6

    .line 3901
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    move-result-object v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$24000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 3902
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x21016

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3903
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v2, "CheckInternetThread send GOOD_LINK_DETECTED"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$24100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3910
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dismissSwitchMobileNetworkDialog()V
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$19800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    goto/16 :goto_1

    .line 3905
    :cond_6
    sget-boolean v1, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoNoInternetDetectEnabled:Z

    if-eqz v1, :cond_5

    .line 3906
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$24200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 3907
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineWatchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$24300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 3921
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->vivoResponseCode:I
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isBad(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduResponseCode:I
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$23300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isBad(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3923
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v2, "CheckInternetThread internet is not ok"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$24400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3924
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->setInternetAccessState(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
