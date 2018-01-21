.class public Lcom/vivo/app/VivoTabActivity;
.super Landroid/app/TabActivity;
.source "VivoTabActivity.java"

# interfaces
.implements Lcom/vivo/app/IVivoTitle;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/vivo/app/VivoTitleImpl;

    invoke-direct {v0, p0}, Lcom/vivo/app/VivoTitleImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    .line 27
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/app/VivoTitleImpl;->init(Landroid/view/View;)V

    .line 43
    invoke-super {p0}, Landroid/app/TabActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 44
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v1, v0}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getTitleCenterView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->getTitleCenterView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getTitleLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->getTitleLeftButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->getTitleRightButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public hideTitleLeftButton()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->hideTitleLeftButton()V

    .line 131
    return-void
.end method

.method public hideTitleRightButton()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->hideTitleRightButton()V

    .line 136
    return-void
.end method

.method public initTitleLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/app/VivoTitleImpl;->initTitleLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public initTitleRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/app/VivoTitleImpl;->initTitleRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/TabActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/vivo/app/VivoTabActivity;->initViews()V

    .line 33
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-direct {p0}, Lcom/vivo/app/VivoTabActivity;->initViews()V

    .line 39
    return-void
.end method

.method public setOnTitleClickListener()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->setOnTitleClickListener()V

    .line 171
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setOnTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setOnTitleClickListener(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-super {p0, p1}, Landroid/app/TabActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public setTitleCenterSubText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterSubText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public setTitleCenterSubViewVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterSubViewVisible(Z)V

    .line 156
    return-void
.end method

.method public setTitleCenterText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public setTitleLeftButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonEnable(Z)V

    .line 81
    return-void
.end method

.method public setTitleLeftButtonIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonIcon(I)V

    .line 101
    return-void
.end method

.method public setTitleLeftButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public setTitleRightButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonEnable(Z)V

    .line 86
    return-void
.end method

.method public setTitleRightButtonIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonIcon(I)V

    .line 106
    return-void
.end method

.method public setTitleRightButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public showTitleLeftButton()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->showTitleLeftButton()V

    .line 121
    return-void
.end method

.method public showTitleRightButton()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vivo/app/VivoTabActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->showTitleRightButton()V

    .line 126
    return-void
.end method
