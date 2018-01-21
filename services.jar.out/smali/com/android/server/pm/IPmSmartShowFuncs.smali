.class public interface abstract Lcom/android/server/pm/IPmSmartShowFuncs;
.super Ljava/lang/Object;
.source "IPmSmartShowFuncs.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# virtual methods
.method public abstract init(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
.end method

.method public abstract unrecoveredProcessLI(Ljava/io/File;Landroid/content/pm/PackageParser$Package;II)V
.end method
