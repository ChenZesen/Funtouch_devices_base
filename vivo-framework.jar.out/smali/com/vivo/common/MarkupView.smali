.class public Lcom/vivo/common/MarkupView;
.super Lcom/vivo/common/LinearView;
.source "MarkupView.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private isCheckLayout:Z

.field private isDeleteLayout:Z

.field private isMarkedLayout:Z

.field private strCancel:Ljava/lang/String;

.field private strDelete:Ljava/lang/String;

.field private strOk:Ljava/lang/String;

.field private strReverse:Ljava/lang/String;

.field private strSelectAll:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/MarkupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/LinearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string v1, "Ok"

    iput-object v1, p0, Lcom/vivo/common/MarkupView;->strOk:Ljava/lang/String;

    .line 17
    const-string v1, "Delete"

    iput-object v1, p0, Lcom/vivo/common/MarkupView;->strDelete:Ljava/lang/String;

    .line 18
    const-string v1, "SelectAll"

    iput-object v1, p0, Lcom/vivo/common/MarkupView;->strSelectAll:Ljava/lang/String;

    .line 19
    const-string v1, "Reverse"

    iput-object v1, p0, Lcom/vivo/common/MarkupView;->strReverse:Ljava/lang/String;

    .line 20
    const-string v1, "Cancel"

    iput-object v1, p0, Lcom/vivo/common/MarkupView;->strCancel:Ljava/lang/String;

    .line 22
    iput-boolean v2, p0, Lcom/vivo/common/MarkupView;->isCheckLayout:Z

    .line 23
    iput-boolean v2, p0, Lcom/vivo/common/MarkupView;->isMarkedLayout:Z

    .line 24
    iput-boolean v2, p0, Lcom/vivo/common/MarkupView;->isDeleteLayout:Z

    .line 35
    invoke-virtual {p0}, Lcom/vivo/common/MarkupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 36
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/vivo/common/MarkupView;->strOk:Ljava/lang/String;

    .line 38
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/vivo/common/MarkupView;->strDelete:Ljava/lang/String;

    .line 39
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/vivo/common/MarkupView;->strSelectAll:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/vivo/common/MarkupView;->strReverse:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/vivo/common/MarkupView;->strCancel:Ljava/lang/String;

    .line 43
    :cond_0
    return-void

    .line 37
    :array_0
    .array-data 1
        -0x19t
        -0x5ft
        -0x52t
        -0x1bt
        -0x52t
        -0x66t
    .end array-data

    .line 38
    nop

    :array_1
    .array-data 1
        -0x1bt
        -0x78t
        -0x60t
        -0x17t
        -0x67t
        -0x5ct
    .end array-data

    .line 39
    nop

    :array_2
    .array-data 1
        -0x1bt
        -0x7bt
        -0x58t
        -0x17t
        -0x80t
        -0x77t
    .end array-data

    .line 40
    nop

    :array_3
    .array-data 1
        -0x1bt
        -0x71t
        -0x73t
        -0x17t
        -0x80t
        -0x77t
    .end array-data

    .line 41
    nop

    :array_4
    .array-data 1
        -0x1bt
        -0x71t
        -0x6at
        -0x1at
        -0x4at
        -0x78t
    .end array-data
.end method

.method private removeAllItems()V
    .locals 1

    .prologue
    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/common/MarkupView;->getCurrentItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->removeItem(I)V

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public getCenterOneButton()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/vivo/common/MarkupView;->getCurrentItemCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->getCurrentItem(I)Landroid/widget/Button;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenterTwoButton()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/vivo/common/MarkupView;->getCurrentItemCount()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 129
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->getCurrentItem(I)Landroid/widget/Button;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/vivo/common/MarkupView;->getCurrentItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->getCurrentItem(I)Landroid/widget/Button;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRightButton()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/vivo/common/MarkupView;->getCurrentItemCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 113
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->getCurrentItem(I)Landroid/widget/Button;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCheckLayout()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/vivo/common/MarkupView;->isCheckLayout:Z

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/MarkupView;->removeAllItems()V

    .line 60
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strOk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strCancel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/MarkupView;->isCheckLayout:Z

    goto :goto_0
.end method

.method public initDeleteLayout()V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/vivo/common/MarkupView;->isDeleteLayout:Z

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/MarkupView;->removeAllItems()V

    .line 51
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strDelete:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/MarkupView;->isDeleteLayout:Z

    goto :goto_0
.end method

.method public initMarkedFourLayout()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/vivo/common/MarkupView;->isMarkedLayout:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/MarkupView;->removeAllItems()V

    .line 94
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strDelete:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strSelectAll:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strSelectAll:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strCancel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/MarkupView;->isMarkedLayout:Z

    goto :goto_0
.end method

.method public initMarkedLayout()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/vivo/common/MarkupView;->isMarkedLayout:Z

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/MarkupView;->removeAllItems()V

    .line 81
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strDelete:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strSelectAll:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strReverse:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strCancel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/MarkupView;->isMarkedLayout:Z

    goto :goto_0
.end method

.method public initMarkedThreeLayout()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/vivo/common/MarkupView;->isMarkedLayout:Z

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/MarkupView;->removeAllItems()V

    .line 70
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strDelete:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strSelectAll:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/vivo/common/MarkupView;->strCancel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/MarkupView;->addText(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/MarkupView;->isMarkedLayout:Z

    goto :goto_0
.end method

.method public recycleLayoutValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/vivo/common/MarkupView;->isMarkedLayout:Z

    .line 151
    iput-boolean v0, p0, Lcom/vivo/common/MarkupView;->isDeleteLayout:Z

    .line 152
    iput-boolean v0, p0, Lcom/vivo/common/MarkupView;->isCheckLayout:Z

    .line 153
    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/String;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/vivo/common/MarkupView;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/vivo/common/MarkupView;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "rightText"    # Ljava/lang/String;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/vivo/common/MarkupView;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/vivo/common/MarkupView;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    return-void
.end method
