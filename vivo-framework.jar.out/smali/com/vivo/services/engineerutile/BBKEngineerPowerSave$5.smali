.class Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$5;
.super Landroid/database/ContentObserver;
.source "BBKEngineerPowerSave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;


# direct methods
.method constructor <init>(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$5;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 196
    const-string v0, "BBKEngineerUtileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$5;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->simCardReady()Z
    invoke-static {v0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$1200(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$5;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->unRegisterNetworkEvent()V
    invoke-static {v0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$700(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 199
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$5;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->cancelAlarmManager()V
    invoke-static {v0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$800(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 201
    :cond_0
    return-void
.end method
