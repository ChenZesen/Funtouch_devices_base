.class Lcom/android/server/am/ActivityManagerService$22;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$eventTypeAnr:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$processTmp:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Landroid/os/DropBoxManager;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 14737
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$logFile:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$22;->val$eventTypeAnr:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$22;->val$processTmp:Lcom/android/server/am/ProcessRecord;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 14740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 14741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14743
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$logFile:Ljava/io/File;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    .line 14746
    :try_start_0
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$logFile:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14747
    .local v25, "traceRenameFile":Ljava/io/File;
    const-string v27, "anr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$eventTypeAnr:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 14748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$logFile:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_1

    .line 14749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$logFile:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    .line 14750
    .local v26, "tracesPath":Ljava/lang/String;
    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_1

    .line 14752
    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 14753
    .local v18, "lpos":I
    const/16 v27, -0x1

    move/from16 v0, v27

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->anrTraceTime:Ljava/util/Date;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    .line 14754
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$processTmp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->anrTraceTime:Ljava/util/Date;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 14757
    .local v20, "newTracesPath":Ljava/lang/String;
    :goto_0
    new-instance v25, Ljava/io/File;

    .end local v25    # "traceRenameFile":Ljava/io/File;
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14761
    .end local v18    # "lpos":I
    .end local v20    # "newTracesPath":Ljava/lang/String;
    .end local v26    # "tracesPath":Ljava/lang/String;
    .restart local v25    # "traceRenameFile":Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    const/high16 v28, 0x40000

    const-string v29, "\n\n[[TRUNCATED]]"

    move-object/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14768
    .end local v25    # "traceRenameFile":Ljava/io/File;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    .line 14769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14772
    :cond_3
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "logcat_for_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 14773
    .local v24, "setting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 14775
    .local v16, "lines":I
    const-string v27, "anr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$eventTypeAnr:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 14776
    const/16 v16, 0x3e8

    .line 14779
    :cond_4
    if-lez v16, :cond_5

    .line 14780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14783
    const/4 v6, 0x0

    .line 14785
    .local v6, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v27, Ljava/lang/ProcessBuilder;

    const/16 v28, 0xb

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "/system/bin/logcat"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "-v"

    aput-object v30, v28, v29

    const/16 v29, 0x2

    const-string v30, "time"

    aput-object v30, v28, v29

    const/16 v29, 0x3

    const-string v30, "-b"

    aput-object v30, v28, v29

    const/16 v29, 0x4

    const-string v30, "events"

    aput-object v30, v28, v29

    const/16 v29, 0x5

    const-string v30, "-b"

    aput-object v30, v28, v29

    const/16 v29, 0x6

    const-string v30, "system"

    aput-object v30, v28, v29

    const/16 v29, 0x7

    const-string v30, "-b"

    aput-object v30, v28, v29

    const/16 v29, 0x8

    const-string v30, "main"

    aput-object v30, v28, v29

    const/16 v29, 0x9

    const-string v30, "-t"

    aput-object v30, v28, v29

    const/16 v29, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-direct/range {v27 .. v28}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    .line 14792
    .local v17, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14793
    :goto_2
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14794
    :goto_3
    :try_start_4
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14797
    .end local v6    # "input":Ljava/io/InputStreamReader;
    .local v7, "input":Ljava/io/InputStreamReader;
    const/16 v27, 0x2000

    :try_start_5
    move/from16 v0, v27

    new-array v3, v0, [C

    .line 14798
    .local v3, "buf":[C
    :goto_4
    invoke-virtual {v7, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v21

    .local v21, "num":I
    if-lez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    .line 14799
    .end local v3    # "buf":[C
    .end local v21    # "num":I
    :catch_0
    move-exception v5

    move-object v6, v7

    .line 14800
    .end local v7    # "input":Ljava/io/InputStreamReader;
    .end local v17    # "logcat":Ljava/lang/Process;
    .local v5, "e":Ljava/io/IOException;
    .restart local v6    # "input":Ljava/io/InputStreamReader;
    :goto_5
    :try_start_6
    const-string v27, "ActivityManager"

    const-string v28, "Error running logcat"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 14802
    if-eqz v6, :cond_5

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 14807
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "input":Ljava/io/InputStreamReader;
    :cond_5
    :goto_6
    const-string v27, "anr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$eventTypeAnr:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 14808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    const-string v28, "--------- beginning of kernel\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14810
    :try_start_8
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 14811
    .local v12, "kernelBuffer":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 14812
    .local v8, "is":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 14813
    .local v10, "isr":Ljava/io/InputStreamReader;
    const/16 v22, 0x0

    .line 14814
    .local v22, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/File;

    const-string v27, "/data/anr"

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14815
    .local v4, "dropboxFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_6

    .line 14816
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 14818
    :cond_6
    new-instance v13, Ljava/io/File;

    const-string v27, "/data/anr/kernel.log"

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14819
    .local v13, "kernelFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_7

    .line 14820
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 14822
    :cond_7
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 14823
    .local v14, "kernelPath":Ljava/lang/String;
    const-string v27, "vivo_daemon.service"

    invoke-static/range {v27 .. v27}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/daemon/VivoDmServiceProxy;

    move-result-object v19

    .line 14824
    .local v19, "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    if-eqz v19, :cond_f

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 14825
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dmesg > "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShellWithResult(Ljava/lang/String;)Ljava/lang/String;

    .line 14826
    const-string v27, "ActivityManager"

    const-string v28, "get kernel log success"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 14828
    :try_start_9
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 14829
    .end local v8    # "is":Ljava/io/FileInputStream;
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_a
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 14831
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .local v11, "isr":Ljava/io/InputStreamReader;
    :try_start_b
    new-instance v23, Ljava/io/BufferedReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 14832
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .local v23, "reader":Ljava/io/BufferedReader;
    :try_start_c
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 14833
    .local v15, "line":Ljava/lang/String;
    :goto_7
    if-eqz v15, :cond_b

    .line 14834
    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14835
    const-string v27, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14836
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result-object v15

    goto :goto_7

    .line 14756
    .end local v4    # "dropboxFile":Ljava/io/File;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .end local v12    # "kernelBuffer":Ljava/lang/StringBuffer;
    .end local v13    # "kernelFile":Ljava/io/File;
    .end local v14    # "kernelPath":Ljava/lang/String;
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "lines":I
    .end local v19    # "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v24    # "setting":Ljava/lang/String;
    .restart local v18    # "lpos":I
    .restart local v25    # "traceRenameFile":Ljava/io/File;
    .restart local v26    # "tracesPath":Ljava/lang/String;
    :cond_8
    :try_start_d
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$processTmp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    move-result-object v20

    .restart local v20    # "newTracesPath":Ljava/lang/String;
    goto/16 :goto_0

    .line 14764
    .end local v18    # "lpos":I
    .end local v20    # "newTracesPath":Ljava/lang/String;
    .end local v25    # "traceRenameFile":Ljava/io/File;
    .end local v26    # "tracesPath":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 14765
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error reading "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$logFile:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 14802
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "buf":[C
    .restart local v7    # "input":Ljava/io/InputStreamReader;
    .restart local v16    # "lines":I
    .restart local v17    # "logcat":Ljava/lang/Process;
    .restart local v21    # "num":I
    .restart local v24    # "setting":Ljava/lang/String;
    :cond_9
    if-eqz v7, :cond_5

    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v27

    goto/16 :goto_6

    .end local v3    # "buf":[C
    .end local v7    # "input":Ljava/io/InputStreamReader;
    .end local v17    # "logcat":Ljava/lang/Process;
    .end local v21    # "num":I
    .restart local v6    # "input":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v27

    :goto_8
    if-eqz v6, :cond_a

    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    :cond_a
    :goto_9
    throw v27

    .line 14838
    .end local v6    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "dropboxFile":Ljava/io/File;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v12    # "kernelBuffer":Ljava/lang/StringBuffer;
    .restart local v13    # "kernelFile":Ljava/io/File;
    .restart local v14    # "kernelPath":Ljava/lang/String;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v19    # "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    :cond_b
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 14845
    if-eqz v23, :cond_c

    .line 14846
    :try_start_11
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    .line 14848
    :cond_c
    if-eqz v11, :cond_d

    .line 14849
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 14851
    :cond_d
    if-eqz v9, :cond_17

    .line 14852
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .line 14855
    .end local v9    # "is":Ljava/io/FileInputStream;
    .end local v15    # "line":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :cond_e
    :goto_a
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "rm -f "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShellWithResult(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 14863
    .end local v4    # "dropboxFile":Ljava/io/File;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v12    # "kernelBuffer":Ljava/lang/StringBuffer;
    .end local v13    # "kernelFile":Ljava/io/File;
    .end local v14    # "kernelPath":Ljava/lang/String;
    .end local v19    # "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    :cond_f
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$dbox:Landroid/os/DropBoxManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 14864
    return-void

    .line 14839
    .restart local v4    # "dropboxFile":Ljava/io/File;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v12    # "kernelBuffer":Ljava/lang/StringBuffer;
    .restart local v13    # "kernelFile":Ljava/io/File;
    .restart local v14    # "kernelPath":Ljava/lang/String;
    .restart local v19    # "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    .line 14840
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_c
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 14845
    if-eqz v22, :cond_10

    .line 14846
    :try_start_13
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->close()V

    .line 14848
    :cond_10
    if-eqz v10, :cond_11

    .line 14849
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 14851
    :cond_11
    if-eqz v8, :cond_e

    .line 14852
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_a

    .line 14857
    .end local v4    # "dropboxFile":Ljava/io/File;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v12    # "kernelBuffer":Ljava/lang/StringBuffer;
    .end local v13    # "kernelFile":Ljava/io/File;
    .end local v14    # "kernelPath":Ljava/lang/String;
    .end local v19    # "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    .line 14858
    .local v5, "e":Ljava/lang/Exception;
    const-string v27, "ActivityManager"

    const-string v28, "get vivo_daemon.service failed"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 14841
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "dropboxFile":Ljava/io/File;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v12    # "kernelBuffer":Ljava/lang/StringBuffer;
    .restart local v13    # "kernelFile":Ljava/io/File;
    .restart local v14    # "kernelPath":Ljava/lang/String;
    .restart local v19    # "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v5

    .line 14843
    .local v5, "e":Ljava/io/IOException;
    :goto_d
    :try_start_14
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 14845
    if-eqz v22, :cond_12

    .line 14846
    :try_start_15
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->close()V

    .line 14848
    :cond_12
    if-eqz v10, :cond_13

    .line 14849
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 14851
    :cond_13
    if-eqz v8, :cond_e

    .line 14852
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_a

    .line 14845
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v27

    :goto_e
    if-eqz v22, :cond_14

    .line 14846
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->close()V

    .line 14848
    :cond_14
    if-eqz v10, :cond_15

    .line 14849
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 14851
    :cond_15
    if-eqz v8, :cond_16

    .line 14852
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_16
    throw v27
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    .line 14802
    .end local v4    # "dropboxFile":Ljava/io/File;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v12    # "kernelBuffer":Ljava/lang/StringBuffer;
    .end local v13    # "kernelFile":Ljava/io/File;
    .end local v14    # "kernelPath":Ljava/lang/String;
    .end local v19    # "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "input":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v27

    goto/16 :goto_6

    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v28

    goto/16 :goto_9

    .line 14845
    .end local v6    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "dropboxFile":Ljava/io/File;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v12    # "kernelBuffer":Ljava/lang/StringBuffer;
    .restart local v13    # "kernelFile":Ljava/io/File;
    .restart local v14    # "kernelPath":Ljava/lang/String;
    .restart local v19    # "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v27

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_e

    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v27

    move-object v10, v11

    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_e

    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v27

    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_e

    .line 14841
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_8
    move-exception v5

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_d

    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    :catch_9
    move-exception v5

    move-object v10, v11

    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_d

    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v5

    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_d

    .line 14839
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_b
    move-exception v5

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_c

    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v5

    move-object v10, v11

    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_c

    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    :catch_d
    move-exception v5

    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_c

    .line 14802
    .end local v4    # "dropboxFile":Ljava/io/File;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v12    # "kernelBuffer":Ljava/lang/StringBuffer;
    .end local v13    # "kernelFile":Ljava/io/File;
    .end local v14    # "kernelPath":Ljava/lang/String;
    .end local v19    # "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/InputStreamReader;
    .restart local v17    # "logcat":Ljava/lang/Process;
    :catchall_5
    move-exception v27

    move-object v6, v7

    .end local v7    # "input":Ljava/io/InputStreamReader;
    .restart local v6    # "input":Ljava/io/InputStreamReader;
    goto/16 :goto_8

    .line 14799
    .end local v17    # "logcat":Ljava/lang/Process;
    :catch_e
    move-exception v5

    goto/16 :goto_5

    .line 14793
    .restart local v17    # "logcat":Ljava/lang/Process;
    :catch_f
    move-exception v27

    goto/16 :goto_3

    .line 14792
    :catch_10
    move-exception v27

    goto/16 :goto_2

    .end local v6    # "input":Ljava/io/InputStreamReader;
    .end local v17    # "logcat":Ljava/lang/Process;
    .restart local v4    # "dropboxFile":Ljava/io/File;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v12    # "kernelBuffer":Ljava/lang/StringBuffer;
    .restart local v13    # "kernelFile":Ljava/io/File;
    .restart local v14    # "kernelPath":Ljava/lang/String;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v19    # "mVivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    :cond_17
    move-object/from16 v22, v23

    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_a
.end method
