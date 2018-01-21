.class public final Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
.super Ljava/lang/Object;
.source "VivoPermissionDeniedDialogModeThree.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$1;,
        Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;,
        Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;
    }
.end annotation


# static fields
.field public static final CONFIRM_PERIOD:J = 0x3e8L

.field public static final CONFIRM_TIMEOUT:J = 0x4e20L

.field public static final PROP_SUPER_SAVER:Ljava/lang/String; = "sys.super_power_save"


# instance fields
.field private isDialogChecked:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/vivo/services/security/client/IVivoPermissionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallingPid:I

.field private mConfirmTimer:Ljava/util/Timer;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPermissionName:Ljava/lang/String;

.field private mPermissionResult:I

.field private mUiHandler:Landroid/os/Handler;

.field private mVPDKey:Ljava/lang/String;

.field private mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

.field private timeCountDownRight:Z


# direct methods
.method public constructor <init>(Lcom/vivo/services/security/server/VivoPermissionService;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "vps"    # Lcom/vivo/services/security/server/VivoPermissionService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "permName"    # Ljava/lang/String;
    .param p6, "pid"    # I
    .param p7, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 48
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    .line 49
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mUiHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallingPid:I

    .line 51
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mVPDKey:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mConfirmTimer:Ljava/util/Timer;

    .line 53
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    .line 54
    iput v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionResult:I

    .line 55
    iput-boolean v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->isDialogChecked:Z

    .line 56
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPackageName:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionName:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->timeCountDownRight:Z

    .line 64
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 65
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v1}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v1

    invoke-direct {v0, p2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mUiHandler:Landroid/os/Handler;

    .line 67
    iput-object p4, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPackageName:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionName:Ljava/lang/String;

    .line 69
    iput p6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallingPid:I

    .line 70
    iput-object p7, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mVPDKey:Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 73
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->isOverSeas()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput-boolean v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->timeCountDownRight:Z

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->cancelConfirmTimer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .param p1, "x1"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getNegativeButtonText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->isDialogChecked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->setPermissionResultSync(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Lcom/vivo/services/security/server/VivoPermissionService;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private cancelConfirmTimer()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mConfirmTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mConfirmTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mConfirmTimer:Ljava/util/Timer;

    .line 447
    :cond_0
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 161
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 170
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 163
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Can\'t get calling app package info"

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getContentStr()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 81
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPackageName:Ljava/lang/String;

    .line 82
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionName:Ljava/lang/String;

    .line 83
    .local v3, "permName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getPermissionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "PermStr":Ljava/lang/String;
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v1

    .line 86
    .local v1, "osVer":F
    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    .line 88
    iget-object v4, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    const v5, 0x30e0059

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 93
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    const v5, 0x30e0055

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getContentTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 100
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionName:Ljava/lang/String;

    .line 101
    .local v1, "permName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getPermissionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "PermStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    const v3, 0x30e0033

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNegativeButtonText(J)Ljava/lang/String;
    .locals 5
    .param p1, "timeLeft"    # J

    .prologue
    const v3, 0x30e0054

    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->timeCountDownRight:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
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

    .line 153
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 149
    :cond_0
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

    .line 150
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private getPermissionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v2

    .line 176
    .local v2, "vpt":Lcom/vivo/services/security/client/VivoPermissionType;
    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "result":Ljava/lang/String;
    const/4 v1, -0x1

    .line 178
    .local v1, "stringId":I
    sget-object v3, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$1;->$SwitchMap$com$vivo$services$security$client$VivoPermissionType:[I

    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 256
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_0
    const v3, 0x30e0012

    if-eq v1, v3, :cond_1

    const v3, 0x30e001a

    if-eq v1, v3, :cond_1

    const v3, 0x30e0016

    if-ne v1, v3, :cond_3

    .line 265
    :cond_1
    const-string v3, "sms"

    const-string v4, "SMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_2
    :goto_1
    return-object v0

    .line 181
    :pswitch_0
    const v1, 0x30e0012

    .line 182
    goto :goto_0

    .line 184
    :pswitch_1
    const v1, 0x30e0013

    .line 185
    goto :goto_0

    .line 187
    :pswitch_2
    const v1, 0x30e0014

    .line 188
    goto :goto_0

    .line 190
    :pswitch_3
    const v1, 0x30e0015

    .line 191
    goto :goto_0

    .line 194
    :pswitch_4
    const v1, 0x30e0050

    .line 195
    goto :goto_0

    .line 198
    :pswitch_5
    const v1, 0x30e0051

    .line 199
    goto :goto_0

    .line 202
    :pswitch_6
    const v1, 0x30e0050

    .line 203
    goto :goto_0

    .line 206
    :pswitch_7
    const v1, 0x30e0051

    .line 207
    goto :goto_0

    .line 209
    :pswitch_8
    const v1, 0x30e0018

    .line 210
    goto :goto_0

    .line 212
    :pswitch_9
    const v1, 0x30e001c

    .line 213
    goto :goto_0

    .line 215
    :pswitch_a
    const v1, 0x30e0019

    .line 216
    goto :goto_0

    .line 218
    :pswitch_b
    const v1, 0x30e001d

    .line 219
    goto :goto_0

    .line 221
    :pswitch_c
    const v1, 0x30e001e

    .line 222
    goto :goto_0

    .line 224
    :pswitch_d
    const v1, 0x30e001f

    .line 225
    goto :goto_0

    .line 228
    :pswitch_e
    const v1, 0x30e004f

    .line 229
    goto :goto_0

    .line 232
    :pswitch_f
    const v1, 0x30e004f

    .line 233
    goto :goto_0

    .line 235
    :pswitch_10
    const v1, 0x30e0022

    .line 236
    goto :goto_0

    .line 238
    :pswitch_11
    const v1, 0x30e002c

    .line 239
    goto :goto_0

    .line 241
    :pswitch_12
    const v1, 0x30e002d

    .line 242
    goto :goto_0

    .line 244
    :pswitch_13
    const v1, 0x30e002e

    .line 245
    goto :goto_0

    .line 247
    :pswitch_14
    const v1, 0x30e002f

    .line 248
    goto :goto_0

    .line 250
    :pswitch_15
    const v1, 0x30e0057

    .line 251
    goto :goto_0

    .line 267
    :cond_3
    const v3, 0x30e0013

    if-eq v1, v3, :cond_4

    const v3, 0x30e001b

    if-eq v1, v3, :cond_4

    const v3, 0x30e0017

    if-ne v1, v3, :cond_5

    .line 271
    :cond_4
    const-string v3, "mms"

    const-string v4, "MMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 273
    :cond_5
    const v3, 0x30e0050

    if-eq v1, v3, :cond_6

    const v3, 0x30e0051

    if-ne v1, v3, :cond_7

    .line 276
    :cond_6
    const-string v3, "sms"

    const-string v4, "SMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v3, "mms"

    const-string v4, "MMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 279
    :cond_7
    const v3, 0x30e001f

    if-ne v1, v3, :cond_8

    .line 281
    const-string v3, "id"

    const-string v4, "ID"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 283
    :cond_8
    const v3, 0x30e002d

    if-ne v1, v3, :cond_a

    .line 285
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->isOverSeas()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 287
    const-string v3, "wlan"

    const-string v4, "Wi-Fi"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v3, "wi-fi"

    const-string v4, "Wi-Fi"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 292
    :cond_9
    const-string v3, "wlan"

    const-string v4, "WLAN"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 295
    :cond_a
    const v3, 0x30e002f

    if-ne v1, v3, :cond_b

    .line 297
    const-string v3, "nfc"

    const-string v4, "NFC"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 299
    :cond_b
    const v3, 0x30e002c

    if-ne v1, v3, :cond_c

    .line 301
    const-string v3, "mobile"

    const-string v4, "Mobile"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v3, "network"

    const-string v4, "Network"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 304
    :cond_c
    const v3, 0x30e002e

    if-ne v1, v3, :cond_2

    .line 306
    const-string v3, "bluetooth"

    const-string v4, "Bluetooth"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private setPermissionResultSync(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    const/4 v1, 0x1

    .line 412
    monitor-enter p0

    .line 414
    :try_start_0
    iput p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionResult:I

    .line 416
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v0

    .line 418
    .local v0, "vpTypeId":I
    iget-boolean v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->isDialogChecked:Z

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p1}, Lcom/vivo/services/security/server/VivoPermissionService;->setAppPermission(Ljava/lang/String;II)V

    .line 423
    :cond_0
    if-ne p1, v1, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->notifyCallbacks(Z)V

    .line 424
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mVPDKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vivo/services/security/server/VivoPermissionService;->removeVPD3(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 427
    monitor-exit p0

    .line 428
    return-void

    .line 423
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 427
    .end local v0    # "vpTypeId":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startConfirmTimer(JJ)V
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "period"    # J

    .prologue
    .line 432
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mConfirmTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mConfirmTimer:Ljava/util/Timer;

    .line 437
    :cond_0
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mConfirmTimer:Ljava/util/Timer;

    new-instance v0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;-><init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;JJ)V

    move-object v2, v6

    move-object v3, v0

    move-wide v4, p3

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 438
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 313
    const-string v0, "dismissing VivoPermissionDeniedDialogModeThree 3 ..."

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->cancelConfirmTimer()V

    .line 317
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->setPermissionResultSync(I)V

    .line 319
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 324
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    .line 328
    :cond_0
    return-void

    .line 324
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCallingPid()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallingPid:I

    return v0
.end method

.method public getPermissionResult(Ljava/lang/String;)I
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    .line 369
    iget v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionResult:I

    return v0
.end method

.method public handleWaitTimeOut()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionResult:I

    .line 380
    return-void
.end method

.method public isPermissionConfirmed()Z
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionResult:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCallbacks(Z)V
    .locals 5
    .param p1, "result"    # Z

    .prologue
    .line 392
    iget-object v4, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 394
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 395
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 399
    :try_start_1
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/vivo/services/security/client/IVivoPermissionCallback;

    invoke-interface {v3, p1}, Lcom/vivo/services/security/client/IVivoPermissionCallback;->onPermissionConfirmed(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 406
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 407
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 408
    return-void
.end method

.method public registerCallback(Lcom/vivo/services/security/client/IVivoPermissionCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/vivo/services/security/client/IVivoPermissionCallback;

    .prologue
    .line 384
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show()V
    .locals 12

    .prologue
    .line 109
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPackageName:Ljava/lang/String;

    .line 110
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionName:Ljava/lang/String;

    .line 111
    .local v7, "permName":Ljava/lang/String;
    new-instance v5, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;

    invoke-direct {v5, p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;-><init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)V

    .line 113
    .local v5, "listener":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;
    iget-object v8, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 115
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x3030021

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 116
    .local v4, "layout":Landroid/view/View;
    const v8, 0x30d005b

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, "content":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getContentStr()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "contentStr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "contentTitle":Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;

    sget-object v10, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v10}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x30e0053

    invoke-virtual {v8, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const-wide/16 v10, 0x14

    invoke-direct {p0, v10, v11}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getNegativeButtonText(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    .line 130
    iget-object v8, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 131
    iget-object v8, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v10, 0x20000000

    or-int/2addr v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 132
    iget-object v8, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 133
    iget-object v8, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 135
    const-wide/16 v8, 0x4e20

    const-wide/16 v10, 0x3e8

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->startConfirmTimer(JJ)V

    .line 136
    return-void
.end method
