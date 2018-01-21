.class public interface abstract Landroid/provider/MediaStore$Audio$PlaylistsColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaylistsColumns"
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DATE_ADDED:Ljava/lang/String; = "date_added"

.field public static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PLAYLIST_KEY:Ljava/lang/String; = "title_key"
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field
