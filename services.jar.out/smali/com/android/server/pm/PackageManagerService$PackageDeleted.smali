.class Lcom/android/server/pm/PackageManagerService$PackageDeleted;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleted"
.end annotation


# instance fields
.field private final WRITE_INTERVAL:I

.field private final mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCheckLock:Ljava/lang/Object;

.field private mDeletedPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileLock:Ljava/lang/Object;

.field private final mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 20071
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20072
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->WRITE_INTERVAL:I

    .line 20075
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mFileLock:Ljava/lang/Object;

    .line 20076
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mCheckLock:Ljava/lang/Object;

    .line 20077
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20078
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    return-void

    .line 20072
    :cond_0
    const v0, 0x1b7740

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .prologue
    .line 20071
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageDeleted;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method private getFile(I)Landroid/util/AtomicFile;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 20211
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package-deleted.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20212
    .local v0, "fname":Ljava/io/File;
    const/16 v1, 0x1b0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 20213
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private readLP(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 20164
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mFileLock:Ljava/lang/Object;

    monitor-enter v7

    .line 20165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->getFile(I)Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 20166
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 20168
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20169
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 20170
    .local v5, "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 20171
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    .line 20174
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 20176
    :goto_0
    const/16 v6, 0xa

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .line 20177
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 20187
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v3

    .line 20189
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :goto_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20190
    return-void

    .line 20180
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_4
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 20182
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 20183
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :goto_2
    :try_start_5
    const-string v6, "PackageManager"

    const-string v8, "Can\'t find the file package-deleted.list"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 20187
    :try_start_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 20189
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "file":Landroid/util/AtomicFile;
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    .line 20184
    .restart local v1    # "file":Landroid/util/AtomicFile;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v0

    .line 20185
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v6, "PackageManager"

    const-string v8, "Failed to read package usage times"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 20187
    :try_start_8
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 20184
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 20182
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20194
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 20196
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 20197
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 20198
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 20199
    const/4 v1, 0x0

    .line 20204
    :goto_1
    return-object v1

    .line 20201
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20203
    :cond_1
    if-ne v0, p3, :cond_2

    .line 20204
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 20206
    :cond_2
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private writeInternal(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    .line 20133
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mFileLock:Ljava/lang/Object;

    monitor-enter v9

    .line 20134
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->getFile(I)Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 20135
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 20137
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 20138
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20139
    .local v6, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x1b0

    const/16 v11, 0x3e8

    const/16 v12, 0x408

    invoke-static {v8, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 20140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 20141
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 20142
    .local v5, "mSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 20143
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 20144
    .local v4, "mPkgName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_1

    .line 20142
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20147
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 20148
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20149
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20150
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 20154
    .end local v3    # "i":I
    .end local v4    # "mPkgName":Ljava/lang/String;
    .end local v5    # "mSize":I
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 20155
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 20156
    :try_start_2
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 20158
    :cond_2
    const-string v8, "PackageManager"

    const-string v10, "Failed to write package usage times"

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20160
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20161
    return-void

    .line 20152
    .restart local v3    # "i":I
    .restart local v5    # "mSize":I
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 20153
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 20160
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "i":I
    .end local v5    # "mSize":I
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8
.end method


# virtual methods
.method addDeletedPkg(ILjava/lang/String;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 20082
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mCheckLock:Ljava/lang/Object;

    monitor-enter v1

    .line 20083
    :try_start_0
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDeletedPkg userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkgName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20084
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 20085
    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    .line 20092
    :goto_0
    return v0

    .line 20088
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->readLP(I)V

    .line 20089
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20090
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->writeInternal(I)V

    .line 20092
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 20093
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkIsAlreadyDeletedPkg(ILjava/lang/String;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 20116
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mCheckLock:Ljava/lang/Object;

    monitor-enter v1

    .line 20117
    :try_start_0
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIsAlreadyDeletedPkg userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pkgName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20118
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 20119
    :cond_0
    monitor-exit v1

    .line 20128
    :goto_0
    return v0

    .line 20122
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->readLP(I)V

    .line 20124
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20125
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 20129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 20128
    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method deleteDeletedPkg(ILjava/lang/String;)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 20097
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mCheckLock:Ljava/lang/Object;

    monitor-enter v1

    .line 20098
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 20099
    :cond_0
    monitor-exit v1

    .line 20111
    :goto_0
    return v0

    .line 20101
    :cond_1
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDeletedPkg userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pkgName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20102
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->readLP(I)V

    .line 20104
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 20112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 20105
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20106
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20107
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->writeInternal(I)V

    .line 20108
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 20111
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageDeleted;->mDeletedPkg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
