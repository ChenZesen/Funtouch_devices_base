.class Lcom/vivo/common/utils/VivoWallpaperManager$3;
.super Landroid/content/BroadcastReceiver;
.source "VivoWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/utils/VivoWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/utils/VivoWallpaperManager;


# direct methods
.method constructor <init>(Lcom/vivo/common/utils/VivoWallpaperManager;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/vivo/common/utils/VivoWallpaperManager$3;->this$0:Lcom/vivo/common/utils/VivoWallpaperManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 577
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.intent.bbk_setlockbg_return"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    const-string v2, "isSet"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 580
    .local v1, "isSet":Z
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager$3;->this$0:Lcom/vivo/common/utils/VivoWallpaperManager;

    # getter for: Lcom/vivo/common/utils/VivoWallpaperManager;->mCheckedChangeLockbgListener:Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;
    invoke-static {v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->access$200(Lcom/vivo/common/utils/VivoWallpaperManager;)Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 581
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager$3;->this$0:Lcom/vivo/common/utils/VivoWallpaperManager;

    # getter for: Lcom/vivo/common/utils/VivoWallpaperManager;->mCheckedChangeLockbgListener:Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;
    invoke-static {v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->access$200(Lcom/vivo/common/utils/VivoWallpaperManager;)Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;->onCheckedChanged(Z)V

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager$3;->this$0:Lcom/vivo/common/utils/VivoWallpaperManager;

    # invokes: Lcom/vivo/common/utils/VivoWallpaperManager;->unregisterSetLockbgDialogReceiver()V
    invoke-static {v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->access$300(Lcom/vivo/common/utils/VivoWallpaperManager;)V

    .line 585
    .end local v1    # "isSet":Z
    :cond_1
    return-void
.end method
