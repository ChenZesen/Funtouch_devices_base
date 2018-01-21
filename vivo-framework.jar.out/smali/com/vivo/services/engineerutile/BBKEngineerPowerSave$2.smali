.class Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$2;
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
    .line 80
    iput-object p1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$2;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$2;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->shutdown()V
    invoke-static {v0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$300(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 84
    return-void
.end method
