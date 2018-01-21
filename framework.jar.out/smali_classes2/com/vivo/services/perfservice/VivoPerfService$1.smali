.class Lcom/vivo/services/perfservice/VivoPerfService$1;
.super Ljava/util/TimerTask;
.source "VivoPerfService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/perfservice/VivoPerfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/perfservice/VivoPerfService;


# direct methods
.method constructor <init>(Lcom/vivo/services/perfservice/VivoPerfService;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vivo/services/perfservice/VivoPerfService$1;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/vivo/services/perfservice/VivoPerfService$1;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    invoke-virtual {v1}, Lcom/vivo/services/perfservice/VivoPerfService;->isMCOn()Z

    move-result v0

    .line 107
    .local v0, "mcOn":Z
    const-string v1, "VivoPerfService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/vivo/services/perfservice/VivoPerfService$1;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    const/4 v2, 0x1

    # setter for: Lcom/vivo/services/perfservice/VivoPerfService;->mMCOn:Z
    invoke-static {v1, v2}, Lcom/vivo/services/perfservice/VivoPerfService;->access$002(Lcom/vivo/services/perfservice/VivoPerfService;Z)Z

    .line 111
    :cond_0
    return-void
.end method
