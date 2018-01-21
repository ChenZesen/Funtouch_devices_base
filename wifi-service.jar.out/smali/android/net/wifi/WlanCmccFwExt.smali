.class public Landroid/net/wifi/WlanCmccFwExt;
.super Ljava/lang/Object;
.source "WlanCmccFwExt.java"


# static fields
.field private static final CMCC_PROP_TAG:Ljava/lang/String; = "ro.vivo.op.entry"

.field private static final CMCC_PROP_VALUE:Ljava/lang/String; = "CMCC"


# instance fields
.field public mdefault:Landroid/net/wifi/DefaultWifiFwkExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Landroid/net/wifi/IWifiFwkExt;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Landroid/net/wifi/DefaultWifiFwkExt;

    invoke-direct {v0, p0}, Landroid/net/wifi/DefaultWifiFwkExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
