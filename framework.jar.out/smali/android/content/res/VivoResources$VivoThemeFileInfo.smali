.class public Landroid/content/res/VivoResources$VivoThemeFileInfo;
.super Ljava/lang/Object;
.source "VivoResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/VivoResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VivoThemeFileInfo"
.end annotation


# instance fields
.field public cookie:I

.field public inputStream:Ljava/io/InputStream;

.field public requestStream:Z

.field public resourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "cookie"    # I
    .param p2, "resourcePath"    # Ljava/lang/String;
    .param p3, "requestStream"    # Z

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput p1, p0, Landroid/content/res/VivoResources$VivoThemeFileInfo;->cookie:I

    .line 322
    iput-object p2, p0, Landroid/content/res/VivoResources$VivoThemeFileInfo;->resourcePath:Ljava/lang/String;

    .line 323
    iput-boolean p3, p0, Landroid/content/res/VivoResources$VivoThemeFileInfo;->requestStream:Z

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "typedValue"    # Landroid/util/TypedValue;
    .param p2, "requestStream"    # Z

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/content/res/VivoResources$VivoThemeFileInfo;->cookie:I

    .line 328
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/VivoResources$VivoThemeFileInfo;->resourcePath:Ljava/lang/String;

    .line 329
    iput-boolean p2, p0, Landroid/content/res/VivoResources$VivoThemeFileInfo;->requestStream:Z

    .line 330
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "requestStream"    # Z

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-boolean p1, p0, Landroid/content/res/VivoResources$VivoThemeFileInfo;->requestStream:Z

    .line 334
    return-void
.end method
