.class Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;
.super Landroid/os/Handler;
.source "PreloadingLightSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/PreloadingLightSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/PreloadingLightSensor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    .line 60
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 69
    :pswitch_0
    const-string v0, "PreloadingLightSensor"

    const-string v1, "handleMessage MSG_ENABLE_PRE_LIGHT_SENSOR"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    const/4 v1, 0x1

    # invokes: Lcom/vivo/common/autobrightness/PreloadingLightSensor;->enableLightSensor(Z)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->access$000(Lcom/vivo/common/autobrightness/PreloadingLightSensor;Z)V

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v0, "PreloadingLightSensor"

    const-string v1, "handleMessage MSG_DISABLE_PRE_LIGHT_SENSOR"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;->this$0:Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    const/4 v1, 0x0

    # invokes: Lcom/vivo/common/autobrightness/PreloadingLightSensor;->enableLightSensor(Z)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->access$000(Lcom/vivo/common/autobrightness/PreloadingLightSensor;Z)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
