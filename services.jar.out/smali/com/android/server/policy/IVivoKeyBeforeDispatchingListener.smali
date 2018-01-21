.class public interface abstract Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;
.super Ljava/lang/Object;
.source "IVivoKeyBeforeDispatchingListener.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# virtual methods
.method public abstract onInterceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;IZ)I
.end method
