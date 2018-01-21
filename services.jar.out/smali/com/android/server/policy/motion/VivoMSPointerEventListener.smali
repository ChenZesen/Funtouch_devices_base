.class public final Lcom/android/server/policy/motion/VivoMSPointerEventListener;
.super Ljava/lang/Object;
.source "VivoMSPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 37
    iput-object p1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/motion/VivoMSPointerEventListener$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$1;-><init>(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/motion/VivoMSPointerEventListener;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/motion/VivoMSPointerEventListener;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->printf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->createGestureDetector()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/policy/motion/VivoMSPointerEventListener;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/motion/VivoMSPointerEventListener;
    .param p1, "x1"    # Landroid/view/GestureDetector;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createGestureDetector()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/motion/VivoMSPointerEventListener$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$2;-><init>(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 537
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "VivoWMPHook"

    const-string v1, "VMSGesture Warning: system isn\'t ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method
