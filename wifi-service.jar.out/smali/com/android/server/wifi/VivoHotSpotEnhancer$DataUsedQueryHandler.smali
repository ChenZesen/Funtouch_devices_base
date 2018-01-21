.class Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;
.super Landroid/os/Handler;
.source "VivoHotSpotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoHotSpotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataUsedQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .line 871
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 872
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 877
    const-string v8, "VivoHotSpotEnhancer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "message received:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 879
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 917
    :goto_0
    return-void

    .line 881
    :pswitch_0
    const-wide/16 v0, 0x2

    .line 882
    .local v0, "dynamicDelayTime":J
    const-wide/16 v6, -0x1

    .line 883
    .local v6, "remainQuota":J
    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->getDataRemaining()J
    invoke-static {v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v6

    .line 884
    const-string v8, "VivoHotSpotEnhancer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remain quota is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-wide/32 v8, 0x19000

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 886
    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler$1;

    invoke-direct {v9, p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler$1;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 893
    :cond_0
    const-wide/32 v8, 0x200000

    cmp-long v8, v6, v8

    if-gtz v8, :cond_3

    .line 895
    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasSetDataSpeedLimit:Z
    invoke-static {v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 896
    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v9, 0x1

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->setDateSpeedLimit(Z)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$3000(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)V

    .line 898
    :cond_1
    const-wide/32 v8, 0x100000

    div-long v0, v6, v8

    .line 899
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-nez v8, :cond_2

    const-wide/16 v0, 0x1

    .line 904
    :cond_2
    :goto_1
    const-string v8, "VivoHotSpotEnhancer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dynamic delay time is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 906
    .local v4, "msg1":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v8, v8, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 902
    .end local v4    # "msg1":Landroid/os/Message;
    :cond_3
    const-wide/32 v8, 0x100000

    div-long v0, v6, v8

    goto :goto_1

    .line 909
    .end local v0    # "dynamicDelayTime":J
    .end local v6    # "remainQuota":J
    :pswitch_1
    const-wide/16 v2, 0x5

    .line 910
    .local v2, "fixedDelayTime":J
    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->getDateConsumed()J
    invoke-static {v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$2800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    .line 911
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 912
    .local v5, "msg2":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v8, v8, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v2

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 879
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
