.class Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$2;
.super Landroid/app/IProcessObserver$Stub;
.source "AutoBrightnessRecorder.java"


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
    .line 129
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$2;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$2;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$300(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$2;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$200(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 143
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 139
    return-void
.end method
