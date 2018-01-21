.class Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$1;
.super Ljava/lang/Object;
.source "BBKEngineerPowerSave.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->showShutdownDailog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;


# direct methods
.method constructor <init>(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$1;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 90
    const-string v0, "BBKEngineerUtileService"

    const-string v1, "user cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 92
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$1;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->needStart()Z
    invoke-static {v0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$000(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$1;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->registerNetworkEvent()V
    invoke-static {v0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$100(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 94
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$1;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->setAlarmManager()V
    invoke-static {v0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$200(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 96
    :cond_0
    return-void
.end method
