.class Lcom/android/server/policy/VivoWMPHook$5;
.super Ljava/lang/Object;
.source "VivoWMPHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/VivoWMPHook;->runShell()V
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
    .line 423
    iput-object p1, p0, Lcom/android/server/policy/VivoWMPHook$5;->this$0:Lcom/android/server/policy/VivoWMPHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 426
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$5;->this$0:Lcom/android/server/policy/VivoWMPHook;

    iget-object v0, v0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    .line 427
    return-void
.end method
