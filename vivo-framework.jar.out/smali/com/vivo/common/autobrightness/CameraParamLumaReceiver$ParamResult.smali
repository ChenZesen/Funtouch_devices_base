.class public Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;
.super Ljava/lang/Object;
.source "CameraParamLumaReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParamResult"
.end annotation


# instance fields
.field public mAverage:I

.field public mAverageTop4:I

.field public mLengthThreshold:I

.field public mList:[I

.field public mMax:I

.field public mMin:I

.field public mTag:Ljava/lang/String;

.field public mValid:Z

.field final synthetic this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;I)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "threshold"    # I

    .prologue
    .line 495
    iput-object p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mTag:Ljava/lang/String;

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    .line 498
    iput p3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mLengthThreshold:I

    .line 499
    return-void
.end method


# virtual methods
.method public prepareParamResult(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 502
    if-nez p1, :cond_0

    .line 503
    const-string v6, "CameraParamLumaReceiver"

    const-string v7, "prepareParamResult paramset is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 507
    .local v3, "len":I
    new-array v6, v3, [I

    iput-object v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mList:[I

    .line 510
    iget v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mLengthThreshold:I

    div-int/lit8 v6, v6, 0x2

    if-lt v3, v6, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 511
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mMax:I

    .line 512
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mMin:I

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "average":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 516
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 517
    .local v4, "luma":I
    iget-object v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mList:[I

    aput v4, v6, v1

    .line 518
    add-int/2addr v0, v4

    .line 519
    iget v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mMax:I

    if-le v4, v6, :cond_1

    .line 520
    iput v4, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mMax:I

    .line 522
    :cond_1
    iget v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mMin:I

    if-ge v4, v6, :cond_2

    .line 523
    iput v4, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mMin:I

    .line 515
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 526
    .end local v4    # "luma":I
    :cond_3
    iget-object v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mList:[I

    invoke-static {v6}, Ljava/util/Arrays;->sort([I)V

    .line 528
    const-string v5, "{"

    .line 529
    .local v5, "tempStr":Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_5

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mList:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v6, v3, -0x1

    if-ne v1, v6, :cond_4

    const-string v6, ""

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 530
    :cond_4
    const-string v6, ","

    goto :goto_3

    .line 532
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    iget-object v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 534
    iget-object v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mTag:Ljava/lang/String;

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v5}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    const/4 v6, 0x4

    if-ge v2, v6, :cond_6

    .line 538
    iget-object v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAverageTop4="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lumaList[j]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mList:[I

    sub-int v9, v3, v2

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 539
    iget v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mList:[I

    sub-int v8, v3, v2

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    iput v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 541
    :cond_6
    iget v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    div-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    .line 542
    iget v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mMax:I

    sub-int v6, v0, v6

    iget v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mMin:I

    sub-int/2addr v6, v7

    add-int/lit8 v7, v3, -0x2

    div-int/2addr v6, v7

    iput v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverage:I

    .line 544
    iget-object v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->this$0:Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mAverageTop4="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverageTop4:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " camAvg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mAverage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V

    .line 545
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    goto/16 :goto_0

    .line 547
    .end local v0    # "average":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v5    # "tempStr":Ljava/lang/String;
    :cond_7
    iput-boolean v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;->mValid:Z

    goto/16 :goto_0
.end method
