.class public interface abstract Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;
.super Ljava/lang/Object;
.source "AppWidgetMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicUtilWidget"
.end annotation


# virtual methods
.method public abstract emptyMusic(Landroid/graphics/Bitmap;)V
.end method

.method public abstract forceClearMusic()V
.end method

.method public abstract killMusicService()V
.end method

.method public abstract onUpdate(Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;)V
.end method

.method public abstract playMusic(Z)V
.end method

.method public abstract storageState()V
.end method

.method public abstract updateQueryData(Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;)V
.end method
