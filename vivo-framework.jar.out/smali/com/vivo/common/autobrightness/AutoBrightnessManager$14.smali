.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$14;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutoBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V
    .locals 0

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$14;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPowerPercent()I
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$14;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraParamLumaController:Lcom/vivo/common/autobrightness/CameraParamLumaController;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3700(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CameraParamLumaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->getPowerPercent()I

    move-result v0

    return v0
.end method

.method public saveModifyRecord(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 1481
    if-nez p1, :cond_1

    .line 1482
    const-string v0, "AutoBrightnessManager"

    const-string v2, "saveModifyRecord obj is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    const-string v3, "10055"

    .line 1486
    .local v3, "label":Ljava/lang/String;
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1487
    const-string v3, "10056"

    .line 1488
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$14;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->saveModifyRecord(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1491
    :cond_2
    if-eqz p1, :cond_0

    .line 1492
    new-instance v11, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1493
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "record"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    new-instance v1, Lcom/vivo/common/autobrightness/DataParameter;

    const-string v2, "1005"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v1 .. v11}, Lcom/vivo/common/autobrightness/DataParameter;-><init>(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 1496
    .local v1, "data":Lcom/vivo/common/autobrightness/DataParameter;
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$14;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$800(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/CollectUseData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/CollectUseData;->sendDataParameter(Lcom/vivo/common/autobrightness/DataParameter;)V

    goto :goto_0
.end method

.method public setSecondUserBrightness(I)V
    .locals 2
    .param p1, "backlight"    # I

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$14;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mRgbAlgo:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    move-result-object v0

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mScreenState:I
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$6500()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->setSecondUserBrightness(II)V

    .line 1471
    return-void
.end method
