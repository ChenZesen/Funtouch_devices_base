.class final Lvivo/common/FtColorManager$1;
.super Ljava/lang/Object;
.source "FtColorManager.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvivo/common/FtColorManager;->getInstanceWithCallBack(Landroid/content/Context;Landroid/app/Application;Lvivo/common/FtColorManager$CallBack;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/app/Application;

.field final synthetic val$callback:Lvivo/common/FtColorManager$CallBack;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Application;Lvivo/common/FtColorManager$CallBack;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lvivo/common/FtColorManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lvivo/common/FtColorManager$1;->val$app:Landroid/app/Application;

    iput-object p3, p0, Lvivo/common/FtColorManager$1;->val$callback:Lvivo/common/FtColorManager$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .prologue
    .line 39
    # getter for: Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;
    invoke-static {}, Lvivo/common/FtColorManager;->access$000()Lvivo/common/FtColorManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lvivo/common/FtColorManagerImpl;

    iget-object v1, p0, Lvivo/common/FtColorManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lvivo/common/FtColorManager$1;->val$app:Landroid/app/Application;

    invoke-direct {v0, v1, v2}, Lvivo/common/FtColorManagerImpl;-><init>(Landroid/content/Context;Landroid/app/Application;)V

    # setter for: Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;
    invoke-static {v0}, Lvivo/common/FtColorManager;->access$002(Lvivo/common/FtColorManager;)Lvivo/common/FtColorManager;

    .line 41
    :cond_0
    # getter for: Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;
    invoke-static {}, Lvivo/common/FtColorManager;->access$000()Lvivo/common/FtColorManager;

    move-result-object v0

    check-cast v0, Lvivo/common/FtColorManagerImpl;

    invoke-virtual {v0}, Lvivo/common/FtColorManagerImpl;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x0

    # setter for: Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;
    invoke-static {v0}, Lvivo/common/FtColorManager;->access$002(Lvivo/common/FtColorManager;)Lvivo/common/FtColorManager;

    .line 43
    :cond_1
    iget-object v0, p0, Lvivo/common/FtColorManager$1;->val$callback:Lvivo/common/FtColorManager$CallBack;

    # getter for: Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;
    invoke-static {}, Lvivo/common/FtColorManager;->access$000()Lvivo/common/FtColorManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lvivo/common/FtColorManager$CallBack;->onCallBack(Lvivo/common/FtColorManager;)V

    .line 45
    # getter for: Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;
    invoke-static {}, Lvivo/common/FtColorManager;->access$000()Lvivo/common/FtColorManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    # operator++ for: Lvivo/common/FtColorManager;->sRefCount:I
    invoke-static {}, Lvivo/common/FtColorManager;->access$108()I

    .line 47
    :cond_2
    return-void
.end method
