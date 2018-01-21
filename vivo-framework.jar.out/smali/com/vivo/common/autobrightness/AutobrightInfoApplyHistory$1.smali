.class Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$1;
.super Ljava/lang/Object;
.source "AutobrightInfoApplyHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$1;->this$0:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$1;->this$0:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    # getter for: Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->access$000(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$1;->this$0:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    # getter for: Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->access$100(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 66
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "AutobrightInfoApplyHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRunnable size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$1;->this$0:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    # getter for: Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->access$100(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$1;->this$0:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    # invokes: Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->infoListToJsonLocked()V
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->access$200(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;)V

    .line 70
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$1;->this$0:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    # getter for: Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;->access$100(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    :cond_1
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
