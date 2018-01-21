.class public Lcom/android/internal/view/menu/VivoIconMenuItemView;
.super Landroid/widget/LinearLayout;
.source "VivoIconMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;
.implements Landroid/widget/Checkable;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckable:Z

.field private mContext:Landroid/content/Context;

.field private mEffectiveButton:Landroid/widget/CompoundButton;

.field private mIconVisible:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mOnCheckedChangeListener:Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcut:Landroid/widget/TextView;

.field private mSingleChoice:Z

.field private mTitleImage:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defAttrStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-string v1, "VivoListMenuItemView"

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v4, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->DEBUG:Z

    .line 39
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleImage:Landroid/widget/ImageView;

    .line 40
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 41
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mShortcut:Landroid/widget/TextView;

    .line 43
    const/16 v1, 0x23

    iput v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mMaxIconSize:I

    .line 45
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 46
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 47
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    .line 49
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 50
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 51
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mContext:Landroid/content/Context;

    .line 53
    iput-boolean v4, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mSingleChoice:Z

    .line 54
    iput-boolean v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckable:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mIconVisible:Z

    .line 57
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mAudioManager:Landroid/media/AudioManager;

    .line 59
    iput-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mOnCheckedChangeListener:Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;

    .line 71
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .local v0, "density":F
    iget v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mMaxIconSize:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mMaxIconSize:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/VivoIconMenuItemView;)Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mOnCheckedChangeListener:Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;

    return-object v0
.end method

.method private playSoundEffectiveInternal(I)V
    .locals 2
    .param p1, "soundEffective"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mAudioManager:Landroid/media/AudioManager;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 389
    return-void
.end method

.method private setEnabledRecusive(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 162
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 172
    :cond_0
    return-void

    :cond_1
    move-object v3, p1

    .line 165
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 166
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    move-object v3, p1

    .line 167
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 170
    invoke-direct {p0, v1, p2}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setEnabledRecusive(Landroid/view/View;Z)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setTitlePosition()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/16 v3, 0xe

    const/4 v2, 0x1

    .line 340
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 342
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mIconVisible:Z

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckable:Z

    if-ne v1, v2, :cond_1

    .line 343
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 344
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    return-void

    .line 347
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 348
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 395
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mIconVisible:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 401
    :cond_0
    return-void
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 103
    return-void
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    const/4 v0, 0x0

    .line 107
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mSingleChoice:Z

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setEnabled(Z)V

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setVisibility(I)V

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setCheckable(Z)V

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void

    .line 113
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setClickable(Z)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setFocusable(Z)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 81
    const v0, 0x30d003f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleImage:Landroid/widget/ImageView;

    .line 82
    const v0, 0x30d002a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 83
    const v0, 0x30d0040

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mShortcut:Landroid/widget/TextView;

    .line 84
    const v0, 0x30d0041

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 85
    const v0, 0x30d0042

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 87
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    .line 88
    const-string v0, "VivoListMenuItemView"

    const-string v1, "RadioButton doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    .line 91
    const-string v0, "VivoListMenuItemView"

    const-string v1, "CheckBox doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mShortcut:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 94
    const-string v0, "VivoListMenuItemView"

    const-string v1, "Shortcut doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 97
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not create VivoListMenuItemView because could not find view with id image or title"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_4
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 367
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-ne v2, v3, :cond_1

    .line 368
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setChecked(Z)V

    .line 373
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    :goto_1
    return v0

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-ne v2, v3, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->toggle()V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->isSoundEffectsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 377
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->playSoundEffectiveInternal(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 381
    goto :goto_1
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 6
    .param p1, "checkable"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "otherButton":Landroid/widget/CompoundButton;
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    .line 179
    const-string v1, "VivoListMenuItemView"

    const-string v2, "There are no RadioButton and CheckBox"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v1, "VivoListMenuItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCheckable + [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput-boolean p1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckable:Z

    .line 187
    iget-boolean v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mSingleChoice:Z

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    .line 189
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 192
    const-string v1, "VivoListMenuItemView"

    const-string v2, "set RadioButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_1
    if-eqz p1, :cond_4

    .line 203
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    if-nez v1, :cond_3

    .line 205
    const-string v1, "VivoListMenuItemView"

    const-string v2, "There is no CompoundButton"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setTitlePosition()V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    .line 196
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 199
    const-string v1, "VivoListMenuItemView"

    const-string v2, "set CheckBox"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckable:Z

    .line 210
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/android/internal/view/menu/VivoIconMenuItemView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/VivoIconMenuItemView$1;-><init>(Lcom/android/internal/view/menu/VivoIconMenuItemView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_2

    .line 224
    :cond_4
    iput-boolean v5, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckable:Z

    .line 226
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_5

    .line 227
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 231
    :cond_5
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    if-nez v0, :cond_0

    .line 241
    const-string v0, "VivoListMenuItemView"

    const-string v1, "setChecked failed because RadioButton or CheckBox dosn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v0, "VivoListMenuItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 157
    invoke-direct {p0, p0, p1}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setEnabledRecusive(Landroid/view/View;Z)V

    .line 158
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 305
    const/high16 v1, 0x3f800000    # 1.0f

    .line 307
    .local v1, "scale":F
    if-nez p1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v3, "VivoListMenuItemView"

    const-string v4, "setIcon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->showsIcon()Z

    move-result v3

    if-nez v3, :cond_1

    .line 314
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleImage:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iput-boolean v5, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mIconVisible:Z

    .line 333
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setTitlePosition()V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mIconVisible:Z

    .line 321
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 322
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 324
    .local v2, "width":I
    iget v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_2

    .line 325
    iget v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mMaxIconSize:I

    div-int v3, v2, v3

    int-to-float v1, v3

    .line 326
    :cond_2
    iget v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_3

    .line 327
    iget v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mMaxIconSize:I

    div-int v3, v0, v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 329
    :cond_3
    invoke-virtual {p1, v5, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 330
    iget-object v3, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleImage:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 134
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mOnCheckedChangeListener:Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;

    .line 279
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 2
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 283
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mShortcut:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 284
    const-string v0, "VivoListMenuItemView"

    const-string v1, "There is no shortcutKey"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_2

    .line 289
    const-string v0, "VivoListMenuItemView"

    const-string v1, "setShortcut MenuItemImpl null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mShortcut:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mShortcut:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mShortcut:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mShortcut:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSingleChoice(Z)V
    .locals 1
    .param p1, "single"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mSingleChoice:Z

    .line 274
    iget-boolean v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mCheckable:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setCheckable(Z)V

    .line 275
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 144
    const-string v0, "VivoListMenuItemView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTitle [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public singleChoice()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mSingleChoice:Z

    return v0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView;->mEffectiveButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 263
    :cond_0
    return-void
.end method
