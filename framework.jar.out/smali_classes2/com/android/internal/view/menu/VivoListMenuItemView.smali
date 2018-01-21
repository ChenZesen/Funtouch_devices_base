.class public final Lcom/android/internal/view/menu/VivoListMenuItemView;
.super Landroid/widget/TextView;
.source "VivoListMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDisabledAlpha:F

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mPositionIconAvailable:Landroid/graphics/Rect;

.field private mPositionIconOutput:Landroid/graphics/Rect;

.field private mShortcutCaption:Ljava/lang/String;

.field private mShortcutCaptionMode:Z

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mAudioManager:Landroid/media/AudioManager;

    .line 53
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private positionIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .line 230
    .local v0, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 231
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 198
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 200
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 205
    .local v0, "isInAlphaState":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mDisabledAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 208
    .end local v0    # "isInAlphaState":Z
    :cond_1
    return-void

    .line 203
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    .restart local v0    # "isInAlphaState":Z
    :cond_3
    const/16 v1, 0xff

    goto :goto_1
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
        retrieveReturn = true
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/VivoListMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setVisibility(I)V

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setEnabled(Z)V

    .line 82
    return-void

    .line 80
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

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setClickable(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setFocusable(Z)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 213
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 215
    invoke-direct {p0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->positionIcon()V

    .line 216
    return-void
.end method

.method public performClick()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    :goto_0
    return v1

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v4, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->isSoundEffectsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 99
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    move v1, v2

    .line 102
    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method setCaptionMode(Z)V
    .locals 2
    .param p1, "shortcut"    # Z

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-nez v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 138
    :cond_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mShortcutCaptionMode:Z

    .line 140
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
    .local v0, "text":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mShortcutCaption:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mShortcutCaption:Ljava/lang/String;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mShortcutCaption:Ljava/lang/String;

    .line 151
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 236
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 239
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->showsIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 159
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    invoke-virtual {p0, v2, p1, v2, v2}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 166
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setGravity(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->requestLayout()V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 178
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setGravity(I)V

    goto :goto_0
.end method

.method public setItemData(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "data"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 86
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "itemInvoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 184
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 1
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mShortcutCaption:Ljava/lang/String;

    .line 249
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setCaptionMode(Z)V

    .line 251
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/view/menu/VivoListMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setCaptionMode(Z)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/VivoListMenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method
