.class Lcom/vivo/common/utils/VivoWallpaperManager$2;
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
    .line 550
    iput-object p1, p0, Lcom/vivo/common/utils/VivoWallpaperManager$2;->this$0:Lcom/vivo/common/utils/VivoWallpaperManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x3e9

    .line 552
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.mediatek.lockscreen.action.WALLPAPER_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    const-string v2, "com.mediatek.lockscreen.extra.COMPLETE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 555
    .local v1, "complete":Z
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager$2;->this$0:Lcom/vivo/common/utils/VivoWallpaperManager;

    # getter for: Lcom/vivo/common/utils/VivoWallpaperManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->access$100(Lcom/vivo/common/utils/VivoWallpaperManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager$2;->this$0:Lcom/vivo/common/utils/VivoWallpaperManager;

    # getter for: Lcom/vivo/common/utils/VivoWallpaperManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->access$100(Lcom/vivo/common/utils/VivoWallpaperManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 558
    .end local v1    # "complete":Z
    :cond_0
    return-void
.end method
