.class public final Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
.super Ljava/lang/Object;
.source "VivoPermissionDeniedDialogModeTwo.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$1;,
        Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;,
        Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;
    }
.end annotation


# static fields
.field public static final CONFIRM_PERIOD:J = 0x3e8L

.field public static final CONFIRM_TIMEOUT:J = 0x1e8480L

.field public static final PROP_SUPER_SAVER:Ljava/lang/String; = "sys.super_power_save"


# instance fields
.field private isDialogChecked:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallingPid:I

.field private mConfirmTimer:Ljava/util/Timer;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPermissionName:Ljava/lang/String;

.field private mUiHandler:Landroid/os/Handler;

.field private mVPDKey:Ljava/lang/String;

.field private mVPS:Lcom/vivo/services/security/server/VivoPermissionService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/security/server/VivoPermissionService;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "vps"    # Lcom/vivo/services/security/server/VivoPermissionService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "permName"    # Ljava/lang/String;
    .param p6, "pid"    # I
    .param p7, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 49
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

    .line 50
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mUiHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mCallingPid:I

    .line 52
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPDKey:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mConfirmTimer:Ljava/util/Timer;

    .line 55
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mAlertDialog:Landroid/app/AlertDialog;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->isDialogChecked:Z

    .line 58
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPackageName:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPermissionName:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 64
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v1}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v1

    invoke-direct {v0, p2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mUiHandler:Landroid/os/Handler;

    .line 66
    iput-object p4, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPackageName:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPermissionName:Ljava/lang/String;

    .line 68
    iput p6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mCallingPid:I

    .line 69
    iput-object p7, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPDKey:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->cancelConfirmTimer()V

    return-void
.end method

.method static synthetic access$102(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->isDialogChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPermissionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Lcom/vivo/services/security/server/VivoPermissionService;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPDKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelConfirmTimer()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mConfirmTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mConfirmTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mConfirmTimer:Ljava/util/Timer;

    .line 357
    :cond_0
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 134
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 136
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "vpftd Can\'t get calling app package info"

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getContentStr()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 74
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPackageName:Ljava/lang/String;

    .line 75
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPermissionName:Ljava/lang/String;

    .line 76
    .local v3, "permName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->getPermissionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "PermStr":Ljava/lang/String;
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v1

    .line 79
    .local v1, "osVer":F
    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

    const v5, 0x30e0059

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 86
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

    const v5, 0x30e0055

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->getAppName(Ljava/lang/String;)Ljava/lang/String;

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
    .line 93
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPermissionName:Ljava/lang/String;

    .line 94
    .local v1, "permName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->getPermissionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "PermStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

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

.method private getPermissionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v2

    .line 149
    .local v2, "vpt":Lcom/vivo/services/security/client/VivoPermissionType;
    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "result":Ljava/lang/String;
    const/4 v1, -0x1

    .line 151
    .local v1, "stringId":I
    sget-object v3, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$1;->$SwitchMap$com$vivo$services$security$client$VivoPermissionType:[I

    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 229
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_0
    const v3, 0x30e0012

    if-eq v1, v3, :cond_1

    const v3, 0x30e001a

    if-eq v1, v3, :cond_1

    const v3, 0x30e0016

    if-ne v1, v3, :cond_3

    .line 238
    :cond_1
    const-string v3, "sms"

    const-string v4, "SMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_2
    :goto_1
    return-object v0

    .line 154
    :pswitch_0
    const v1, 0x30e0012

    .line 155
    goto :goto_0

    .line 157
    :pswitch_1
    const v1, 0x30e0013

    .line 158
    goto :goto_0

    .line 160
    :pswitch_2
    const v1, 0x30e0014

    .line 161
    goto :goto_0

    .line 163
    :pswitch_3
    const v1, 0x30e0015

    .line 164
    goto :goto_0

    .line 167
    :pswitch_4
    const v1, 0x30e0050

    .line 168
    goto :goto_0

    .line 171
    :pswitch_5
    const v1, 0x30e0051

    .line 172
    goto :goto_0

    .line 175
    :pswitch_6
    const v1, 0x30e0050

    .line 176
    goto :goto_0

    .line 179
    :pswitch_7
    const v1, 0x30e0051

    .line 180
    goto :goto_0

    .line 182
    :pswitch_8
    const v1, 0x30e0018

    .line 183
    goto :goto_0

    .line 185
    :pswitch_9
    const v1, 0x30e001c

    .line 186
    goto :goto_0

    .line 188
    :pswitch_a
    const v1, 0x30e0019

    .line 189
    goto :goto_0

    .line 191
    :pswitch_b
    const v1, 0x30e001d

    .line 192
    goto :goto_0

    .line 194
    :pswitch_c
    const v1, 0x30e001e

    .line 195
    goto :goto_0

    .line 197
    :pswitch_d
    const v1, 0x30e001f

    .line 198
    goto :goto_0

    .line 201
    :pswitch_e
    const v1, 0x30e004f

    .line 202
    goto :goto_0

    .line 205
    :pswitch_f
    const v1, 0x30e004f

    .line 206
    goto :goto_0

    .line 208
    :pswitch_10
    const v1, 0x30e0022

    .line 209
    goto :goto_0

    .line 211
    :pswitch_11
    const v1, 0x30e002c

    .line 212
    goto :goto_0

    .line 214
    :pswitch_12
    const v1, 0x30e002d

    .line 215
    goto :goto_0

    .line 217
    :pswitch_13
    const v1, 0x30e002e

    .line 218
    goto :goto_0

    .line 220
    :pswitch_14
    const v1, 0x30e002f

    .line 221
    goto :goto_0

    .line 223
    :pswitch_15
    const v1, 0x30e0057

    .line 224
    goto :goto_0

    .line 240
    :cond_3
    const v3, 0x30e0013

    if-eq v1, v3, :cond_4

    const v3, 0x30e001b

    if-eq v1, v3, :cond_4

    const v3, 0x30e0017

    if-ne v1, v3, :cond_5

    .line 244
    :cond_4
    const-string v3, "mms"

    const-string v4, "MMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 246
    :cond_5
    const v3, 0x30e0050

    if-eq v1, v3, :cond_6

    const v3, 0x30e0051

    if-ne v1, v3, :cond_7

    .line 249
    :cond_6
    const-string v3, "sms"

    const-string v4, "SMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v3, "mms"

    const-string v4, "MMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 252
    :cond_7
    const v3, 0x30e001f

    if-ne v1, v3, :cond_8

    .line 254
    const-string v3, "id"

    const-string v4, "ID"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 256
    :cond_8
    const v3, 0x30e002d

    if-ne v1, v3, :cond_a

    .line 258
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->isOverSeas()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 260
    const-string v3, "wlan"

    const-string v4, "Wi-Fi"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string v3, "wi-fi"

    const-string v4, "Wi-Fi"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 265
    :cond_9
    const-string v3, "wlan"

    const-string v4, "WLAN"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 268
    :cond_a
    const v3, 0x30e002f

    if-ne v1, v3, :cond_b

    .line 270
    const-string v3, "nfc"

    const-string v4, "NFC"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 272
    :cond_b
    const v3, 0x30e002c

    if-ne v1, v3, :cond_c

    .line 274
    const-string v3, "mobile"

    const-string v4, "Mobile"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v3, "network"

    const-string v4, "Network"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 277
    :cond_c
    const v3, 0x30e002e

    if-ne v1, v3, :cond_2

    .line 279
    const-string v3, "bluetooth"

    const-string v4, "Bluetooth"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 151
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

.method private startConfirmTimer(JJ)V
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "period"    # J

    .prologue
    .line 342
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mConfirmTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mConfirmTimer:Ljava/util/Timer;

    .line 347
    :cond_0
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mConfirmTimer:Ljava/util/Timer;

    new-instance v0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;-><init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;JJ)V

    move-object v2, v6

    move-object v3, v0

    move-wide v4, p3

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 348
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 286
    const-string v0, "2 dismissing VivoPermissionDeniedDialogModeTwo..."

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->cancelConfirmTimer()V

    .line 290
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPDKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/services/security/server/VivoPermissionService;->removeVPD2(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mAlertDialog:Landroid/app/AlertDialog;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 297
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mAlertDialog:Landroid/app/AlertDialog;

    .line 301
    :cond_0
    return-void

    .line 297
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
    .line 332
    iget v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mCallingPid:I

    return v0
.end method

.method isDialogClicked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 337
    iget-boolean v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->isDialogChecked:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 10

    .prologue
    .line 102
    new-instance v5, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;

    invoke-direct {v5, p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;-><init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)V

    .line 103
    .local v5, "listener":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 105
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x3030021

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 106
    .local v4, "layout":Landroid/view/View;
    const v6, 0x30d005b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, "content":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->getContentStr()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "contentStr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "contentTitle":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;

    sget-object v8, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v8}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x30e0053

    invoke-virtual {v6, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x30e0054

    invoke-virtual {v6, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mAlertDialog:Landroid/app/AlertDialog;

    .line 120
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 121
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v8, 0x20000000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 122
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 123
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 125
    const-wide/32 v6, 0x1e8480

    const-wide/16 v8, 0x3e8

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->startConfirmTimer(JJ)V

    .line 126
    return-void
.end method
