.class Lcom/android/server/policy/motion/VivoMSPointerEventListener$1;
.super Ljava/lang/Object;
.source "VivoMSPointerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/motion/VivoMSPointerEventListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$1;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$1;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    const-string v1, "System is ready, createGestureDetector."

    # invokes: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->printf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$000(Lcom/android/server/policy/motion/VivoMSPointerEventListener;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$1;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    # invokes: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->createGestureDetector()V
    invoke-static {v0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$100(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)V

    .line 56
    return-void

    .line 54
    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
