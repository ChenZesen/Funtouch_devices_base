.class public interface abstract Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;
.super Ljava/lang/Object;
.source "AppWidgetPhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAlbumInfoChange"
.end annotation


# virtual methods
.method public abstract nextAlbum(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onStorageModeChange(Z)V
.end method

.method public abstract onUpdateAlbum(Landroid/graphics/Bitmap;)V
.end method

.method public abstract prevAlbum(Landroid/graphics/Bitmap;)V
.end method
