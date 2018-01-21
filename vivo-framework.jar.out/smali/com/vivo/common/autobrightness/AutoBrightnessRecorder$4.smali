.class Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$4;
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
    .line 195
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$4;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$4;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    const-string v1, "mAnimateResetRunnable reset "

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$1200(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$4;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->resetAnimateInfoLocked()V
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$1300(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V

    .line 199
    return-void
.end method
