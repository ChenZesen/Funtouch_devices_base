.class public interface abstract Lcom/android/server/policy/IVivoKeyFallbackListener;
.super Ljava/lang/Object;
.source "IVivoKeyFallbackListener.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# virtual methods
.method public abstract onInterceptKeyFallback(Landroid/view/KeyEvent;Landroid/view/View;)I
.end method
