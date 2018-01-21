.class public final Lcom/vivo/services/security/server/VivoPermissionDialog;
.super Ljava/lang/Object;
.source "VivoPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/security/server/VivoPermissionDialog$1;,
        Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;,
        Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;
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

.field private mRememberChoice:Z

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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 45
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    .line 46
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mUiHandler:Landroid/os/Handler;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallingPid:I

    .line 48
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mVPDKey:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 50
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 51
    iput v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPermissionResult:I

    .line 52
    iput-boolean v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mRememberChoice:Z

    .line 53
    iput-boolean v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->isDialogChecked:Z

    .line 54
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPackageName:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPermissionName:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->timeCountDownRight:Z

    .line 62
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 63
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v1}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v1

    invoke-direct {v0, p2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mUiHandler:Landroid/os/Handler;

    .line 65
    iput-object p4, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPackageName:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPermissionName:Ljava/lang/String;

    .line 67
    iput p6, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallingPid:I

    .line 68
    iput-object p7, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mVPDKey:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 71
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->isOverSeas()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iput-boolean v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->timeCountDownRight:Z

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/security/server/VivoPermissionDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDialog;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDialog;->cancelConfirmTimer()V

    return-void
.end method

.method static synthetic access$102(Lcom/vivo/services/security/server/VivoPermissionDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->isDialogChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vivo/services/security/server/VivoPermissionDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDialog;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionDialog;->setPermissionResultSync(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/vivo/services/security/server/VivoPermissionDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mRememberChoice:Z

    return p1
.end method

.method static synthetic access$400(Lcom/vivo/services/security/server/VivoPermissionDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/services/security/server/VivoPermissionDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/services/security/server/VivoPermissionDialog;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDialog;
    .param p1, "x1"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/vivo/services/security/server/VivoPermissionDialog;->getNegativeButtonText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/services/security/server/VivoPermissionDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelConfirmTimer()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mConfirmTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mConfirmTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 440
    :cond_0
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 148
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 157
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 150
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Can\'t get calling app package info"

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getNegativeButtonText(J)Ljava/lang/String;
    .locals 5
    .param p1, "timeLeft"    # J

    .prologue
    const v3, 0x30e0026

    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->timeCountDownRight:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
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

    .line 140
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 137
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

    .line 138
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private getPermissionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v2

    .line 164
    .local v2, "vpt":Lcom/vivo/services/security/client/VivoPermissionType;
    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "result":Ljava/lang/String;
    const/4 v1, -0x1

    .line 166
    .local v1, "stringId":I
    sget-object v3, Lcom/vivo/services/security/server/VivoPermissionDialog$1;->$SwitchMap$com$vivo$services$security$client$VivoPermissionType:[I

    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 244
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_0
    const v3, 0x30e0012

    if-eq v1, v3, :cond_1

    const v3, 0x30e001a

    if-eq v1, v3, :cond_1

    const v3, 0x30e0016

    if-ne v1, v3, :cond_3

    .line 253
    :cond_1
    const-string v3, "sms"

    const-string v4, "SMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_2
    :goto_1
    return-object v0

    .line 169
    :pswitch_0
    const v1, 0x30e0012

    .line 170
    goto :goto_0

    .line 172
    :pswitch_1
    const v1, 0x30e0013

    .line 173
    goto :goto_0

    .line 175
    :pswitch_2
    const v1, 0x30e0014

    .line 176
    goto :goto_0

    .line 178
    :pswitch_3
    const v1, 0x30e0015

    .line 179
    goto :goto_0

    .line 182
    :pswitch_4
    const v1, 0x30e0050

    .line 183
    goto :goto_0

    .line 186
    :pswitch_5
    const v1, 0x30e0051

    .line 187
    goto :goto_0

    .line 190
    :pswitch_6
    const v1, 0x30e0050

    .line 191
    goto :goto_0

    .line 194
    :pswitch_7
    const v1, 0x30e0051

    .line 195
    goto :goto_0

    .line 197
    :pswitch_8
    const v1, 0x30e0018

    .line 198
    goto :goto_0

    .line 200
    :pswitch_9
    const v1, 0x30e001c

    .line 201
    goto :goto_0

    .line 203
    :pswitch_a
    const v1, 0x30e0019

    .line 204
    goto :goto_0

    .line 206
    :pswitch_b
    const v1, 0x30e001d

    .line 207
    goto :goto_0

    .line 209
    :pswitch_c
    const v1, 0x30e001e

    .line 210
    goto :goto_0

    .line 212
    :pswitch_d
    const v1, 0x30e001f

    .line 213
    goto :goto_0

    .line 216
    :pswitch_e
    const v1, 0x30e004f

    .line 217
    goto :goto_0

    .line 220
    :pswitch_f
    const v1, 0x30e004f

    .line 221
    goto :goto_0

    .line 223
    :pswitch_10
    const v1, 0x30e0022

    .line 224
    goto :goto_0

    .line 226
    :pswitch_11
    const v1, 0x30e002c

    .line 227
    goto :goto_0

    .line 229
    :pswitch_12
    const v1, 0x30e002d

    .line 230
    goto :goto_0

    .line 232
    :pswitch_13
    const v1, 0x30e002e

    .line 233
    goto :goto_0

    .line 235
    :pswitch_14
    const v1, 0x30e002f

    .line 236
    goto :goto_0

    .line 238
    :pswitch_15
    const v1, 0x30e0057

    .line 239
    goto :goto_0

    .line 255
    :cond_3
    const v3, 0x30e0013

    if-eq v1, v3, :cond_4

    const v3, 0x30e001b

    if-eq v1, v3, :cond_4

    const v3, 0x30e0017

    if-ne v1, v3, :cond_5

    .line 259
    :cond_4
    const-string v3, "mms"

    const-string v4, "MMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 261
    :cond_5
    const v3, 0x30e0050

    if-eq v1, v3, :cond_6

    const v3, 0x30e0051

    if-ne v1, v3, :cond_7

    .line 264
    :cond_6
    const-string v3, "sms"

    const-string v4, "SMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v3, "mms"

    const-string v4, "MMS"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 267
    :cond_7
    const v3, 0x30e001f

    if-ne v1, v3, :cond_8

    .line 269
    const-string v3, "id"

    const-string v4, "ID"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 271
    :cond_8
    const v3, 0x30e002d

    if-ne v1, v3, :cond_a

    .line 273
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->isOverSeas()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 275
    const-string v3, "wlan"

    const-string v4, "Wi-Fi"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v3, "wi-fi"

    const-string v4, "Wi-Fi"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 280
    :cond_9
    const-string v3, "wlan"

    const-string v4, "WLAN"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 283
    :cond_a
    const v3, 0x30e002f

    if-ne v1, v3, :cond_b

    .line 285
    const-string v3, "nfc"

    const-string v4, "NFC"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 287
    :cond_b
    const v3, 0x30e002c

    if-ne v1, v3, :cond_c

    .line 289
    const-string v3, "mobile"

    const-string v4, "Mobile"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 290
    const-string v3, "network"

    const-string v4, "Network"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 292
    :cond_c
    const v3, 0x30e002e

    if-ne v1, v3, :cond_2

    .line 294
    const-string v3, "bluetooth"

    const-string v4, "Bluetooth"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 166
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

    .line 402
    monitor-enter p0

    .line 404
    :try_start_0
    iput p1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPermissionResult:I

    .line 406
    iget-boolean v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mRememberChoice:Z

    if-eqz v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPermissionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v0

    .line 410
    .local v0, "vpTypeId":I
    iget-boolean v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->isDialogChecked:Z

    if-eqz v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p1}, Lcom/vivo/services/security/server/VivoPermissionService;->setAppPermission(Ljava/lang/String;II)V

    .line 416
    .end local v0    # "vpTypeId":I
    :cond_0
    if-ne p1, v1, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionDialog;->notifyCallbacks(Z)V

    .line 417
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mVPDKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vivo/services/security/server/VivoPermissionService;->removeVPD(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 420
    monitor-exit p0

    .line 421
    return-void

    .line 416
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 420
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
    .line 425
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mConfirmTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mConfirmTimer:Ljava/util/Timer;

    .line 430
    :cond_0
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mConfirmTimer:Ljava/util/Timer;

    new-instance v0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;-><init>(Lcom/vivo/services/security/server/VivoPermissionDialog;JJ)V

    move-object v2, v6

    move-object v3, v0

    move-wide v4, p3

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 431
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "dismissing VivoPermissionDialog..."

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDialog;->cancelConfirmTimer()V

    .line 305
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vivo/services/security/server/VivoPermissionDialog;->setPermissionResultSync(I)V

    .line 307
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 312
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 316
    :cond_0
    return-void

    .line 312
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
    .line 364
    iget v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallingPid:I

    return v0
.end method

.method public getPermissionResult(Ljava/lang/String;)I
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .prologue
    .line 359
    iget v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPermissionResult:I

    return v0
.end method

.method public handleWaitTimeOut()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPermissionResult:I

    .line 370
    return-void
.end method

.method public isPermissionConfirmed()Z
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPermissionResult:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRememberChoice()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mRememberChoice:Z

    return v0
.end method

.method public notifyCallbacks(Z)V
    .locals 5
    .param p1, "result"    # Z

    .prologue
    .line 382
    iget-object v4, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 384
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 385
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 389
    :try_start_1
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/vivo/services/security/client/IVivoPermissionCallback;

    invoke-interface {v3, p1}, Lcom/vivo/services/security/client/IVivoPermissionCallback;->onPermissionConfirmed(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 396
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 397
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    return-void
.end method

.method public registerCallback(Lcom/vivo/services/security/client/IVivoPermissionCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/vivo/services/security/client/IVivoPermissionCallback;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 377
    monitor-exit v1

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 79
    iget-object v7, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPackageName:Ljava/lang/String;

    .line 80
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mPermissionName:Ljava/lang/String;

    .line 81
    .local v8, "permName":Ljava/lang/String;
    new-instance v5, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;

    invoke-direct {v5, p0}, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;-><init>(Lcom/vivo/services/security/server/VivoPermissionDialog;)V

    .line 83
    .local v5, "listener":Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;
    iget-object v10, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 85
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x303001f

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 86
    .local v4, "layout":Landroid/view/View;
    const v10, 0x30d005a

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, "content":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    const v11, 0x30e0029

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/vivo/services/security/server/VivoPermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-direct {p0, v8}, Lcom/vivo/services/security/server/VivoPermissionDialog;->getPermissionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "contentStr":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v10, 0x30d005b

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    .local v1, "contentHint":Landroid/widget/TextView;
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v6

    .line 94
    .local v6, "osVer":F
    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_0

    .line 96
    const v10, 0x30e0058

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 104
    :goto_0
    const v10, 0x30d005c

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 105
    .local v9, "rememberCB":Landroid/widget/CheckBox;
    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    invoke-virtual {v9, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    iput-boolean v13, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mRememberChoice:Z

    .line 110
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;

    sget-object v12, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v12}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v11, 0x30e0028

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x30e0025

    invoke-virtual {v10, v11, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-wide/16 v12, 0x14

    invoke-direct {p0, v12, v13}, Lcom/vivo/services/security/server/VivoPermissionDialog;->getNegativeButtonText(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 118
    iget-object v10, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d3

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 119
    iget-object v10, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v12, 0x20000000

    or-int/2addr v11, v12

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 120
    iget-object v10, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10, v14}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 121
    iget-object v10, p0, Lcom/vivo/services/security/server/VivoPermissionDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 123
    const-wide/16 v10, 0x4e20

    const-wide/16 v12, 0x3e8

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/vivo/services/security/server/VivoPermissionDialog;->startConfirmTimer(JJ)V

    .line 124
    return-void

    .line 100
    .end local v9    # "rememberCB":Landroid/widget/CheckBox;
    :cond_0
    const v10, 0x30e002b

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
