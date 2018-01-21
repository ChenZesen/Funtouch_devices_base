.class public Lcom/android/server/policy/key/VivoSmartwakeView;
.super Landroid/widget/FrameLayout;
.source "VivoSmartwakeView.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private mCharContainer:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/key/VivoSmartwakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/key/VivoSmartwakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeView;->mCharContainer:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    .line 34
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 36
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 37
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 38
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 40
    new-instance v1, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    invoke-direct {v1, p1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeView;->mCharContainer:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    .line 41
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeView;->mCharContainer:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/key/VivoSmartwakeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getmKeyCode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeView;->mCharContainer:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    invoke-virtual {v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->getmKeyCode()I

    move-result v0

    return v0
.end method

.method public setAnimEndlistener(Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeView;->mCharContainer:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->setAnimEndlistener(Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;)V

    .line 57
    return-void
.end method

.method public setmKeyCode(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeView;->mCharContainer:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->setmKeyCode(I)V

    .line 47
    return-void
.end method

.method public startTrackAnimation(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeView;->mCharContainer:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->startTrackAnimation(Z)V

    .line 62
    return-void
.end method

.method public updateDisappearTime(IZ)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "isSecure"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeView;->mCharContainer:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->updateDisappearTime(IZ)V

    .line 67
    return-void
.end method
