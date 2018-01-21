.class public Lcom/vivo/content/VivoTheme$ThemeIconItem;
.super Ljava/lang/Object;
.source "VivoTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/content/VivoTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeIconItem"
.end annotation


# instance fields
.field private mIconEntry:Ljava/lang/String;

.field private mIconPath:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method


# virtual methods
.method public getIconEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vivo/content/VivoTheme$ThemeIconItem;->mIconEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/vivo/content/VivoTheme$ThemeIconItem;->mIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/vivo/content/VivoTheme$ThemeIconItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setIconEntry(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconEntry"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/vivo/content/VivoTheme$ThemeIconItem;->mIconEntry:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconPath"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/vivo/content/VivoTheme$ThemeIconItem;->mIconPath:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/vivo/content/VivoTheme$ThemeIconItem;->mPackageName:Ljava/lang/String;

    .line 269
    return-void
.end method
