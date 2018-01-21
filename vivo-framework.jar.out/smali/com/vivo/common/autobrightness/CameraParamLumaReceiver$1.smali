.class Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;
.super Ljava/lang/Object;
.source "CameraParamLumaReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 555
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    .line 556
    .local v1, "len":I
    new-instance v8, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.luma.list"

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I
    invoke-static {}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$300()I

    move-result v12

    invoke-direct {v8, v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;-><init>(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;I)V

    .line 557
    .local v8, "mLumaParamResult":Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;
    new-instance v6, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.cct.list"

    const/16 v12, 0x8

    invoke-direct {v6, v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;-><init>(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;I)V

    .line 558
    .local v6, "mCctParamResult":Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;
    new-instance v5, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.backluma.list"

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I
    invoke-static {}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$300()I

    move-result v12

    invoke-direct {v5, v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;-><init>(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;I)V

    .line 559
    .local v5, "mBackLumaParamResult":Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;
    new-instance v3, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.backcct.list"

    const/16 v12, 0x8

    invoke-direct {v3, v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;-><init>(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;I)V

    .line 560
    .local v3, "mBackCctParamResult":Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;
    new-instance v4, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.backindex.list"

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I
    invoke-static {}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$300()I

    move-result v12

    invoke-direct {v4, v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;-><init>(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;I)V

    .line 561
    .local v4, "mBackIndexParamResult":Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;
    new-instance v7, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.index.list"

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I
    invoke-static {}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$300()I

    move-result v12

    invoke-direct {v7, v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;-><init>(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;I)V

    .line 562
    .local v7, "mIndexParamResult":Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;
    const/4 v2, 0x0

    .line 563
    .local v2, "lumaResult":Z
    const-string v9, "{"

    .line 565
    .local v9, "tempStr":Ljava/lang/String;
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$400(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 566
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$500(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 567
    :try_start_0
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 568
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 569
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$700(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 570
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$800(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 571
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$900(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 572
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 574
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v11, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1102(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 576
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWaitRunnable mWaitCameraService="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$400(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " return."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 759
    :goto_0
    return-void

    .line 574
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 582
    :cond_0
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "mWaitRunnable run...."

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 583
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$500(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 585
    :try_start_2
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->prepareParamResult(Ljava/util/List;)V

    .line 586
    iget-boolean v10, v8, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    if-eqz v10, :cond_8

    .line 587
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-boolean v12, v8, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1102(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 588
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget v12, v8, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1202(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 589
    const/4 v2, 0x1

    .line 590
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.luma.average"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v14}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.luma.exception"

    const-string v13, "false"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :goto_1
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->prepareParamResult(Ljava/util/List;)V

    .line 611
    iget-boolean v10, v6, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    if-eqz v10, :cond_b

    .line 612
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget v12, v6, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1302(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 613
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-boolean v12, v6, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1402(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 614
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctException:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1502(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 615
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.cct.average"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v14}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.cct.exception"

    const-string v13, "false"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_2
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->prepareParamResult(Ljava/util/List;)V

    .line 625
    iget-boolean v10, v6, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    if-eqz v10, :cond_c

    .line 626
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget v12, v7, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1602(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 627
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-boolean v12, v7, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1702(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 628
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexException:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1802(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 629
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.index.average"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v14}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.index.exception"

    const-string v13, "false"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :goto_3
    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->USE_CAMERA_FACING_BACK:Z
    invoke-static {}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1900()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 641
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$700(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->prepareParamResult(Ljava/util/List;)V

    .line 642
    iget-boolean v10, v5, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    if-eqz v10, :cond_d

    .line 643
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget v12, v5, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2002(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 644
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-boolean v12, v5, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2102(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 645
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaException:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2202(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 646
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "debug.backluma.average"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I
    invoke-static {v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 647
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backluma.exceptionfalse"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 648
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backluma.exception"

    const-string v13, "false"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backluma.average"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I
    invoke-static {v14}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :goto_4
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$800(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->prepareParamResult(Ljava/util/List;)V

    .line 658
    iget-boolean v10, v3, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    if-eqz v10, :cond_e

    .line 659
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget v12, v3, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2302(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 660
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-boolean v12, v3, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2402(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 661
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctException:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2502(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 662
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "debug.backcct.list="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 663
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "debug.backcct.average"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I
    invoke-static {v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 664
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backcct.exceptionfalse"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 665
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backcct.exception"

    const-string v13, "false"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backcct.average"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I
    invoke-static {v14}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :goto_5
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$900(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->prepareParamResult(Ljava/util/List;)V

    .line 675
    iget-boolean v10, v4, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    if-eqz v10, :cond_f

    .line 676
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget v12, v4, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2602(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 677
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-boolean v12, v4, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2702(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 678
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexException:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2802(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 679
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "debug.backindex.list="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 680
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "debug.backindex.average"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I
    invoke-static {v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 681
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backindex.exceptionfalse"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 682
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backindex.exception"

    const-string v13, "false"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backindex.average"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I
    invoke-static {v14}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_1
    :goto_6
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 693
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 694
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$700(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 695
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$800(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 696
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 697
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$900(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 699
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaException:Z
    invoke-static {v10, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2902(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 700
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 703
    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->USE_CAMERA_FACING_BACK:Z
    invoke-static {}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1900()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 704
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaValid:Z
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 705
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v10

    if-nez v10, :cond_10

    .line 706
    :cond_2
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWaitRunnable change mCameraLumaAverage as max("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 707
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1202(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 712
    :goto_7
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.bothluma.average"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :goto_8
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctValid:Z
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1400(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctValid:Z
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2400(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 718
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v10

    if-nez v10, :cond_12

    .line 719
    :cond_3
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWaitRunnable change mCameraCctAverage as max("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 720
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1302(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 726
    :goto_9
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.bothcct.average"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :goto_a
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexValid:Z
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1700(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexValid:Z
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2700(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 732
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v10

    if-nez v10, :cond_14

    .line 733
    :cond_4
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWaitRunnable change mCameraIndexAverage as max("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 734
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1602(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 740
    :goto_b
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.bothindex.average"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_5
    :goto_c
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.luma.wait_cam"

    const-string v12, "false"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$3000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/vivo/common/autobrightness/LumaInfo;->setCctValue(I)V

    .line 748
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$3000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaValue(I)V

    .line 749
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$3000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/vivo/common/autobrightness/LumaInfo;->setIndexValue(I)V

    .line 750
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$3000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaValid(Z)V

    .line 751
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->isLumaRetry()Z
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$3100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 753
    :cond_6
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$3000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->calcCameraLevel(Lcom/vivo/common/autobrightness/LumaInfo;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$3200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Lcom/vivo/common/autobrightness/LumaInfo;)V

    .line 755
    :cond_7
    const-string v10, "CameraParamLumaReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "got camavg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$3000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vivo/common/autobrightness/LumaInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaResultCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$3300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$3000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Lcom/vivo/common/autobrightness/LumaInfo;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;->onGetLumaResult(Lcom/vivo/common/autobrightness/LumaInfo;)V

    .line 757
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v11, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$402(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    goto/16 :goto_0

    .line 595
    :cond_8
    :try_start_3
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mWaitRunnable mCameraLumaList length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " PROP_CAM_LUMA_EXCETPION hanppened."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 596
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1102(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 597
    const/4 v2, 0x0

    .line 598
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.luma.average"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v14}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.luma.exception"

    const-string v13, "true"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_a

    .line 602
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;
    invoke-static {v10}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v10, v1, -0x1

    if-ne v0, v10, :cond_9

    const-string v10, ""

    :goto_e
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 602
    :cond_9
    const-string v10, ","

    goto :goto_e

    .line 604
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "}"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 605
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "debug.luma.list="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 606
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.luma.list"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v9}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 700
    .end local v0    # "i":I
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 618
    :cond_b
    :try_start_4
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1402(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 619
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x1

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctException:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1502(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 620
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/16 v12, 0x1388

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1302(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 621
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.cct.average"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v14}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.cct.exception"

    const-string v13, "true"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 632
    :cond_c
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1702(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 633
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x1

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexException:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1802(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 634
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/16 v12, 0x1f4

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1602(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    .line 635
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.index.average"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v14}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.index.exception"

    const-string v13, "true"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 651
    :cond_d
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2102(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 652
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x1

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaException:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2202(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 653
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backluma.exception"

    const-string v13, "true"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backluma.exceptiontrue"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 668
    :cond_e
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2402(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 669
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x1

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctException:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2502(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 670
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backcct.exceptiontrue"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 671
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backcct.exception"

    const-string v13, "true"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 685
    :cond_f
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x0

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexValid:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2702(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 686
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const/4 v12, 0x1

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexException:Z
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2802(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z

    .line 687
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backindex.exceptiontrue"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 688
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v12, "debug.backindex.exception"

    const-string v13, "true"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v12, v13}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_6

    .line 709
    :cond_10
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWaitRunnable change mCameraLumaAverage as ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")/2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 710
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1202(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    goto/16 :goto_7

    .line 714
    :cond_11
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWaitRunnable not change mCameraLumaAverage as mCameraLumaValid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mCameraBackLumaValid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaValid:Z
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 715
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.bothluma.average"

    const-string v12, "invalid"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 723
    :cond_12
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWaitRunnable change mCameraCctAverage as ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")/2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 724
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1302(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    goto/16 :goto_9

    .line 728
    :cond_13
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWaitRunnable not change mCameraCctAverage as mCameraCctValid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctValid:Z
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1400(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mCameraBackCctValid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctValid:Z
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2400(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 729
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.bothcct.average"

    const-string v12, "invalid"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 737
    :cond_14
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWaitRunnable change mCameraIndexAverage as ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")/2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 738
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-object v11, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    # setter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1602(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I

    goto/16 :goto_b

    .line 742
    :cond_15
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mWaitRunnable not change mCameraIndexAverage as mCameraIndexValid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexValid:Z
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$1700(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mCameraBackIndexValid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    # getter for: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexValid:Z
    invoke-static {v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$2700(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 743
    iget-object v10, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    const-string v11, "debug.bothindex.average"

    const-string v12, "invalid"

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method
