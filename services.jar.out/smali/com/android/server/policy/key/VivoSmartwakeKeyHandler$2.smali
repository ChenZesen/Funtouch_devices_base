.class Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$2;
.super Ljava/lang/Object;
.source "VivoSmartwakeKeyHandler.java"

# interfaces
.implements Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->viewEnable(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAnimationEnd()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->viewDisable()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1000(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V

    .line 562
    return-void
.end method
