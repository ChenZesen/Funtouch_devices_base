.class Lcom/vivo/services/hallstate/HallManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "HallManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/hallstate/HallManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/hallstate/HallManagerService;


# direct methods
.method constructor <init>(Lcom/vivo/services/hallstate/HallManagerService;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vivo/services/hallstate/HallManagerService$2;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z
    invoke-static {}, Lcom/vivo/services/hallstate/HallManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "HallManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const/4 v1, 0x1

    # setter for: Lcom/vivo/services/hallstate/HallManagerService;->mBootComplete:Z
    invoke-static {v1}, Lcom/vivo/services/hallstate/HallManagerService;->access$202(Z)Z

    .line 112
    :cond_1
    return-void
.end method
