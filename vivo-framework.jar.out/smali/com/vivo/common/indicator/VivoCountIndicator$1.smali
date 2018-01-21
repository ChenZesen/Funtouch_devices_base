.class Lcom/vivo/common/indicator/VivoCountIndicator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VivoCountIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/indicator/VivoCountIndicator;->showIndicatorAnim(Landroid/view/View;ILjava/lang/Boolean;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/indicator/VivoCountIndicator;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$indicator:Landroid/view/View;

.field final synthetic val$isLastIndicator:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/vivo/common/indicator/VivoCountIndicator;Landroid/view/View;Ljava/lang/Boolean;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/vivo/common/indicator/VivoCountIndicator$1;->this$0:Lcom/vivo/common/indicator/VivoCountIndicator;

    iput-object p2, p0, Lcom/vivo/common/indicator/VivoCountIndicator$1;->val$indicator:Landroid/view/View;

    iput-object p3, p0, Lcom/vivo/common/indicator/VivoCountIndicator$1;->val$isLastIndicator:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/vivo/common/indicator/VivoCountIndicator$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator$1;->val$isLastIndicator:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator$1;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/vivo/common/indicator/VivoCountIndicator$1;->val$indicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    return-void
.end method
