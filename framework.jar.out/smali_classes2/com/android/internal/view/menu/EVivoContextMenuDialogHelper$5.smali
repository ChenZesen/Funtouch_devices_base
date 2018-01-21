.class Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$5;
.super Ljava/lang/Object;
.source "EVivoContextMenuDialogHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->switchMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;I)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$5;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    iput p2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$5;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 257
    .local v1, "t":F
    iget v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$5;->val$height:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 258
    .local v0, "h":I
    iget-object v2, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$5;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mContextMenuContent:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$300(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Landroid/widget/LinearLayout;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 259
    return-void
.end method
