.class public interface abstract Landroid/app/AlertDialog$OnWindowFocusChangeListener;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWindowFocusChangeListener"
.end annotation


# virtual methods
.method public abstract onWindowFocusChanged(Z)V
.end method
