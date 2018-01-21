.class final Lcom/vivo/app/VivoTitleImpl;
.super Ljava/lang/Object;
.source "VivoTitleImpl.java"

# interfaces
.implements Lcom/vivo/app/IVivoTitle;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBbkTitleView:Lcom/vivo/common/BbkTitleView;

.field private mDefaultLeftButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/vivo/app/VivoTitleImpl$1;

    invoke-direct {v0, p0}, Lcom/vivo/app/VivoTitleImpl$1;-><init>(Lcom/vivo/app/VivoTitleImpl;)V

    iput-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mDefaultLeftButtonClickListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p1, p0, Lcom/vivo/app/VivoTitleImpl;->mActivity:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/app/VivoTitleImpl;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/VivoTitleImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getTitleCenterView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->getCenterView()Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    goto :goto_0
.end method

.method public hideTitleLeftButton()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->hideLeftButton()V

    .line 158
    :cond_0
    return-void
.end method

.method public hideTitleRightButton()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->hideRightButton()V

    .line 165
    :cond_0
    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const v1, 0x30d0072

    .line 36
    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/BbkTitleView;

    iput-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    iget-object v1, p0, Lcom/vivo/app/VivoTitleImpl;->mDefaultLeftButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/vivo/common/BbkTitleView;->setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/BbkTitleView;

    iput-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    goto :goto_0
.end method

.method public initTitleLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/common/BbkTitleView;->initLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    return-void
.end method

.method public initTitleRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/common/BbkTitleView;->initRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 81
    :cond_0
    return-void
.end method

.method public setOnTitleClickListener()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->setOnTitleClickListener()V

    .line 212
    :cond_0
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setOnTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :cond_0
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setOnTitleClickListener(Landroid/view/View;)V

    .line 205
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setCenterText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-void
.end method

.method public setTitleCenterSubText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setCenterSubText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    return-void
.end method

.method public setTitleCenterSubViewVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setCenterSubViewVisible(Z)V

    .line 191
    :cond_0
    return-void
.end method

.method public setTitleCenterText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setCenterText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    return-void
.end method

.method public setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setTitleLeftButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setLeftButtonEnable(Z)V

    .line 88
    :cond_0
    return-void
.end method

.method public setTitleLeftButtonIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setLeftButtonIcon(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public setTitleLeftButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setLeftButtonText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method public setTitleRightButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setRightButtonEnable(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method public setTitleRightButtonIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setRightButtonIcon(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public setTitleRightButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setRightButtonText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    return-void
.end method

.method public showTitleLeftButton()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->showLeftButton()V

    .line 144
    :cond_0
    return-void
.end method

.method public showTitleRightButton()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/vivo/app/VivoTitleImpl;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->showRightButton()V

    .line 151
    :cond_0
    return-void
.end method
