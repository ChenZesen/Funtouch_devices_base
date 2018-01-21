.class Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo$AdjustBarHandler;
.super Landroid/os/Handler;
.source "RgbBrightnessCurveAlgo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdjustBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo$AdjustBarHandler;->this$0:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    .line 85
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string v0, "RgbBrightnessCurveAlgo"

    const-string v1, "handleMessage msg is NULL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo$AdjustBarHandler;->this$0:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    # invokes: Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->modifyBrightness()V
    invoke-static {v0}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->access$000(Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo$AdjustBarHandler;->this$0:Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    # invokes: Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->modifyBrightnessMode()V
    invoke-static {v0}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->access$100(Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
