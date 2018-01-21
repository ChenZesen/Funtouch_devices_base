.class Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckInternetThread"
.end annotation


# instance fields
.field private isVivo:Z

.field private netId:I

.field private networkId:I

.field final synthetic this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

.field private token:I

.field private useIp:Z


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;ZZI)V
    .locals 4
    .param p2, "vivo"    # Z
    .param p3, "up"    # Z
    .param p4, "tk"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1620
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    .line 1621
    const-string v1, "NetworkMonitor"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1615
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->isVivo:Z

    .line 1616
    iput-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->useIp:Z

    .line 1617
    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->token:I

    .line 1618
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->networkId:I

    .line 1619
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->netId:I

    .line 1623
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->isVivo:Z

    .line 1624
    iput p4, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->token:I

    .line 1625
    iput-boolean p3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->useIp:Z

    .line 1626
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$5300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->networkId:I

    .line 1627
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->netId:I

    .line 1628
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckInternetThread  isVivo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->isVivo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", useIp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->useIp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->token:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", networkId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", netId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    :goto_0
    return-void

    .line 1631
    :catch_0
    move-exception v0

    .line 1632
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isSameNetwork()Z
    .locals 7

    .prologue
    .line 1636
    const/4 v3, 0x0

    .line 1637
    .local v3, "same":Z
    const/4 v2, -0x1

    .line 1638
    .local v2, "nkid":I
    const/4 v1, -0x1

    .line 1641
    .local v1, "nid":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$5300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    .line 1642
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v4, Landroid/net/Network;->netId:I

    .line 1643
    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->token:I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3200(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->networkId:I

    if-ne v4, v2, :cond_0

    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->netId:I

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDhcpCompleted:Z
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1644
    const/4 v3, 0x1

    .line 1649
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckInternetThread isSameNetwork "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mDhcpCompleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDhcpCompleted:Z
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->token:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$3200(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , networkId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , nid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1653
    return v3

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, 0x8200e

    .line 1657
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->isVivo:Z

    if-eqz v1, :cond_2

    .line 1658
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->useIp:Z

    if-eqz v1, :cond_1

    .line 1659
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoInternetResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5402(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I

    .line 1660
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->useIp:Z

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal(Z)I

    move-result v2

    # setter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoInternetResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5402(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I

    .line 1675
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckInternetThread isVivo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->isVivo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", useIp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->useIp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vivoResponseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoResponseCode:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5500(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", baiduResponseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduResponseCode:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5800(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vivoInternetResponseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoInternetResponseCode:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5400(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", baiduInternetResponseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduInternetResponseCode:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5600(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1680
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->isSameNetwork()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1722
    :cond_0
    :goto_1
    return-void

    .line 1662
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5502(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I

    .line 1663
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->useIp:Z

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal(Z)I

    move-result v2

    # setter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5502(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1718
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch exception isVivo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->isVivo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6500(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V

    .line 1720
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    goto :goto_1

    .line 1666
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->useIp:Z

    if-eqz v1, :cond_3

    .line 1667
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduInternetResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5602(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I

    .line 1668
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->useIp:Z

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->baiduIsCaptivePortal(Z)I
    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5700(Lcom/android/server/connectivity/NetworkMonitor;Z)I

    move-result v2

    # setter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduInternetResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5602(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I

    goto/16 :goto_0

    .line 1670
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5802(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I

    .line 1671
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->useIp:Z

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->baiduIsCaptivePortal(Z)I
    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5700(Lcom/android/server/connectivity/NetworkMonitor;Z)I

    move-result v2

    # setter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduResponseCode:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5802(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;I)I

    goto/16 :goto_0

    .line 1683
    :cond_4
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoResponseCode:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5500(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isOK(I)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5900(Lcom/android/server/connectivity/NetworkMonitor;I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoResponseCode:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5500(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isBad(I)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6000(Lcom/android/server/connectivity/NetworkMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduResponseCode:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5800(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isOK(I)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5900(Lcom/android/server/connectivity/NetworkMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1688
    :cond_5
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x8200e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    goto/16 :goto_1

    .line 1691
    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduInternetResponseCode:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5600(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isBad(I)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6000(Lcom/android/server/connectivity/NetworkMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoInternetResponseCode:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5400(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isBad(I)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6000(Lcom/android/server/connectivity/NetworkMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1692
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x8200e

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    .line 1696
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoResponseCode:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5500(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isAuth(I)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6100(Lcom/android/server/connectivity/NetworkMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1699
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x8200e

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    goto/16 :goto_1

    .line 1710
    :cond_8
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->vivoResponseCode:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5500(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->completed(I)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6200(Lcom/android/server/connectivity/NetworkMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->baiduResponseCode:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->access$5800(Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;)I

    move-result v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->completed(I)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6200(Lcom/android/server/connectivity/NetworkMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$6300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1712
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default transition to ValidatedState, something error ? isVivo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->isVivo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6400(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V

    .line 1714
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet$CheckInternetThread;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CheckInternet;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x8200e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
