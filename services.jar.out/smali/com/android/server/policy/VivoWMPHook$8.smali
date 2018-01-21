.class Lcom/android/server/policy/VivoWMPHook$8;
.super Ljava/lang/Object;
.source "VivoWMPHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/VivoWMPHook;->checkDropKeyBeforeQueueing(Landroid/view/KeyEvent;IZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoWMPHook;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoWMPHook;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/server/policy/VivoWMPHook$8;->this$0:Lcom/android/server/policy/VivoWMPHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$8;->this$0:Lcom/android/server/policy/VivoWMPHook;

    # getter for: Lcom/android/server/policy/VivoWMPHook;->isRun:Z
    invoke-static {v0}, Lcom/android/server/policy/VivoWMPHook;->access$500(Lcom/android/server/policy/VivoWMPHook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$8;->this$0:Lcom/android/server/policy/VivoWMPHook;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/VivoWMPHook;->isRun:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoWMPHook;->access$502(Lcom/android/server/policy/VivoWMPHook;Z)Z

    .line 609
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$8;->this$0:Lcom/android/server/policy/VivoWMPHook;

    # invokes: Lcom/android/server/policy/VivoWMPHook;->runShell()V
    invoke-static {v0}, Lcom/android/server/policy/VivoWMPHook;->access$600(Lcom/android/server/policy/VivoWMPHook;)V

    .line 610
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$8;->this$0:Lcom/android/server/policy/VivoWMPHook;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/VivoWMPHook;->isRun:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoWMPHook;->access$502(Lcom/android/server/policy/VivoWMPHook;Z)Z

    .line 612
    :cond_0
    return-void
.end method
