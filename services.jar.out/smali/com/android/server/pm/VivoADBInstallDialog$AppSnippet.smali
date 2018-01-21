.class public Lcom/android/server/pm/VivoADBInstallDialog$AppSnippet;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoADBInstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppSnippet"
.end annotation


# instance fields
.field appName:Ljava/lang/String;

.field icon:Landroid/graphics/drawable/Drawable;

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$AppSnippet;->packageName:Ljava/lang/String;

    .line 429
    iput-object p2, p0, Lcom/android/server/pm/VivoADBInstallDialog$AppSnippet;->appName:Ljava/lang/String;

    .line 430
    iput-object p3, p0, Lcom/android/server/pm/VivoADBInstallDialog$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    .line 431
    return-void
.end method
