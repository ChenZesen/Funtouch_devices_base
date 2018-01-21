.class Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;
.super Ljava/lang/Object;
.source "BBKEngineerPowerSave.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 112
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # getter for: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$400(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # getter for: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$400(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    const-string v1, "BBKEngineerUtileService"

    const-string v2, "user cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # operator-- for: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownSecond:I
    invoke-static {v1}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$510(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)I

    .line 117
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # getter for: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$600(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x30e0160

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # getter for: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownSecond:I
    invoke-static {v4}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$500(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # getter for: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$400(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # getter for: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownSecond:I
    invoke-static {v1}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$500(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->shutdown()V
    invoke-static {v1}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$300(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    iget-object v1, v1, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    iget-object v2, v2, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mCountdownRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
