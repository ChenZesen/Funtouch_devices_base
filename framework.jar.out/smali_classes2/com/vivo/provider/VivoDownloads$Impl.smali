.class public final Lcom/vivo/provider/VivoDownloads$Impl;
.super Ljava/lang/Object;
.source "VivoDownloads.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/provider/VivoDownloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation


# static fields
.field public static final COLUMN_DESTINATION_SUB_DIR:Ljava/lang/String; = "destination_subdir"

.field public static final COLUMN_GROUP_POSITION:Ljava/lang/String; = "position"

.field public static final COLUMN_NETWORK_CHANGED_PAUSED:Ljava/lang/String; = "network_changed"

.field public static final COLUMN_OMA_DOWNLOAD_DD_FILE_INFO_DESCRIPTION:Ljava/lang/String; = "OMA_Download_DDFileInfo_Description"

.field public static final COLUMN_OMA_DOWNLOAD_DD_FILE_INFO_NAME:Ljava/lang/String; = "OMA_Download_DDFileInfo_Name"

.field public static final COLUMN_OMA_DOWNLOAD_DD_FILE_INFO_SIZE:Ljava/lang/String; = "OMA_Download_DDFileInfo_Size"

.field public static final COLUMN_OMA_DOWNLOAD_DD_FILE_INFO_TYPE:Ljava/lang/String; = "OMA_Download_DDFileInfo_Type"

.field public static final COLUMN_OMA_DOWNLOAD_DD_FILE_INFO_VENDOR:Ljava/lang/String; = "OMA_Download_DDFileInfo_Vendor"

.field public static final COLUMN_OMA_DOWNLOAD_FLAG:Ljava/lang/String; = "OMA_Download"

.field public static final COLUMN_OMA_DOWNLOAD_INSTALL_NOTIFY_URL:Ljava/lang/String; = "OMA_Download_Install_Notify_Url"

.field public static final COLUMN_OMA_DOWNLOAD_NEXT_URL:Ljava/lang/String; = "OMA_Download_Next_Url"

.field public static final COLUMN_OMA_DOWNLOAD_OBJECT_URL:Ljava/lang/String; = "OMA_Download_Object_Url"

.field public static final COLUMN_OMA_DOWNLOAD_STATUS:Ljava/lang/String; = "OMA_Download_Status"

.field public static final COLUMN_PASSWORD:Ljava/lang/String; = "password"

.field public static final COLUMN_USERNAME:Ljava/lang/String; = "username"

.field public static final CONTINUE_DOWNLOAD_WITH_SAME_FILENAME:Ljava/lang/String; = "continue_download_with_same_filename"

.field public static final DOWNLOAD_PATH_SELECTED_FROM_FILEMANAGER:Ljava/lang/String; = "download_path_selected_from_filemanager"

.field public static final DRM_RIGHT_VALID:Ljava/lang/String; = "drm_right_valid"

.field public static final MTK_OMA_DOWNLOAD_SUPPORT:Z = true

.field public static final OMADL_OCCUR_ERROR_NEED_NOTIFY:Ljava/lang/String; = "OMADL_ERROR_NEED_NOTIFY"

.field public static final OMADL_STATUS_DOWNLOAD_COMPLETELY:I = 0xc8

.field public static final OMADL_STATUS_ERROR_ALERTDIALOG_SHOWED:I = 0x257

.field public static final OMADL_STATUS_ERROR_ATTRIBUTE_MISMATCH:I = 0x200

.field public static final OMADL_STATUS_ERROR_INSTALL_FAILED:I = 0x190

.field public static final OMADL_STATUS_ERROR_INSUFFICIENT_MEMORY:I = 0x193

.field public static final OMADL_STATUS_ERROR_INVALID_DDVERSION:I = 0x203

.field public static final OMADL_STATUS_ERROR_INVALID_DESCRIPTOR:I = 0x194

.field public static final OMADL_STATUS_ERROR_NON_ACCEPTABLE_CONTENT:I = 0x1ec

.field public static final OMADL_STATUS_ERROR_USER_CANCELLED:I = 0x1ea

.field public static final OMADL_STATUS_ERROR_USER_DOWNLOAD_MEDIA_OBJECT:I = 0x1eb

.field public static final OMADL_STATUS_HAS_NEXT_URL:I = 0xcb

.field public static final OMADL_STATUS_PARSE_DDFILE_SUCCESS:I = 0xc9

.field public static final STATUS_NEED_HTTP_AUTH:I = 0x191

.field public static final STATUS_PAUSED_BY_MANUAL:I = 0xc5


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 390
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 382
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
