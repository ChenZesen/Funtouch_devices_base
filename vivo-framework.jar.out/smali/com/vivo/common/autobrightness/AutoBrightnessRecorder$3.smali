.class Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;
.super Ljava/lang/Object;
.source "AutoBrightnessRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 181
    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$600()Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->resetAnimateInfo()V
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$700(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V

    .line 183
    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUpslideHelperShow:Z
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$800()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->getTopActivityPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$000(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/common/autobrightness/AblConfig;->isCanChangeBrightnessApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    :cond_0
    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$600()Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mBrightnessInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;->onUserChangeBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 185
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mBrightnessInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v0

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$1000()I

    move-result v1

    iput v1, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    .line 186
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mBrightnessInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v1

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->putAutobrightInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$1100(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    const-string v0, "AutoBrightnessRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunnable discard mBrightnessInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mBrightnessInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
