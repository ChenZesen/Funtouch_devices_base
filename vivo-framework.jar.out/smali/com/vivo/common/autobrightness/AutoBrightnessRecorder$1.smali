.class Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$1;
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
    .line 110
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x32

    const/4 v4, 0x0

    .line 115
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$1;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->getTopActivityPackageName()Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$000(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AblConfig;->isNeedDelayAnswerApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "AutoBrightnessRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPackageRunnable change mAnswerDelayTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I
    invoke-static {v5}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$102(I)I

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$100()I

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "AutoBrightnessRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPackageRunnable change mAnswerDelayTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I
    invoke-static {v4}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$102(I)I

    goto :goto_0
.end method
