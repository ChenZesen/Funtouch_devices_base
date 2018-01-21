.class public interface abstract Lcom/android/server/policy/IVivoKeyBeforeQueueingListener;
.super Ljava/lang/Object;
.source "IVivoKeyBeforeQueueingListener.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# virtual methods
.method public abstract onInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZZ)I
.end method
