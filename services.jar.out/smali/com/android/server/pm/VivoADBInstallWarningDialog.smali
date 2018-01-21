.class final Lcom/android/server/pm/VivoADBInstallWarningDialog;
.super Ljava/lang/Object;
.source "VivoADBInstallWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;,
        Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;
    }
.end annotation


# static fields
.field private static final CONFIRM_PERIOD:J = 0x3e8L

.field private static final CONFIRM_TIMEOUT:J = 0x2710L

.field private static final FORBID_GET_APP_LIST_CONFIRM_TIMEOUT:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "VivoADBInstallWarningDialog"

.field public static final WARNING_CONFIRM_ALLOW:I = 0x2

.field public static final WARNING_CONFIRM_CANCEL:I = 0x1

.field public static final WARNING_CONFIRM_TIME_OUT:I = 0x3

.field public static final WARN_DIALOG_FLAG:I = 0x10000000


# instance fields
.field protected isDialogChecked:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAppInstallFlags:I

.field private mAppName:Ljava/lang/String;

.field private mCallingPid:I

.field protected mCheckBox:Landroid/widget/CheckBox;

.field private mConfirmTimer:Ljava/util/Timer;

.field private mContext:Landroid/content/Context;

.field protected mDialogIsChecked:Z

.field private mPackageName:Ljava/lang/String;

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field protected mRememberChoice:Z

.field private mUiHandler:Landroid/os/Handler;

.field public mWarnDialogIsTimeOut:Z

.field private mWarningResult:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 58
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    .line 59
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPackageName:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppName:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mWarningResult:I

    .line 62
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 63
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 64
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mUiHandler:Landroid/os/Handler;

    .line 67
    iput v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppInstallFlags:I

    .line 71
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mRememberChoice:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->isDialogChecked:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mDialogIsChecked:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mWarnDialogIsTimeOut:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mCallingPid:I

    .line 85
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 86
    iput-object p2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    .line 87
    iput-object p3, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mUiHandler:Landroid/os/Handler;

    .line 88
    iput-object p4, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPackageName:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;
    .param p6, "installFlags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 58
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    .line 59
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPackageName:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppName:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mWarningResult:I

    .line 62
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 63
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 64
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mUiHandler:Landroid/os/Handler;

    .line 67
    iput v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppInstallFlags:I

    .line 71
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mRememberChoice:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->isDialogChecked:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mDialogIsChecked:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mWarnDialogIsTimeOut:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mCallingPid:I

    .line 115
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 116
    iput-object p2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    .line 117
    iput-object p3, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mUiHandler:Landroid/os/Handler;

    .line 118
    iput-object p4, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPackageName:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppName:Ljava/lang/String;

    .line 120
    iput p6, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppInstallFlags:I

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;
    .param p6, "installFlags"    # I
    .param p7, "callingPid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 58
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    .line 59
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPackageName:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppName:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mWarningResult:I

    .line 62
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 63
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 64
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mUiHandler:Landroid/os/Handler;

    .line 67
    iput v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppInstallFlags:I

    .line 71
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mRememberChoice:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->isDialogChecked:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mDialogIsChecked:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mWarnDialogIsTimeOut:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mCallingPid:I

    .line 146
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 147
    iput-object p2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    .line 148
    iput-object p3, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mUiHandler:Landroid/os/Handler;

    .line 149
    iput-object p4, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPackageName:Ljava/lang/String;

    .line 150
    iput-object p5, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppName:Ljava/lang/String;

    .line 151
    iput p6, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppInstallFlags:I

    .line 152
    iput p7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mCallingPid:I

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/VivoADBInstallWarningDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallWarningDialog;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->setWarningConfirmResultSync(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/VivoADBInstallWarningDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallWarningDialog;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppInstallFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/VivoADBInstallWarningDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallWarningDialog;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/VivoADBInstallWarningDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallWarningDialog;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/VivoADBInstallWarningDialog;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallWarningDialog;
    .param p1, "x1"    # J

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->getNegativeButtonText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/VivoADBInstallWarningDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallWarningDialog;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelConfirmTimer()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mConfirmTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mConfirmTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 279
    :cond_0
    return-void
.end method

.method private dismiss()V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->cancelConfirmTimer()V

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 207
    :cond_0
    return-void

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNegativeButtonText(J)Ljava/lang/String;
    .locals 3
    .param p1, "timeLeft"    # J

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppInstallFlags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    const v2, 0x30e0174

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    :goto_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 341
    :cond_0
    iget v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppInstallFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    const v2, 0x30e0026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    const v2, 0x30e0110

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private setWarningConfirmResultSync(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iput p1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mWarningResult:I

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->handleADBInstallWarningDialog(Ljava/lang/String;)V

    .line 215
    monitor-exit p0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startConfirmTimer(JJ)V
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "period"    # J

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mConfirmTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 269
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mConfirmTimer:Ljava/util/Timer;

    new-instance v0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;-><init>(Lcom/android/server/pm/VivoADBInstallWarningDialog;JJ)V

    move-object v2, v6

    move-object v3, v0

    move-wide v4, p3

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 270
    return-void
.end method


# virtual methods
.method public getCallingPid()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mCallingPid:I

    return v0
.end method

.method public getWarningConfirmResult()I
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mDialogIsChecked:Z

    .line 223
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_FOR_FB_APL:Z

    if-eqz v0, :cond_1

    .line 224
    const-string v0, "VivoADBInstallWarningDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialogIsChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mDialogIsChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRememberChoice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mRememberChoice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isDialogChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->isDialogChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWarningResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mWarningResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    iget v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mWarningResult:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->setWarningConfirmResultSync(I)V

    .line 261
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 96
    new-instance v0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;

    invoke-direct {v0, p0}, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;-><init>(Lcom/android/server/pm/VivoADBInstallWarningDialog;)V

    .line 97
    .local v0, "listener":Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    sget-object v3, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v3}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x30e010e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    const v3, 0x30e0114

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->getNegativeButtonText(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x30e010f

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 105
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 106
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 107
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 108
    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->startConfirmTimer(JJ)V

    .line 109
    return-void
.end method

.method public showAppStoreWarnDialog()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 124
    new-instance v0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;

    invoke-direct {v0, p0}, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;-><init>(Lcom/android/server/pm/VivoADBInstallWarningDialog;)V

    .line 125
    .local v0, "listener":Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    sget-object v3, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v3}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x30e0171

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    const v3, 0x30e0172

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->getNegativeButtonText(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x30e0173

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 133
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 134
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 135
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 136
    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->startConfirmTimer(JJ)V

    .line 137
    return-void
.end method

.method public showGetInstallPackageWarnDialog()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 156
    new-instance v5, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;

    invoke-direct {v5, p0}, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;-><init>(Lcom/android/server/pm/VivoADBInstallWarningDialog;)V

    .line 157
    .local v5, "listener":Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;
    const-string v6, ""

    .line 159
    .local v6, "msg":Ljava/lang/String;
    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    sget-object v9, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v9}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    .line 161
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 163
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x303001f

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 164
    .local v4, "layout":Landroid/view/View;
    const v7, 0x30d005a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    .local v0, "content":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    const v8, 0x30e0029

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppName:Ljava/lang/String;

    aput-object v9, v8, v11

    iget-object v9, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    const v10, 0x30e016c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "contentStr":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const v7, 0x30d005b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 169
    .local v1, "contentHint":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->isRomVersionIsLow_30()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 170
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    const v8, 0x30e016e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 175
    :goto_0
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_FOR_FB_APL:Z

    if-eqz v7, :cond_0

    .line 176
    const-string v7, "VivoADBInstallWarningDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showGetInstallPackageWarnDialog msg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v7, 0x30d005c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 181
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 182
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    sget-object v9, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v9}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v8, 0x30e0028

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-wide/16 v8, 0xa

    invoke-direct {p0, v8, v9}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->getNegativeButtonText(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x30e0025

    invoke-virtual {v7, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 191
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 192
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x20000000

    or-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 193
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 194
    const-wide/16 v8, 0x2710

    const-wide/16 v10, 0x3e8

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->startConfirmTimer(JJ)V

    .line 195
    return-void

    .line 172
    :cond_1
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mContext:Landroid/content/Context;

    const v8, 0x30e016d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method
