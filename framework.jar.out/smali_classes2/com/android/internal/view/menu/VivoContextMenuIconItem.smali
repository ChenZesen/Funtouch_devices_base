.class public final Lcom/android/internal/view/menu/VivoContextMenuIconItem;
.super Landroid/widget/TextView;
.source "VivoContextMenuIconItem.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x23

.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDisabledAlpha:F

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const v0, 0x301002c

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    const/high16 v0, 0x420c0000    # 35.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mMaxIconSize:I

    .line 56
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mAudioManager:Landroid/media/AudioManager;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
        retrieveReturn = true
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 75
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setVisibility(I)V

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setEnabled(Z)V

    .line 79
    return-void

    .line 77
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setClickable(Z)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setFocusable(Z)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public performClick()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    :goto_0
    return v1

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v4, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->isSoundEffectsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 96
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    move v1, v2

    .line 99
    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method setCaptionMode(Z)V
    .locals 2
    .param p1, "shortcut"    # Z

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 125
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 179
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 183
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 129
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 131
    if-eqz p1, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 134
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 135
    .local v0, "height":I
    iget v3, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    .line 136
    iget v3, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 137
    .local v1, "scale":F
    iget v2, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mMaxIconSize:I

    .line 138
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 140
    .end local v1    # "scale":F
    :cond_0
    iget v3, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    .line 141
    iget v3, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 142
    .restart local v1    # "scale":F
    iget v0, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mMaxIconSize:I

    .line 143
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 146
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    invoke-virtual {p0, v5, p1, v5, v5}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {p0, v7}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setGravity(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->requestLayout()V

    .line 166
    .end local v0    # "height":I
    .end local v2    # "width":I
    :goto_0
    return-void

    .line 161
    :cond_2
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {p0, v7}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setGravity(I)V

    goto :goto_0
.end method

.method public setItemData(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "data"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 83
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "itemInvoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 170
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 196
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/VivoContextMenuIconItem;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method
