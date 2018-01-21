.class Lcom/android/server/wm/WindowManagerService$12;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 13825
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 13828
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition token died, mGlobalTransition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalTransition:Lcom/android/server/wm/VivoGlobalTransition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGlobalTransitionSequence = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalTransitionSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13830
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTransitionToken:Landroid/os/IBinder;

    .line 13831
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalTransition:Lcom/android/server/wm/VivoGlobalTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalTransition:Lcom/android/server/wm/VivoGlobalTransition;

    iget v0, v0, Lcom/android/server/wm/VivoGlobalTransition;->mSequence:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalTransitionSequence:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 13832
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalTransition:Lcom/android/server/wm/VivoGlobalTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/VivoGlobalTransition;->stop()V

    .line 13833
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalTransition:Lcom/android/server/wm/VivoGlobalTransition;

    .line 13835
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 13837
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$12;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    .line 13839
    :cond_0
    return-void
.end method
