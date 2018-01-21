.class Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;
.super Landroid/os/Handler;
.source "VivoProxCaliService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/proxcali/VivoProxCaliService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPsCalDataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/proxcali/VivoProxCaliService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    .line 838
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 839
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 842
    const-string v0, "VivoProxCaliService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 855
    :goto_0
    return-void

    .line 845
    :pswitch_0
    const-string v0, "VivoProxCaliService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProximityNonWake set cali:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I
    invoke-static {v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$300(Lcom/vivo/services/proxcali/VivoProxCaliService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v0, "VivoProxCaliService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setprop persist.sys.tmp_base_thres_prox "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I
    invoke-static {v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$300(Lcom/vivo/services/proxcali/VivoProxCaliService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v0, "persist.sys.tmp_base_thres_prox"

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$300(Lcom/vivo/services/proxcali/VivoProxCaliService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    iget-object v1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I
    invoke-static {v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$300(Lcom/vivo/services/proxcali/VivoProxCaliService;)I

    move-result v1

    # setter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mLastPsCalData:I
    invoke-static {v0, v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2702(Lcom/vivo/services/proxcali/VivoProxCaliService;I)I

    .line 849
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2800(Lcom/vivo/services/proxcali/VivoProxCaliService;)[I

    move-result-object v0

    aput v3, v0, v3

    .line 850
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2800(Lcom/vivo/services/proxcali/VivoProxCaliService;)[I

    move-result-object v0

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 851
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2800(Lcom/vivo/services/proxcali/VivoProxCaliService;)[I

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mPsOverflowData:I
    invoke-static {v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$300(Lcom/vivo/services/proxcali/VivoProxCaliService;)I

    move-result v2

    aput v2, v0, v1

    .line 852
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;
    invoke-static {v0}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2500(Lcom/vivo/services/proxcali/VivoProxCaliService;)Lcom/sensoroperate/VivoSensorTest;

    move-result-object v0

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestResult:Lcom/sensoroperate/SensorTestResult;
    invoke-static {v2}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2900(Lcom/vivo/services/proxcali/VivoProxCaliService;)Lcom/sensoroperate/SensorTestResult;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I
    invoke-static {v3}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2800(Lcom/vivo/services/proxcali/VivoProxCaliService;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$SetPsCalDataHandler;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    # getter for: Lcom/vivo/services/proxcali/VivoProxCaliService;->mTestArg:[I
    invoke-static {v4}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$2800(Lcom/vivo/services/proxcali/VivoProxCaliService;)[I

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    goto/16 :goto_0

    .line 843
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
