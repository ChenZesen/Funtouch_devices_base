.class Lcom/android/server/wm/WindowManagerService$11;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .prologue
    .line 13218
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 13220
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 13221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/wm/WindowManagerService;->hideKeyguardLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/wm/WindowManagerService;->access$2000(Lcom/android/server/wm/WindowManagerService;Z)V

    .line 13222
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    .line 13223
    monitor-exit v1

    .line 13224
    return-void

    .line 13223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
