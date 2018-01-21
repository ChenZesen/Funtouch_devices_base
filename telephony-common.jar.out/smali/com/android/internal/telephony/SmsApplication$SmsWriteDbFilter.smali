.class public Lcom/android/internal/telephony/SmsApplication$SmsWriteDbFilter;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsWriteDbFilter"
.end annotation


# static fields
.field private static final BACKUP_RESTORE_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.backuprestore"

.field private static final BBK_ACCOUNT_PACKAGE_NAME:Ljava/lang/String; = "com.bbk.account"

.field private static final BBK_PC_TOOLS_PACKAGE_NAME:Ljava/lang/String; = "com.bbk.PCTools"

.field private static final CLOUD_PACKAGE_NAME:Ljava/lang/String; = "com.bbk.cloud"

.field private static final CUTE_IMAGEANIM_PACKAGE_NAME:Ljava/lang/String; = "com.cutemms.cuteimageanim"

.field private static final DAEMON_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.vivo.daemonService"

.field private static final EWARRANTY_PACKAGE_NAME:Ljava/lang/String; = "com.vivo.ewarranty"

.field private static final FIND_PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.vivo.findphone"

.field private static final IQOO_SECURE_PACKAGE_NAME:Ljava/lang/String; = "com.iqoo.secure"

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final MOTION_RECOGNITION_PACKAGE_NAME:Ljava/lang/String; = "com.vivo.motionrecognition"

.field private static final VIVO_DEVICE_REGISTER_PACKAGE_NAME:Ljava/lang/String; = "com.vivo.devicereg"

.field private static final VIVO_PC_TOOLS_PACKAGE_NAME:Ljava/lang/String; = "com.vivo.PCTools"

.field private static final sPackagesName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 816
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.vivo.findphone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.iqoo.secure"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.bbk.PCTools"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.bbk.cloud"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.vivo.PCTools"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.cutemms.cuteimageanim"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.vivo.daemonService"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.vivo.motionrecognition"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.vivo.ewarranty"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.mediatek.backuprestore"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.bbk.account"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.vivo.devicereg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SmsApplication$SmsWriteDbFilter;->sPackagesName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    sget-object v0, Lcom/android/internal/telephony/SmsApplication$SmsWriteDbFilter;->sPackagesName:[Ljava/lang/String;

    return-object v0
.end method
