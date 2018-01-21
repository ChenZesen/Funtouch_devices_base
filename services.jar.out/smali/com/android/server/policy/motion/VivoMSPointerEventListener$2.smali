.class Lcom/android/server/policy/motion/VivoMSPointerEventListener$2;
.super Ljava/lang/Object;
.source "VivoMSPointerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/motion/VivoMSPointerEventListener;->createGestureDetector()V
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
    .line 65
    iput-object p1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$2;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$2;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$2;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    # getter for: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$300(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;

    iget-object v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$2;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    invoke-direct {v3, v4}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;-><init>(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    # setter for: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0, v1}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$202(Lcom/android/server/policy/motion/VivoMSPointerEventListener;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    .line 70
    return-void
.end method
