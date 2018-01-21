.class Lcom/android/server/location/GpsLocationProvider$11;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 2581
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2583
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data collect handleMessage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2605
    :goto_0
    return-void

    .line 2587
    :pswitch_0
    const-string v5, "GpsLocationProvider"

    const-string v6, "data collect LOCATION_SUCCESS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2589
    .local v4, "ttff":I
    new-instance v3, Lcom/android/server/location/GpsLocationProvider$GpsData;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mAverFifthSecondGpsData:Lcom/android/server/location/GpsLocationProvider$GpsData;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$GpsData;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/android/server/location/GpsLocationProvider$GpsData;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$GpsData;)V

    .line 2590
    .local v3, "fifth":Lcom/android/server/location/GpsLocationProvider$GpsData;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->getAverageSnrs()Lcom/android/server/location/GpsLocationProvider$GpsData;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$GpsData;

    move-result-object v1

    .line 2591
    .local v1, "current":Lcom/android/server/location/GpsLocationProvider$GpsData;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mReportSvStatusCount:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$4900(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    .line 2592
    .local v0, "count":I
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->dataCollect(ILcom/android/server/location/GpsLocationProvider$GpsData;Lcom/android/server/location/GpsLocationProvider$GpsData;I)V
    invoke-static {v5, v4, v3, v1, v0}, Lcom/android/server/location/GpsLocationProvider;->access$5000(Lcom/android/server/location/GpsLocationProvider;ILcom/android/server/location/GpsLocationProvider$GpsData;Lcom/android/server/location/GpsLocationProvider$GpsData;I)V

    .line 2593
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->clearDataCollect()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$5100(Lcom/android/server/location/GpsLocationProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2602
    .end local v0    # "count":I
    .end local v1    # "current":Lcom/android/server/location/GpsLocationProvider$GpsData;
    .end local v3    # "fifth":Lcom/android/server/location/GpsLocationProvider$GpsData;
    .end local v4    # "ttff":I
    :catch_0
    move-exception v2

    .line 2603
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2596
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v5, "GpsLocationProvider"

    const-string v6, "data collect LOCATION_TIMEOUT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$11;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->getAverageSnrs()Lcom/android/server/location/GpsLocationProvider$GpsData;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$GpsData;

    move-result-object v6

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mAverFifthSecondGpsData:Lcom/android/server/location/GpsLocationProvider$GpsData;
    invoke-static {v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$4702(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$GpsData;)Lcom/android/server/location/GpsLocationProvider$GpsData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2585
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
