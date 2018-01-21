.class Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread;
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
    name = "QueryDataUsedThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 926
    const-string v4, "VivoHotSpotEnhancer"

    const-string v5, "QueryWlan0Quota Thread runs"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isApEnabled:Z
    invoke-static {v4}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$1800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 929
    const/4 v1, 0x2

    .line 930
    .local v1, "sleeptime":I
    const-wide/16 v2, -0x1

    .line 931
    .local v2, "remainQuota":J
    iget-object v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->getDataRemaining()J
    invoke-static {v4}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v2

    .line 932
    const-string v4, "VivoHotSpotEnhancer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remain quota is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-wide/16 v4, 0x400

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 934
    iget-object v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread$1;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread$1;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 956
    .end local v1    # "sleeptime":I
    .end local v2    # "remainQuota":J
    :cond_0
    return-void

    .line 943
    .restart local v1    # "sleeptime":I
    .restart local v2    # "remainQuota":J
    :cond_1
    const-wide/32 v4, 0x200000

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 944
    const-wide/32 v4, 0x100000

    div-long v4, v2, v4

    long-to-int v1, v4

    .line 951
    :cond_2
    :goto_1
    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 946
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasSetDataSpeedLimit:Z
    invoke-static {v4}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 947
    iget-object v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->setDateSpeedLimit(Z)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3000(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)V

    goto :goto_1
.end method
