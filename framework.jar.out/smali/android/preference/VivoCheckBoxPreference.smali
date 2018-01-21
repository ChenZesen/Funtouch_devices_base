.class public Landroid/preference/VivoCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "VivoCheckBoxPreference.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private mCheckBoxView:Landroid/view/View;

.field private mIsWaitingForLoadingEnd:Z

.field private mIsWaitingForLoadingStart:Z

.field private mSendClickAccessibilityEventForVivo:Z

.field private mTextAreaClickable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mTextAreaClickable:Z

    .line 25
    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingStart:Z

    .line 26
    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingEnd:Z

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/VivoCheckBoxPreference;->initLayout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mTextAreaClickable:Z

    .line 25
    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingStart:Z

    .line 26
    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingEnd:Z

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/VivoCheckBoxPreference;->initLayout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method static synthetic access$002(Landroid/preference/VivoCheckBoxPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/preference/VivoCheckBoxPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Landroid/preference/VivoCheckBoxPreference;->mSendClickAccessibilityEventForVivo:Z

    return p1
.end method

.method static synthetic access$100(Landroid/preference/VivoCheckBoxPreference;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/VivoCheckBoxPreference;

    .prologue
    .line 20
    iget-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mTextAreaClickable:Z

    return v0
.end method

.method static synthetic access$200(Landroid/preference/VivoCheckBoxPreference;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/VivoCheckBoxPreference;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/VivoCheckBoxPreference;->preClick()V

    return-void
.end method

.method private initLayout(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    const v4, 0x3030024

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 48
    .local v1, "layout":I
    const/16 v3, 0x9

    const v4, 0x303002a

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 51
    .local v2, "widgetLayout":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-virtual {p0, v1}, Landroid/preference/VivoCheckBoxPreference;->setLayoutResource(I)V

    .line 53
    invoke-virtual {p0, v2}, Landroid/preference/VivoCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 54
    return-void
.end method

.method private preClick()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public endLoading()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingEnd:Z

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingEnd:Z

    .line 81
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/BbkMoveBoolButton;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    check-cast v0, Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v0}, Landroid/widget/BbkMoveBoolButton;->endLoading()Z

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 89
    iget-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingStart:Z

    .line 94
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/BbkMoveBoolButton;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    check-cast v0, Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v0}, Landroid/widget/BbkMoveBoolButton;->isLoading()Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "status":Landroid/widget/BbkMoveBoolButton$Status;
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/BbkMoveBoolButton;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    check-cast v1, Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v1}, Landroid/widget/BbkMoveBoolButton;->getStatus()Landroid/widget/BbkMoveBoolButton$Status;

    move-result-object v0

    .line 115
    :cond_0
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    .line 116
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/BbkMoveBoolButton;

    if-eqz v1, :cond_2

    .line 117
    if-eqz v0, :cond_1

    .line 118
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    check-cast v1, Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v1, v0}, Landroid/widget/BbkMoveBoolButton;->startLoading(Landroid/widget/BbkMoveBoolButton$Status;)V

    .line 120
    :cond_1
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    check-cast v1, Landroid/widget/BbkMoveBoolButton;

    new-instance v2, Landroid/preference/VivoCheckBoxPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/VivoCheckBoxPreference$1;-><init>(Landroid/preference/VivoCheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/BbkMoveBoolButton;->setOnBBKCheckedChangeListener(Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;)V

    .line 156
    iget-boolean v1, p0, Landroid/preference/VivoCheckBoxPreference;->mTextAreaClickable:Z

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 158
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 162
    :cond_2
    iget-boolean v1, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingStart:Z

    if-eqz v1, :cond_3

    .line 163
    iput-boolean v3, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingStart:Z

    .line 164
    invoke-virtual {p0}, Landroid/preference/VivoCheckBoxPreference;->startLoading()V

    .line 166
    :cond_3
    iget-boolean v1, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingEnd:Z

    if-eqz v1, :cond_4

    .line 167
    iput-boolean v3, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingEnd:Z

    .line 168
    invoke-virtual {p0}, Landroid/preference/VivoCheckBoxPreference;->endLoading()V

    .line 171
    :cond_4
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/BbkMoveBoolButton;

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mSendClickAccessibilityEventForVivo:Z

    .line 205
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onPrepareForRemoval()V

    .line 102
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/BbkMoveBoolButton;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    check-cast v0, Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v0}, Landroid/widget/BbkMoveBoolButton;->removeAnimation()V

    .line 105
    :cond_0
    return-void
.end method

.method sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/preference/VivoCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 183
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Landroid/preference/VivoCheckBoxPreference;->mSendClickAccessibilityEventForVivo:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 185
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 186
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 190
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/preference/VivoCheckBoxPreference;->mSendClickAccessibilityEventForVivo:Z

    .line 191
    return-void
.end method

.method public setTextAreaClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Landroid/preference/VivoCheckBoxPreference;->mTextAreaClickable:Z

    .line 210
    return-void
.end method

.method public startLoading()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingStart:Z

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/VivoCheckBoxPreference;->mIsWaitingForLoadingStart:Z

    .line 67
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/BbkMoveBoolButton;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/preference/VivoCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    check-cast v0, Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v0}, Landroid/widget/BbkMoveBoolButton;->startLoading()Z

    goto :goto_0
.end method
