.class public Lcom/vivo/app/VivoBaseActivity;
.super Lcom/vivo/app/SavePowerActivity;
.source "VivoBaseActivity.java"

# interfaces
.implements Lcom/vivo/app/IVivoTitle;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private mContentLayout:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vivo/app/SavePowerActivity;-><init>()V

    .line 31
    new-instance v0, Lcom/vivo/app/VivoTitleImpl;

    invoke-direct {v0, p0}, Lcom/vivo/app/VivoTitleImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    .line 32
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vivo/app/VivoBaseActivity;->mContentLayout:Landroid/widget/FrameLayout;

    .line 55
    iget-object v1, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v1, p1}, Lcom/vivo/app/VivoTitleImpl;->init(Landroid/view/View;)V

    .line 56
    invoke-super {p0}, Lcom/vivo/app/SavePowerActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 57
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v1, v0}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public getTitleCenterView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->getTitleCenterView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getTitleLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->getTitleLeftButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->getTitleRightButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public hideTitleLeftButton()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->hideTitleLeftButton()V

    .line 163
    return-void
.end method

.method public hideTitleRightButton()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->hideTitleRightButton()V

    .line 168
    return-void
.end method

.method public initTitleLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/app/VivoTitleImpl;->initTitleLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method public initTitleRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/app/VivoTitleImpl;->initTitleRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 40
    invoke-virtual {p0}, Lcom/vivo/app/VivoBaseActivity;->useVivoCommonTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vivo/app/VivoBaseActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/app/VivoBaseActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object v1, p0, Lcom/vivo/app/VivoBaseActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x3030030

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    .local v0, "rootView":Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v1}, Lcom/vivo/app/SavePowerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-direct {p0, v0}, Lcom/vivo/app/VivoBaseActivity;->initViews(Landroid/view/View;)V

    .line 50
    .end local v0    # "rootView":Landroid/view/ViewGroup;
    :cond_0
    invoke-super {p0, p1}, Lcom/vivo/app/SavePowerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/vivo/app/VivoBaseActivity;->useVivoCommonTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mContentLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/vivo/app/VivoBaseActivity;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/vivo/app/SavePowerActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/vivo/app/VivoBaseActivity;->useVivoCommonTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mContentLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vivo/app/SavePowerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setOnTitleClickListener()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->setOnTitleClickListener()V

    .line 203
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setOnTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setOnTitleClickListener(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-super {p0, p1}, Lcom/vivo/app/SavePowerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setTitleCenterSubText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterSubText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public setTitleCenterSubViewVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterSubViewVisible(Z)V

    .line 188
    return-void
.end method

.method public setTitleCenterText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method public setTitleLeftButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonEnable(Z)V

    .line 113
    return-void
.end method

.method public setTitleLeftButtonIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonIcon(I)V

    .line 133
    return-void
.end method

.method public setTitleLeftButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method public setTitleRightButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonEnable(Z)V

    .line 118
    return-void
.end method

.method public setTitleRightButtonIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonIcon(I)V

    .line 138
    return-void
.end method

.method public setTitleRightButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public showTitleLeftButton()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->showTitleLeftButton()V

    .line 153
    return-void
.end method

.method public showTitleRightButton()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vivo/app/VivoBaseActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->showTitleRightButton()V

    .line 158
    return-void
.end method

.method public useVivoCommonTitle()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method
