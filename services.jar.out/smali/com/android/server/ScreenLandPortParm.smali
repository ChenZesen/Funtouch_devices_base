.class public Lcom/android/server/ScreenLandPortParm;
.super Ljava/lang/Object;
.source "ScreenLandPortParm.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenWidthDp:I

.field public smallestScreenWidthDp:I


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->orientation:I

    .line 24
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->screenWidthDp:I

    .line 25
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->screenHeightDp:I

    .line 26
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->smallestScreenWidthDp:I

    .line 27
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->densityDpi:I

    .line 28
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->compatScreenWidthDp:I

    .line 29
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->compatScreenHeightDp:I

    .line 30
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->compatSmallestScreenWidthDp:I

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/android/server/ScreenLandPortParm;)V
    .locals 1
    .param p1, "config"    # Lcom/android/server/ScreenLandPortParm;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget v0, p1, Lcom/android/server/ScreenLandPortParm;->orientation:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->orientation:I

    .line 35
    iget v0, p1, Lcom/android/server/ScreenLandPortParm;->screenWidthDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->screenWidthDp:I

    .line 36
    iget v0, p1, Lcom/android/server/ScreenLandPortParm;->screenHeightDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->screenHeightDp:I

    .line 37
    iget v0, p1, Lcom/android/server/ScreenLandPortParm;->smallestScreenWidthDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->smallestScreenWidthDp:I

    .line 38
    iget v0, p1, Lcom/android/server/ScreenLandPortParm;->densityDpi:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->densityDpi:I

    .line 39
    iget v0, p1, Lcom/android/server/ScreenLandPortParm;->compatScreenWidthDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->compatScreenWidthDp:I

    .line 40
    iget v0, p1, Lcom/android/server/ScreenLandPortParm;->compatScreenHeightDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->compatScreenHeightDp:I

    .line 41
    iget v0, p1, Lcom/android/server/ScreenLandPortParm;->compatSmallestScreenWidthDp:I

    iput v0, p0, Lcom/android/server/ScreenLandPortParm;->compatSmallestScreenWidthDp:I

    .line 42
    return-void
.end method
