.class Lcom/android/server/policy/VivoWMPHook$4;
.super Ljava/lang/Object;
.source "VivoWMPHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoWMPHook;
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
    .line 405
    iput-object p1, p0, Lcom/android/server/policy/VivoWMPHook$4;->this$0:Lcom/android/server/policy/VivoWMPHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$4;->this$0:Lcom/android/server/policy/VivoWMPHook;

    # invokes: Lcom/android/server/policy/VivoWMPHook;->showInputTestWindow()V
    invoke-static {v0}, Lcom/android/server/policy/VivoWMPHook;->access$400(Lcom/android/server/policy/VivoWMPHook;)V

    .line 409
    return-void
.end method
