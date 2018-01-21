.class Landroid/widget/PopupWindow$PopupBackgroundView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupBackgroundView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2191
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    .line 2192
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2193
    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 2197
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAboveAnchor:Z
    invoke-static {v1}, Landroid/widget/PopupWindow;->access$1200(Landroid/widget/PopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2198
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2199
    .local v0, "drawableState":[I
    # getter for: Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I
    invoke-static {}, Landroid/widget/PopupWindow;->access$1300()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 2202
    .end local v0    # "drawableState":[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2209
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2210
    sget-boolean v1, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    if-eqz v1, :cond_0

    .line 2211
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mElevation:F
    invoke-static {v1}, Landroid/widget/PopupWindow;->access$1400(Landroid/widget/PopupWindow;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 2224
    :cond_0
    :goto_0
    return-void

    .line 2214
    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mDisplayMode:I
    invoke-static {v1}, Landroid/widget/PopupWindow;->access$1500(Landroid/widget/PopupWindow;)I

    move-result v0

    .line 2215
    .local v0, "mode":I
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mActivityManager:Landroid/app/VivoSmartMultiWindowManager;
    invoke-static {v1}, Landroid/widget/PopupWindow;->access$1600(Landroid/widget/PopupWindow;)Landroid/app/VivoSmartMultiWindowManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2216
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mActivityManager:Landroid/app/VivoSmartMultiWindowManager;
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$1600(Landroid/widget/PopupWindow;)Landroid/app/VivoSmartMultiWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/VivoSmartMultiWindowManager;->getStackDisplayMode()I

    move-result v2

    # setter for: Landroid/widget/PopupWindow;->mDisplayMode:I
    invoke-static {v1, v2}, Landroid/widget/PopupWindow;->access$1502(Landroid/widget/PopupWindow;I)I

    .line 2218
    :cond_2
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mDisplayMode:I
    invoke-static {v1}, Landroid/widget/PopupWindow;->access$1500(Landroid/widget/PopupWindow;)I

    move-result v1

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 2219
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupBackgroundView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method
