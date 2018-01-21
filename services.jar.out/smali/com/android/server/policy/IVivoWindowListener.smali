.class public interface abstract Lcom/android/server/policy/IVivoWindowListener;
.super Ljava/lang/Object;
.source "IVivoWindowListener.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# virtual methods
.method public abstract getWindowToken()Landroid/os/IBinder;
.end method

.method public abstract onFinishScreenTurningOn()V
.end method
