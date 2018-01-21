.class Lcom/android/server/pm/PackageManagerService$ParserRunnable;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserRunnable"
.end annotation


# instance fields
.field private mFile:Ljava/io/File;

.field private mFlags:I

.field private mPackagePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/io/File;I)V
    .locals 1
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "flag"    # I

    .prologue
    .line 20591
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20587
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->mFlags:I

    .line 20592
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->mPackagePath:Ljava/lang/String;

    .line 20593
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->mFlags:I

    or-int/2addr v0, p4

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->mFlags:I

    .line 20594
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->mFile:Ljava/io/File;

    .line 20595
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 20600
    const-string v4, "boot_opt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->mPackagePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20601
    new-instance v3, Landroid/content/pm/PackageParser;

    invoke-direct {v3}, Landroid/content/pm/PackageParser;-><init>()V

    .line 20602
    .local v3, "pp":Landroid/content/pm/PackageParser;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 20603
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser;->setOnlyCoreApps(Z)V

    .line 20604
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 20605
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PackageParserInfo;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v1, v4}, Lcom/android/server/pm/PackageManagerService$PackageParserInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 20608
    .local v1, "pinfo":Lcom/android/server/pm/PackageManagerService$PackageParserInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->mFile:Ljava/io/File;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->mFlags:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 20609
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService$PackageParserInfo;->mPackage:Landroid/content/pm/PackageParser$Package;

    .line 20610
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageParserInfo;->mPackageParser:Landroid/content/pm/PackageParser;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20616
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPackageMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$8000(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 20618
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPackageMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$8000(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$ParserRunnable;->mPackagePath:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20619
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20620
    return-void

    .line 20612
    :catch_0
    move-exception v0

    .line 20614
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageParserInfo;->mPackageParserException:Landroid/content/pm/PackageParser$PackageParserException;

    goto :goto_0

    .line 20619
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
