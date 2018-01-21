.class Lcom/vivo/services/engineerutile/BBKEngineerUtileService$4;
.super Ljava/lang/Object;
.source "BBKEngineerUtileService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->stopActivityFromAtcid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

.field final synthetic val$_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

    iput-object p2, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$4;->val$_name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

    # getter for: Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->access$100(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 166
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$4;->val$_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 167
    return-void
.end method
