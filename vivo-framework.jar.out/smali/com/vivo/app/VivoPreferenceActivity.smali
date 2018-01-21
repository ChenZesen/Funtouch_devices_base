.class public Lcom/vivo/app/VivoPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "VivoPreferenceActivity.java"

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
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 27
    new-instance v0, Lcom/vivo/app/VivoTitleImpl;

    invoke-direct {v0, p0}, Lcom/vivo/app/VivoTitleImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    .line 28
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    iget-object v2, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vivo/app/VivoTitleImpl;->init(Landroid/view/View;)V

    .line 44
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 45
    .local v1, "title":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 46
    iget-object v2, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v2, v1}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/vivo/app/VivoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "listView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 57
    .local v0, "listview":Landroid/widget/ListView;
    invoke-virtual {p0, v0}, Lcom/vivo/app/VivoPreferenceActivity;->setOnTitleClickListener(Landroid/view/View;)V

    .line 58
    return-object v0
.end method

.method public getTitleCenterView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->getTitleCenterView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getTitleLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->getTitleLeftButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->getTitleRightButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public hideTitleLeftButton()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->hideTitleLeftButton()V

    .line 143
    return-void
.end method

.method public hideTitleRightButton()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->hideTitleRightButton()V

    .line 148
    return-void
.end method

.method public initTitleLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/app/VivoTitleImpl;->initTitleLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public initTitleRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/CharSequence;
    .param p2, "drawableId"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/app/VivoTitleImpl;->initTitleRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lcom/vivo/app/VivoPreferenceActivity;->initViews()V

    .line 34
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-direct {p0}, Lcom/vivo/app/VivoPreferenceActivity;->initViews()V

    .line 40
    return-void
.end method

.method public setOnTitleClickListener()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->setOnTitleClickListener()V

    .line 181
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setOnTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setOnTitleClickListener(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public setTitleCenterSubText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterSubText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public setTitleCenterSubViewVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterSubViewVisible(Z)V

    .line 166
    return-void
.end method

.method public setTitleCenterText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleCenterText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public setTitleLeftButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonEnable(Z)V

    .line 93
    return-void
.end method

.method public setTitleLeftButtonIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonIcon(I)V

    .line 113
    return-void
.end method

.method public setTitleLeftButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method public setTitleRightButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonEnable(Z)V

    .line 98
    return-void
.end method

.method public setTitleRightButtonIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonIcon(I)V

    .line 118
    return-void
.end method

.method public setTitleRightButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoTitleImpl;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public showTitleLeftButton()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->showTitleLeftButton()V

    .line 133
    return-void
.end method

.method public showTitleRightButton()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vivo/app/VivoPreferenceActivity;->mVivoTitleImpl:Lcom/vivo/app/VivoTitleImpl;

    invoke-virtual {v0}, Lcom/vivo/app/VivoTitleImpl;->showTitleRightButton()V

    .line 138
    return-void
.end method
