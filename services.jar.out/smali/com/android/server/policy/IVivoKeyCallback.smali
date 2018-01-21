.class public interface abstract Lcom/android/server/policy/IVivoKeyCallback;
.super Ljava/lang/Object;
.source "IVivoKeyCallback.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# virtual methods
.method public abstract onCheckDoubleClickEnabled(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onCheckForward(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyDoubleClick(ILandroid/view/KeyEvent;)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)I
.end method

.method public abstract onKeyLongPress(ILandroid/view/KeyEvent;)V
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)I
.end method
