.class public Lcom/vivo/provider/VivoCallLog;
.super Landroid/provider/CallLog;
.source "VivoCallLog.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/provider/VivoCallLog$Calls;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/provider/CallLog;-><init>()V

    .line 38
    return-void
.end method
