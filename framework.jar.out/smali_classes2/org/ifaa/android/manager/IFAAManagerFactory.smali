.class public Lorg/ifaa/android/manager/IFAAManagerFactory;
.super Ljava/lang/Object;
.source "IFAAManagerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IFAAManagerFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIFAAManager(Landroid/content/Context;I)Lorg/ifaa/android/manager/IFAAManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authType"    # I

    .prologue
    .line 24
    const-string v0, "IFAAManagerFactory"

    const-string v1, "getIFAAManager enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Lorg/ifaa/android/manager/AlipayIFAAManager;

    invoke-direct {v0, p0}, Lorg/ifaa/android/manager/AlipayIFAAManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
