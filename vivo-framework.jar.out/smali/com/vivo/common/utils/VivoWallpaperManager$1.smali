.class Lcom/vivo/common/utils/VivoWallpaperManager$1;
.super Landroid/os/Handler;
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
    .line 80
    iput-object p1, p0, Lcom/vivo/common/utils/VivoWallpaperManager$1;->this$0:Lcom/vivo/common/utils/VivoWallpaperManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager$1;->this$0:Lcom/vivo/common/utils/VivoWallpaperManager;

    # getter for: Lcom/vivo/common/utils/VivoWallpaperManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/vivo/common/utils/VivoWallpaperManager;->access$000(Lcom/vivo/common/utils/VivoWallpaperManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager$1;->this$0:Lcom/vivo/common/utils/VivoWallpaperManager;

    invoke-virtual {v0}, Lcom/vivo/common/utils/VivoWallpaperManager;->changeCurLockBitmap()V

    .line 85
    monitor-exit v1

    .line 87
    :cond_0
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
