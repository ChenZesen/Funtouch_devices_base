.class public Lcom/vivo/common/utils/StorageManagerWrapper;
.super Ljava/lang/Object;
.source "StorageManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageManagerWrapper"

.field private static sInstance:Lcom/vivo/common/utils/StorageManagerWrapper;


# instance fields
.field private isSupportTF:Z

.field private mExternalStoragePath:Ljava/lang/String;

.field private mInternalStoragePath:Ljava/lang/String;

.field private mPathList:[Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;

.field private sMethodgetVolumePaths:Ljava/lang/reflect/Method;

.field private sMethodgetVolumeState:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v6, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->isSupportTF:Z

    .line 115
    const-string v6, "/storage/sdcard0"

    iput-object v6, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mInternalStoragePath:Ljava/lang/String;

    .line 116
    const-string v6, "/storage/sdcard0/external_sd"

    iput-object v6, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 43
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :try_start_0
    iput-object p1, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mTarget:Ljava/lang/Object;

    .line 44
    const-string v6, "getVolumePaths"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->sMethodgetVolumePaths:Ljava/lang/reflect/Method;

    .line 45
    const-string v6, "getVolumeState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->sMethodgetVolumeState:Ljava/lang/reflect/Method;

    .line 47
    invoke-virtual {p0}, Lcom/vivo/common/utils/StorageManagerWrapper;->getVolumePaths()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mPathList:[Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mPathList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 50
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/vivo/common/utils/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;

    move-result-object v6

    sget-object v7, Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;->ExternalStorage:Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;

    if-ne v6, v7, :cond_0

    .line 51
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->isSupportTF:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 57
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/vivo/common/utils/StorageManagerWrapper;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 34
    sget-object v0, Lcom/vivo/common/utils/StorageManagerWrapper;->sInstance:Lcom/vivo/common/utils/StorageManagerWrapper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/vivo/common/utils/StorageManagerWrapper;

    invoke-direct {v0, p0}, Lcom/vivo/common/utils/StorageManagerWrapper;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/vivo/common/utils/StorageManagerWrapper;->sInstance:Lcom/vivo/common/utils/StorageManagerWrapper;

    .line 37
    :cond_0
    sget-object v0, Lcom/vivo/common/utils/StorageManagerWrapper;->sInstance:Lcom/vivo/common/utils/StorageManagerWrapper;

    return-object v0
.end method

.method private initStoragePath()V
    .locals 8

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/common/utils/StorageManagerWrapper;->getVolumePaths()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 126
    .local v5, "paths":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 127
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/vivo/common/utils/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;

    move-result-object v6

    sget-object v7, Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;->ExternalStorage:Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;

    if-ne v6, v7, :cond_0

    .line 128
    iput-object v4, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    .line 130
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vivo/common/utils/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;

    move-result-object v6

    sget-object v7, Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;

    if-ne v6, v7, :cond_1

    .line 131
    iput-object v4, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mInternalStoragePath:Ljava/lang/String;

    .line 126
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "paths":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 134
    :cond_2
    return-void
.end method


# virtual methods
.method public getAvailSize(Landroid/os/StatFs;)J
    .locals 9
    .param p1, "fs"    # Landroid/os/StatFs;

    .prologue
    const/high16 v8, 0x44800000    # 1024.0f

    .line 137
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v4, v6

    .line 138
    .local v4, "blockSize":J
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 139
    .local v0, "availBlocks":J
    mul-long v6, v4, v0

    long-to-float v6, v6

    div-float/2addr v6, v8

    div-float/2addr v6, v8

    float-to-long v2, v6

    .line 140
    .local v2, "availabeSize":J
    return-wide v2
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/vivo/common/utils/StorageManagerWrapper;->initStoragePath()V

    .line 107
    iget-object v0, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSdState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/vivo/common/utils/StorageManagerWrapper;->initStoragePath()V

    .line 112
    iget-object v0, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/utils/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/vivo/common/utils/StorageManagerWrapper;->initStoragePath()V

    .line 96
    iget-object v0, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mInternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/vivo/common/utils/StorageManagerWrapper;->initStoragePath()V

    .line 101
    iget-object v0, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mInternalStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/common/utils/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorageType(Ljava/lang/String;)Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 81
    const-string v0, "/external_sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sdcard1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    sget-object v0, Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;->ExternalStorage:Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;

    .line 90
    :goto_0
    return-object v0

    .line 84
    :cond_1
    const-string v0, "/sdcard0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    :cond_2
    sget-object v0, Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;

    goto :goto_0

    .line 87
    :cond_3
    const-string v0, "/otg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    sget-object v0, Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;

    goto :goto_0

    .line 90
    :cond_4
    sget-object v0, Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/common/utils/StorageManagerWrapper$StorageType;

    goto :goto_0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->sMethodgetVolumePaths:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mTarget:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-array v1, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->sMethodgetVolumeState:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->mTarget:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "removed"

    goto :goto_0
.end method

.method public isSupportTF()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vivo/common/utils/StorageManagerWrapper;->isSupportTF:Z

    return v0
.end method
