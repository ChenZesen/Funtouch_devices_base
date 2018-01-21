.class Lcom/vivo/services/perfservice/VivoPerfService$3;
.super Ljava/lang/Thread;
.source "VivoPerfService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/perfservice/VivoPerfService;->setDatabaseOperation(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/perfservice/VivoPerfService;

.field final synthetic val$executeTime:J

.field final synthetic val$pid:I

.field final synthetic val$sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/services/perfservice/VivoPerfService;IJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 402
    iput-object p1, p0, Lcom/vivo/services/perfservice/VivoPerfService$3;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    iput p2, p0, Lcom/vivo/services/perfservice/VivoPerfService$3;->val$pid:I

    iput-wide p3, p0, Lcom/vivo/services/perfservice/VivoPerfService$3;->val$executeTime:J

    iput-object p5, p0, Lcom/vivo/services/perfservice/VivoPerfService$3;->val$sql:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 404
    iget-object v2, p0, Lcom/vivo/services/perfservice/VivoPerfService$3;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    iget v3, p0, Lcom/vivo/services/perfservice/VivoPerfService$3;->val$pid:I

    # invokes: Lcom/vivo/services/perfservice/VivoPerfService;->getProcessName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/vivo/services/perfservice/VivoPerfService;->access$200(Lcom/vivo/services/perfservice/VivoPerfService;I)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "processName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v1, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-wide v2, p0, Lcom/vivo/services/perfservice/VivoPerfService$3;->val$executeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 412
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v2, p0, Lcom/vivo/services/perfservice/VivoPerfService$3;->val$sql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget v2, p0, Lcom/vivo/services/perfservice/VivoPerfService$3;->val$pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    iget-object v2, p0, Lcom/vivo/services/perfservice/VivoPerfService$3;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    const-string v3, "1030_12"

    const-string v4, "database-op"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/vivo/services/perfservice/VivoPerfService;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/vivo/services/perfservice/VivoPerfService;->access$100(Lcom/vivo/services/perfservice/VivoPerfService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
