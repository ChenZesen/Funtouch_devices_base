.class public Lorg/ifaa/android/manager/AlipayIFAAManager;
.super Lorg/ifaa/android/manager/IFAAManager;
.source "AlipayIFAAManager.java"


# static fields
.field private static PRODUCT_TAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AlipayIFAAManager"


# instance fields
.field private fingerIds:[I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "ro.product.model.bbk"

    sput-object v0, Lorg/ifaa/android/manager/AlipayIFAAManager;->PRODUCT_TAG:Ljava/lang/String;

    .line 71
    const-string v0, "alipayteeclient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManager;-><init>()V

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ifaa/android/manager/AlipayIFAAManager;->fingerIds:[I

    .line 33
    iput-object p1, p0, Lorg/ifaa/android/manager/AlipayIFAAManager;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "vivo-msm8953_6_0"

    return-object v0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v0, "AlipayIFAAManager"

    const-string v1, "getSupportBIOTypes enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 96
    const-string v0, "AlipayIFAAManager"

    const-string v1, "getVersion enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public native processCmd(Landroid/content/Context;[B)[B
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authType"    # I

    .prologue
    .line 54
    const-string v2, "AlipayIFAAManager"

    const-string v3, "startBIOManager enter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
