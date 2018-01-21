.class public abstract Lcom/android/server/policy/AVivoInterceptKeyCallback;
.super Ljava/lang/Object;
.source "AVivoInterceptKeyCallback.java"

# interfaces
.implements Lcom/android/server/policy/IVivoKeyCallback;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field public mIsKeyguardActive:Z

.field public mIsScreenOn:Z

.field public mKeyEvent:Landroid/view/KeyEvent;

.field public mPolicyFlags:I

.field public mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/AVivoInterceptKeyCallback;->mState:I

    return-void
.end method


# virtual methods
.method public onCheckDoubleClickEnabled(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckForward(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckNeedWakeLockWhenScreenOff(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDoubleClick(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 86
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)I
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 55
    const/16 v0, -0x64

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)I
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 66
    const/16 v0, -0x64

    return v0
.end method
