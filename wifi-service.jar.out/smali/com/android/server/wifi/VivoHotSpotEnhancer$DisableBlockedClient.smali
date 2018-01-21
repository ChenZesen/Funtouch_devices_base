.class Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableBlockedClient;
.super Ljava/lang/Object;
.source "VivoHotSpotEnhancer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoHotSpotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisableBlockedClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableBlockedClient;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 861
    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableBlockedClient;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getBlockedClients()Ljava/util/List;

    move-result-object v0

    .line 862
    .local v0, "blockedClients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 863
    .local v1, "client":Landroid/net/wifi/HotspotClient;
    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableBlockedClient;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/HotspotClient;

    iget-object v5, v1, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/net/wifi/HotspotClient;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->blockClient(Landroid/net/wifi/HotspotClient;)Z

    goto :goto_0

    .line 865
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :cond_0
    return-void
.end method
