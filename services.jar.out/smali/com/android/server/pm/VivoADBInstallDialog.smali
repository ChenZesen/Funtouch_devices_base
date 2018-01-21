.class final Lcom/android/server/pm/VivoADBInstallDialog;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/VivoADBInstallDialog$VirusData;,
        Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;,
        Lcom/android/server/pm/VivoADBInstallDialog$AppSnippet;,
        Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;,
        Lcom/android/server/pm/VivoADBInstallDialog$ConfirmDialogListener;
    }
.end annotation


# static fields
.field public static final CONFIRM_PERIOD:J = 0x3e8L

.field public static final CONFIRM_TIMEOUT:J = 0x36b0L

.field private static final TAG:Ljava/lang/String; = "VivoADBInstallDialog"

.field private static final TYPE_RISK:I = 0x2

.field private static final TYPE_RISK_PAY:I = 0x9

.field private static final TYPE_RISK_STEALACCOUNT:I = 0xa

.field private static final TYPE_SAFE:I = 0x0

.field private static final TYPE_SYSTEM_FLAW:I = 0xc

.field private static final TYPE_TROJAN:I = 0xb

.field private static final TYPE_VIRUS:I = 0x3

.field private static final WHAT_ON_FROM_SERVICE:I = 0x2

.field private static final WHAT_ON_TO_ACTIVITY:I = 0x3

.field private static final WHAT_ON_TO_SERVICE:I = 0x1

.field private static mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private static final mInstallVirusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/VivoADBInstallDialog$VirusData;",
            ">;"
        }
    .end annotation
.end field

.field private static mPkgInfo:Landroid/content/pm/PackageInfo;

.field public static sPackagePath:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mCancelButton:Landroid/widget/Button;

.field private mClientMess:Landroid/os/Messenger;

.field private mConfirmResult:I

.field private mConfirmTextView:Landroid/widget/TextView;

.field private mConfirmTimer:Ljava/util/Timer;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/Dialog;

.field private mInstallButton:Landroid/widget/Button;

.field private mIsBindServie:Z

.field private mIsDismissed:Z

.field private mLock:Ljava/lang/Object;

.field private mPMS:Lcom/android/server/pm/PackageManagerService;

.field private mPackageName:Ljava/lang/String;

.field private mScanAnim:Landroid/animation/ObjectAnimator;

.field private mScanLayout:Landroid/widget/RelativeLayout;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mUiHandler:Landroid/os/Handler;

.field private mVirusDialog:Landroid/app/AlertDialog;

.field private mVirusScanImg:Landroid/widget/ImageView;

.field private mVirusScanText:Landroid/widget/TextView;

.field private mVirusService:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    sput-object v0, Lcom/android/server/pm/VivoADBInstallDialog;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 163
    sput-object v0, Lcom/android/server/pm/VivoADBInstallDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 581
    const-string v0, ""

    sput-object v0, Lcom/android/server/pm/VivoADBInstallDialog;->sPackagePath:Ljava/lang/String;

    .line 773
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/VivoADBInstallDialog;->mInstallVirusMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;
    .param p6, "appIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 125
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;

    .line 126
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mUiHandler:Landroid/os/Handler;

    .line 127
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 128
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 129
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    .line 138
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusDialog:Landroid/app/AlertDialog;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mLock:Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mIsDismissed:Z

    .line 145
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmResult:I

    .line 158
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mPackageName:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mAppName:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 254
    iput-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mServiceMessenger:Landroid/os/Messenger;

    .line 258
    new-instance v0, Lcom/android/server/pm/VivoADBInstallDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/VivoADBInstallDialog$5;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConnection:Landroid/content/ServiceConnection;

    .line 171
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 172
    iput-object p2, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;

    .line 173
    iput-object p3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mUiHandler:Landroid/os/Handler;

    .line 174
    iput-object p4, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mPackageName:Ljava/lang/String;

    .line 175
    iput-object p5, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mAppName:Ljava/lang/String;

    .line 176
    iput-object p6, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/VivoADBInstallDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoADBInstallDialog;->setConfirmResultSync(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/VivoADBInstallDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/VivoADBInstallDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/server/pm/VivoADBInstallDialog;->mInstallVirusMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/VivoADBInstallDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mIsDismissed:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/VivoADBInstallDialog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/VivoADBInstallDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->showVirusDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/pm/VivoADBInstallDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/pm/VivoADBInstallDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/pm/VivoADBInstallDialog;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/server/pm/VivoADBInstallDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mIsBindServie:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/pm/VivoADBInstallDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoADBInstallDialog;->startRemoteService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/VivoADBInstallDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->cancelConfirmTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/VivoADBInstallDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->stopScanAnim()V

    return-void
.end method

.method private cancelConfirmTimer()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 397
    :cond_0
    return-void
.end method

.method public static checkVirusDataAndSendBroadCast(Ljava/lang/String;)V
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 800
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    const-string v2, "VivoADBInstallDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVirusDataAndSendBroadCast is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    sget-object v2, Lcom/android/server/pm/VivoADBInstallDialog;->mInstallVirusMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    sget-object v2, Lcom/android/server/pm/VivoADBInstallDialog;->mInstallVirusMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;

    .line 809
    .local v0, "mVData":Lcom/android/server/pm/VivoADBInstallDialog$VirusData;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIRUS_PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    .local v1, "virusApkIntent":Landroid/content/Intent;
    const-string v2, "pkgName"

    iget-object v3, v0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const-string v2, "filePath"

    iget-object v3, v0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->pkgPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const-string v2, "virusType"

    iget v3, v0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->virusType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 813
    const-string v2, "virusDes"

    iget-object v3, v0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->virusDes:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    const-string v2, "hasWarnned"

    iget-boolean v3, v0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->hasWarned:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    iget-object v2, v0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->cntxt:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 816
    const-string v2, "VivoADBInstallDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcast is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    sget-object v2, Lcom/android/server/pm/VivoADBInstallDialog;->mInstallVirusMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private dismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 296
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 299
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mIsDismissed:Z

    if-eqz v2, :cond_1

    .line 300
    const-string v2, "VivoADBInstallDialog"

    const-string v4, "alert Dialog is dimiss, donot call again."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v3

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mIsDismissed:Z

    .line 305
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->cancelConfirmTimer()V

    .line 309
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->getRomVersionHigher25()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    new-instance v0, Lcom/android/server/pm/VivoADBInstallDialog$6;

    invoke-direct {v0, p0}, Lcom/android/server/pm/VivoADBInstallDialog$6;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;)V

    .line 317
    .local v0, "task":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 318
    .local v1, "timer":Ljava/util/Timer;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 321
    .end local v0    # "task":Ljava/util/TimerTask;
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    .line 322
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    monitor-enter v3

    .line 323
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 324
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 325
    iput-object v4, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    .line 328
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 330
    iput-object v4, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 324
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static getAppSnippet(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/pm/VivoADBInstallDialog$AppSnippet;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v22, "sourceFile":Ljava/io/File;
    const-string v4, "VivoADBInstallDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAppSnippet path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sourceFile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v20, Landroid/content/pm/PackageParser;

    invoke-direct/range {v20 .. v20}, Landroid/content/pm/PackageParser;-><init>()V

    .line 439
    .local v20, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 440
    .local v17, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 443
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 448
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    const/16 v20, 0x0

    .line 450
    const/4 v4, 0x0

    const/16 v5, 0x1000

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    new-instance v11, Landroid/content/pm/PackageUserState;

    invoke-direct {v11}, Landroid/content/pm/PackageUserState;-><init>()V

    invoke-static/range {v3 .. v11}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 452
    .local v16, "info":Landroid/content/pm/PackageInfo;
    sput-object v16, Lcom/android/server/pm/VivoADBInstallDialog;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 453
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 454
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    sput-object v2, Lcom/android/server/pm/VivoADBInstallDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 455
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 456
    .local v19, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 457
    .local v21, "res":Landroid/content/res/Resources;
    new-instance v13, Landroid/content/res/AssetManager;

    invoke-direct {v13}, Landroid/content/res/AssetManager;-><init>()V

    .line 458
    .local v13, "ass":Landroid/content/res/AssetManager;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 459
    new-instance v18, Landroid/content/res/Resources;

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v13, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 460
    .local v18, "newRes":Landroid/content/res/Resources;
    const/4 v12, 0x0

    .line 463
    .local v12, "appName":Ljava/lang/String;
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v4, :cond_0

    .line 465
    :try_start_1
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    .line 469
    :cond_0
    :goto_0
    const-string v4, "VivoADBInstallDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appInfo.nonLocalizedLabel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    if-nez v12, :cond_1

    .line 472
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 475
    :cond_1
    :goto_1
    const/4 v15, 0x0

    .line 478
    .local v15, "icon":Landroid/graphics/drawable/Drawable;
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v4, :cond_2

    .line 480
    :try_start_2
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    .line 484
    :cond_2
    :goto_2
    if-nez v15, :cond_3

    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 487
    :cond_3
    new-instance v4, Lcom/android/server/pm/VivoADBInstallDialog$AppSnippet;

    move-object/from16 v0, v19

    invoke-direct {v4, v0, v12, v15}, Lcom/android/server/pm/VivoADBInstallDialog$AppSnippet;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v4

    .line 444
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v12    # "appName":Ljava/lang/String;
    .end local v13    # "ass":Landroid/content/res/AssetManager;
    .end local v15    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "info":Landroid/content/pm/PackageInfo;
    .end local v18    # "newRes":Landroid/content/res/Resources;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v21    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v14

    .line 445
    .local v14, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v14}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v4

    throw v4

    .line 472
    .end local v14    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v12    # "appName":Ljava/lang/String;
    .restart local v13    # "ass":Landroid/content/res/AssetManager;
    .restart local v16    # "info":Landroid/content/pm/PackageInfo;
    .restart local v18    # "newRes":Landroid/content/res/Resources;
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v21    # "res":Landroid/content/res/Resources;
    :cond_4
    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 481
    .restart local v15    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 466
    .end local v15    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private getRomVersionHigher25()Z
    .locals 8

    .prologue
    .line 822
    const-string v3, "ro.vivo.os.version"

    const-string v4, "null"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, "romVersion":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 824
    .local v1, "i":Ljava/lang/Double;
    const-string v3, "VivoADBInstallDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRomVersionHigher25 is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v3, "com.iqoo.secure.server.virus_scan"

    invoke-direct {p0, v3}, Lcom/android/server/pm/VivoADBInstallDialog;->isIntentExisting(Ljava/lang/String;)Z

    move-result v0

    .line 826
    .local v0, "bActionExist":Z
    const-string v3, "VivoADBInstallDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bActionExist is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    cmpl-double v3, v4, v6

    if-gez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initDialgView()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 491
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d0020

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 492
    .local v1, "mInstallConfirm":Landroid/view/View;
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d0007

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, "appSnippet":Landroid/view/View;
    const v7, 0x30d0008

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    const v7, 0x30d0009

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d001c

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmTextView:Landroid/widget/TextView;

    .line 502
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d001e

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanImg:Landroid/widget/ImageView;

    .line 503
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanImg:Landroid/widget/ImageView;

    const v8, 0x30203cd

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 505
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d001f

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanText:Landroid/widget/TextView;

    .line 506
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanText:Landroid/widget/TextView;

    const v8, 0x30e0124

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 507
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d0014

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDeleteButton:Landroid/widget/Button;

    .line 508
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d001d

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mScanLayout:Landroid/widget/RelativeLayout;

    .line 509
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->getRomVersionHigher25()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 510
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanImg:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanText:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mScanLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 521
    :goto_0
    const-string v7, "ro.vivo.product.overseas"

    const-string v8, "no"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "overseas":Ljava/lang/String;
    const-string v7, "VivoADBInstallDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "overseas: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v7, "yes"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 527
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d001a

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mInstallButton:Landroid/widget/Button;

    .line 528
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d001b

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mCancelButton:Landroid/widget/Button;

    .line 535
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    const/4 v4, 0x0

    .line 538
    .local v4, "permissionVisible":Z
    const/4 v2, 0x0

    .line 539
    .local v2, "msg":I
    sget-object v7, Lcom/android/server/pm/VivoADBInstallDialog;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v7, :cond_1

    .line 540
    new-instance v5, Lcom/android/server/pm/CustomAppSecurityPermissions;

    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/server/pm/VivoADBInstallDialog;->mPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v5, v7, v8}, Lcom/android/server/pm/CustomAppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 541
    .local v5, "perms":Lcom/android/server/pm/CustomAppSecurityPermissions;
    invoke-virtual {v5}, Lcom/android/server/pm/CustomAppSecurityPermissions;->getPermissionCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 542
    const/4 v4, 0x1

    .line 543
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d0018

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 545
    .local v6, "securityList":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 546
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 547
    invoke-virtual {v5}, Lcom/android/server/pm/CustomAppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    .end local v5    # "perms":Lcom/android/server/pm/CustomAppSecurityPermissions;
    .end local v6    # "securityList":Landroid/widget/LinearLayout;
    :cond_1
    if-nez v4, :cond_2

    .line 552
    const v2, 0x30e010a

    .line 553
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d0016

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d0015

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :cond_2
    if-eqz v2, :cond_3

    .line 557
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v8, 0x30d0013

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    .line 559
    :cond_3
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 560
    return-void

    .line 515
    .end local v2    # "msg":I
    .end local v3    # "overseas":Ljava/lang/String;
    .end local v4    # "permissionVisible":Z
    :cond_4
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanImg:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanText:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 518
    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mScanLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static isInstallingUnknownAppsAllowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 576
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isIntentExisting(Ljava/lang/String;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 831
    iget-object v4, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 842
    :cond_0
    :goto_0
    return v3

    .line 834
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 835
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .local v0, "intent":Landroid/content/Intent;
    const/16 v4, 0x20

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 839
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 840
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private onClickDeleteBtn()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDeleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/server/pm/VivoADBInstallDialog$10;

    invoke-direct {v1, p0}, Lcom/android/server/pm/VivoADBInstallDialog$10;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    return-void
.end method

.method private setConfirmResultSync(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 373
    monitor-enter p0

    .line 375
    :try_start_0
    iput p1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmResult:I

    .line 376
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->handleADBInstallDialog(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 378
    monitor-exit p0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setPathFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "packagePath"    # Ljava/lang/String;

    .prologue
    .line 583
    const-string v0, "VivoADBInstallDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packagePath is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sput-object p0, Lcom/android/server/pm/VivoADBInstallDialog;->sPackagePath:Ljava/lang/String;

    .line 585
    sget-object v0, Lcom/android/server/pm/VivoADBInstallDialog;->sPackagePath:Ljava/lang/String;

    return-object v0
.end method

.method private showVirusDialog()V
    .locals 6

    .prologue
    .line 594
    iget-boolean v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mIsDismissed:Z

    if-eqz v3, :cond_1

    .line 595
    const-string v3, "VivoADBInstallDialog"

    const-string v4, "showVirusDialog return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mPackageName:Ljava/lang/String;

    .line 600
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "VivoADBInstallDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showVirusDialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;

    const v4, 0x30e0159

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "dangerousMsg":Ljava/lang/String;
    const-string v3, "\n"

    const-string v4, "<br/>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 604
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;

    sget-object v5, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v5}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x30e0158

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x30e015b

    new-instance v5, Lcom/android/server/pm/VivoADBInstallDialog$9;

    invoke-direct {v5, p0}, Lcom/android/server/pm/VivoADBInstallDialog$9;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x30e015a

    new-instance v5, Lcom/android/server/pm/VivoADBInstallDialog$8;

    invoke-direct {v5, p0}, Lcom/android/server/pm/VivoADBInstallDialog$8;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/VivoADBInstallDialog$7;

    invoke-direct {v4, p0}, Lcom/android/server/pm/VivoADBInstallDialog$7;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusDialog:Landroid/app/AlertDialog;

    .line 635
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 636
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 637
    sget-object v3, Lcom/android/server/pm/VivoADBInstallDialog;->mInstallVirusMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    sget-object v3, Lcom/android/server/pm/VivoADBInstallDialog;->mInstallVirusMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;

    .line 639
    .local v1, "mVData":Lcom/android/server/pm/VivoADBInstallDialog$VirusData;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;->setHasWarned(Z)Z

    goto/16 :goto_0
.end method

.method private startConfirmTimer(JJ)V
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "period"    # J

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 387
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmTimer:Ljava/util/Timer;

    new-instance v0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;JJ)V

    move-object v2, v6

    move-object v3, v0

    move-wide v4, p3

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 388
    return-void
.end method

.method private startRemoteService(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 281
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 282
    .local v2, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "filePath"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 285
    const-string v3, "VivoADBInstallDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scanning file path is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v3, Landroid/os/Messenger;

    new-instance v4, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;Lcom/android/server/pm/VivoADBInstallDialog$1;)V

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 287
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startScanAnim()V
    .locals 4

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanImg:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mScanAnim:Landroid/animation/ObjectAnimator;

    .line 707
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mScanAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 708
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mScanAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 709
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mScanAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 710
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mScanAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 711
    return-void

    .line 706
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private stopScanAnim()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mScanAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mScanAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 717
    :cond_0
    return-void
.end method


# virtual methods
.method public getConfirmResult(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 363
    iget v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmResult:I

    return v0
.end method

.method public getPathFromPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 589
    const-string v0, "VivoADBInstallDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get sPackagePath is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/pm/VivoADBInstallDialog;->sPackagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    sget-object v0, Lcom/android/server/pm/VivoADBInstallDialog;->sPackagePath:Ljava/lang/String;

    return-object v0
.end method

.method public handleWaitTimeOut()V
    .locals 1

    .prologue
    .line 368
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmResult:I

    .line 369
    return-void
.end method

.method public isConfirmed()Z
    .locals 2

    .prologue
    .line 358
    iget v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mConfirmResult:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mInstallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 565
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/server/pm/VivoADBInstallDialog;->setConfirmResultSync(I)V

    .line 569
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->dismiss()V

    .line 570
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 567
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/server/pm/VivoADBInstallDialog;->setConfirmResultSync(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 8

    .prologue
    .line 180
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mIsDismissed:Z

    .line 182
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;

    sget-object v5, Lvivo/util/VivoThemeUtil$ThemeType;->FULL_SCREEN:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v5}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    .line 184
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 185
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 187
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    const v4, 0x3030009

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 189
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->initDialgView()V

    .line 190
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    new-instance v4, Lcom/android/server/pm/VivoADBInstallDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/pm/VivoADBInstallDialog$1;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 202
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    new-instance v4, Lcom/android/server/pm/VivoADBInstallDialog$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/VivoADBInstallDialog$2;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 209
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    new-instance v4, Lcom/android/server/pm/VivoADBInstallDialog$3;

    invoke-direct {v4, p0}, Lcom/android/server/pm/VivoADBInstallDialog$3;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 216
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 217
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 218
    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 219
    const-wide/16 v4, 0x36b0

    const-wide/16 v6, 0x3e8

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/pm/VivoADBInstallDialog;->startConfirmTimer(JJ)V

    .line 222
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->getRomVersionHigher25()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->getPathFromPackageName()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "filePath":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v2, "virusScanService":Landroid/content/Intent;
    const-string v3, "com.iqoo.secure"

    const-string v4, "com.iqoo.secure.service.VirusScanService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 229
    .local v0, "am":Landroid/app/IActivityManager;
    new-instance v3, Lcom/android/server/pm/VivoADBInstallDialog$4;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/pm/VivoADBInstallDialog$4;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;Landroid/app/IActivityManager;Landroid/content/Intent;)V

    invoke-virtual {v3}, Lcom/android/server/pm/VivoADBInstallDialog$4;->start()V

    .line 238
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->startScanAnim()V

    .line 239
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallDialog;->onClickDeleteBtn()V

    .line 242
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "virusScanService":Landroid/content/Intent;
    :cond_0
    return-void
.end method
