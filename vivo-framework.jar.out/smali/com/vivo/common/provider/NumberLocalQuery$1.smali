.class Lcom/vivo/common/provider/NumberLocalQuery$1;
.super Landroid/content/BroadcastReceiver;
.source "NumberLocalQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/provider/NumberLocalQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/provider/NumberLocalQuery;


# direct methods
.method constructor <init>(Lcom/vivo/common/provider/NumberLocalQuery;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/vivo/common/provider/NumberLocalQuery$1;->this$0:Lcom/vivo/common/provider/NumberLocalQuery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 743
    const-string v0, "refresh.attr.data"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    # getter for: Lcom/vivo/common/provider/NumberLocalQuery;->ROUTE:Z
    invoke-static {}, Lcom/vivo/common/provider/NumberLocalQuery;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    const-string v0, "NumberLocalQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vivo/common/provider/NumberLocalQuery$1;->this$0:Lcom/vivo/common/provider/NumberLocalQuery;

    # getter for: Lcom/vivo/common/provider/NumberLocalQuery;->pkg:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/common/provider/NumberLocalQuery;->access$100(Lcom/vivo/common/provider/NumberLocalQuery;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || refresh ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/provider/NumberLocalQuery$1;->this$0:Lcom/vivo/common/provider/NumberLocalQuery;

    # invokes: Lcom/vivo/common/provider/NumberLocalQuery;->prepareAttributionData()V
    invoke-static {v0}, Lcom/vivo/common/provider/NumberLocalQuery;->access$200(Lcom/vivo/common/provider/NumberLocalQuery;)V

    .line 748
    :cond_1
    return-void
.end method
