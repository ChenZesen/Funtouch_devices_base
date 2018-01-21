.class Lcom/vivo/alphaindex/ToastThumb$DelayedToast;
.super Ljava/lang/Object;
.source "ToastThumb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/alphaindex/ToastThumb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedToast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/alphaindex/ToastThumb;


# direct methods
.method private constructor <init>(Lcom/vivo/alphaindex/ToastThumb;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vivo/alphaindex/ToastThumb$DelayedToast;->this$0:Lcom/vivo/alphaindex/ToastThumb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/alphaindex/ToastThumb;Lcom/vivo/alphaindex/ToastThumb$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/alphaindex/ToastThumb;
    .param p2, "x1"    # Lcom/vivo/alphaindex/ToastThumb$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/vivo/alphaindex/ToastThumb$DelayedToast;-><init>(Lcom/vivo/alphaindex/ToastThumb;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb$DelayedToast;->this$0:Lcom/vivo/alphaindex/ToastThumb;

    # getter for: Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/vivo/alphaindex/ToastThumb;->access$100(Lcom/vivo/alphaindex/ToastThumb;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb$DelayedToast;->this$0:Lcom/vivo/alphaindex/ToastThumb;

    # getter for: Lcom/vivo/alphaindex/ToastThumb;->mIsToastDelayed:Z
    invoke-static {v0}, Lcom/vivo/alphaindex/ToastThumb;->access$200(Lcom/vivo/alphaindex/ToastThumb;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/vivo/alphaindex/ToastThumb$DelayedToast;->this$0:Lcom/vivo/alphaindex/ToastThumb;

    # getter for: Lcom/vivo/alphaindex/ToastThumb;->mToastWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/vivo/alphaindex/ToastThumb;->access$100(Lcom/vivo/alphaindex/ToastThumb;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 75
    :cond_0
    return-void
.end method
