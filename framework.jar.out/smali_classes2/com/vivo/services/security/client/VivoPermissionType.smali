.class public final enum Lcom/vivo/services/security/client/VivoPermissionType;
.super Ljava/lang/Enum;
.source "VivoPermissionType.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/security/client/VivoPermissionType$Constants;,
        Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vivo/services/security/client/VivoPermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum BLUETOOTH:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum CALL_PHONE:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum CAMERA_IMAGE:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum CAMERA_VIDEO:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum CHANGE_NETWORK_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum CHANGE_WIFI_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum INTERNET:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum LAST:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum MONITOR_CALL:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum NFC:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum READ_CALENDAR:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum READ_CALL_LOG:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum READ_CONTACTS:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum READ_INTERNET_RECORDS:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum READ_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum READ_PHONE_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum READ_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum RECORD_AUDIO:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum RW_FILE:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum SCREENSHOT:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum SEND_EMAIL:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum SEND_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum SEND_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum THIRD_PHONE:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum WHITE_INTERNET_RECORDS:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum WRITE_CALENDAR:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum WRITE_CALL_LOG:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum WRITE_CONTACTS:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum WRITE_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

.field public static final enum WRITE_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

.field private static final sPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vivo/services/security/client/VivoPermissionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategory:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

.field private mTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "SEND_SMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->COMMUNICATION:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 16
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "SEND_MMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->COMMUNICATION:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 17
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "CALL_PHONE"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->COMMUNICATION:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->CALL_PHONE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 18
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "MONITOR_CALL"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->MONITOR_CALL:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 19
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "READ_SMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 20
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "WRITE_SMS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 21
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "READ_MMS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 22
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "WRITE_MMS"

    const/4 v2, 0x7

    const/4 v3, 0x7

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 23
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "READ_CONTACTS"

    const/16 v2, 0x8

    const/16 v3, 0x8

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CONTACTS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 24
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "WRITE_CONTACTS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CONTACTS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 25
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "READ_CALL_LOG"

    const/16 v2, 0xa

    const/16 v3, 0xa

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CALL_LOG:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 26
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "WRITE_CALL_LOG"

    const/16 v2, 0xb

    const/16 v3, 0xb

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CALL_LOG:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 27
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "ACCESS_LOCATION"

    const/16 v2, 0xc

    const/16 v3, 0xc

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 28
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "READ_PHONE_STATE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_PHONE_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 29
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "CAMERA_IMAGE"

    const/16 v2, 0xe

    const/16 v3, 0xe

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->DEVICE:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->CAMERA_IMAGE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 30
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "CAMERA_VIDEO"

    const/16 v2, 0xf

    const/16 v3, 0xf

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->CAMERA_VIDEO:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 31
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "RECORD_AUDIO"

    const/16 v2, 0x10

    const/16 v3, 0x10

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->DEVICE:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->RECORD_AUDIO:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 32
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "CHANGE_NETWORK_STATE"

    const/16 v2, 0x11

    const/16 v3, 0x11

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->DEVICE:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->CHANGE_NETWORK_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 33
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "CHANGE_WIFI_STATE"

    const/16 v2, 0x12

    const/16 v3, 0x12

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->DEVICE:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->CHANGE_WIFI_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 34
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "BLUETOOTH"

    const/16 v2, 0x13

    const/16 v3, 0x13

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->DEVICE:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->BLUETOOTH:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 35
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "NFC"

    const/16 v2, 0x14

    const/16 v3, 0x14

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->DEVICE:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->NFC:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 37
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "SEND_EMAIL"

    const/16 v2, 0x15

    const/16 v3, 0x15

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_EMAIL:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 38
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "RW_FILE"

    const/16 v2, 0x16

    const/16 v3, 0x16

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->RW_FILE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 39
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "INTERNET"

    const/16 v2, 0x17

    const/16 v3, 0x17

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->INTERNET:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 41
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "THIRD_PHONE"

    const/16 v2, 0x18

    const/16 v3, 0x18

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->THIRD_PHONE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 42
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "SCREENSHOT"

    const/16 v2, 0x19

    const/16 v3, 0x19

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->SCREENSHOT:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 43
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "READ_CALENDAR"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CALENDAR:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 44
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "WRITE_CALENDAR"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CALENDAR:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 45
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "READ_INTERNET_RECORDS"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_INTERNET_RECORDS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 46
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "WHITE_INTERNET_RECORDS"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WHITE_INTERNET_RECORDS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 47
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType;

    const-string v1, "LAST"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->LAST_CATEGORY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionType;-><init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->LAST:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 12
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/vivo/services/security/client/VivoPermissionType;

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType;->CALL_PHONE:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType;->MONITOR_CALL:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType;->READ_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CONTACTS:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CONTACTS:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CALL_LOG:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CALL_LOG:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_PHONE_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->CAMERA_IMAGE:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->CAMERA_VIDEO:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->RECORD_AUDIO:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->CHANGE_NETWORK_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->CHANGE_WIFI_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->BLUETOOTH:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->NFC:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_EMAIL:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->RW_FILE:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->INTERNET:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->THIRD_PHONE:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->SCREENSHOT:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CALENDAR:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CALENDAR:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_INTERNET_RECORDS:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->WHITE_INTERNET_RECORDS:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->LAST:Lcom/vivo/services/security/client/VivoPermissionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->$VALUES:[Lcom/vivo/services/security/client/VivoPermissionType;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    .line 55
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.SEND_SMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.SEND_MMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.CALL_PHONE"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->CALL_PHONE:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->MONITOR_CALL:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.READ_SMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.RECEIVE_SMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.WRITE_SMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.RECEIVE_MMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.READ_MMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.WRITE_MMS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.READ_CONTACTS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CONTACTS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.WRITE_CONTACTS"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CONTACTS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.READ_CALL_LOG"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CALL_LOG:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CALL_LOG:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.READ_PHONE_STATE"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_PHONE_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.CAMERA"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->CAMERA_IMAGE:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.CAMERA_VIDEO"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->CAMERA_IMAGE:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.RECORD_AUDIO"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->RECORD_AUDIO:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.SEND_EMAIL"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_EMAIL:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->RW_FILE:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->RW_FILE:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->CHANGE_NETWORK_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->CHANGE_WIFI_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.INTERNET"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->INTERNET:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.NFC"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->NFC:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.BLUETOOTH"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->BLUETOOTH:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    const-string v1, "android.permission.READ_CALENDAR"

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CALENDAR:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;)V
    .locals 0
    .param p3, "typeId"    # I
    .param p4, "category"    # Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput p3, p0, Lcom/vivo/services/security/client/VivoPermissionType;->mTypeId:I

    .line 91
    iput-object p4, p0, Lcom/vivo/services/security/client/VivoPermissionType;->mCategory:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    .line 92
    return-void
.end method

.method public static getVPType(I)Lcom/vivo/services/security/client/VivoPermissionType;
    .locals 1
    .param p0, "id"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->LAST:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 98
    .local v0, "type":Lcom/vivo/services/security/client/VivoPermissionType;
    packed-switch p0, :pswitch_data_0

    .line 191
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->LAST:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 195
    :goto_0
    return-object v0

    .line 101
    :pswitch_0
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 102
    goto :goto_0

    .line 104
    :pswitch_1
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 105
    goto :goto_0

    .line 107
    :pswitch_2
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->CALL_PHONE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 108
    goto :goto_0

    .line 110
    :pswitch_3
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->MONITOR_CALL:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 111
    goto :goto_0

    .line 113
    :pswitch_4
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 114
    goto :goto_0

    .line 116
    :pswitch_5
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_SMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 117
    goto :goto_0

    .line 119
    :pswitch_6
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 120
    goto :goto_0

    .line 122
    :pswitch_7
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 123
    goto :goto_0

    .line 125
    :pswitch_8
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CONTACTS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 126
    goto :goto_0

    .line 128
    :pswitch_9
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CONTACTS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 129
    goto :goto_0

    .line 131
    :pswitch_a
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CALL_LOG:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 132
    goto :goto_0

    .line 134
    :pswitch_b
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CALL_LOG:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 135
    goto :goto_0

    .line 137
    :pswitch_c
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 138
    goto :goto_0

    .line 140
    :pswitch_d
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_PHONE_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 141
    goto :goto_0

    .line 143
    :pswitch_e
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->CAMERA_IMAGE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 144
    goto :goto_0

    .line 146
    :pswitch_f
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->CAMERA_VIDEO:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 147
    goto :goto_0

    .line 149
    :pswitch_10
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->RECORD_AUDIO:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 150
    goto :goto_0

    .line 152
    :pswitch_11
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_EMAIL:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 153
    goto :goto_0

    .line 155
    :pswitch_12
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->RW_FILE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 156
    goto :goto_0

    .line 158
    :pswitch_13
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->CHANGE_NETWORK_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 159
    goto :goto_0

    .line 161
    :pswitch_14
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->CHANGE_WIFI_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 162
    goto :goto_0

    .line 164
    :pswitch_15
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->INTERNET:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 165
    goto :goto_0

    .line 167
    :pswitch_16
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->NFC:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 168
    goto :goto_0

    .line 170
    :pswitch_17
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->BLUETOOTH:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 171
    goto :goto_0

    .line 173
    :pswitch_18
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->THIRD_PHONE:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 174
    goto :goto_0

    .line 176
    :pswitch_19
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->SCREENSHOT:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 177
    goto :goto_0

    .line 179
    :pswitch_1a
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_CALENDAR:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 180
    goto :goto_0

    .line 182
    :pswitch_1b
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WRITE_CALENDAR:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 183
    goto :goto_0

    .line 185
    :pswitch_1c
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->READ_INTERNET_RECORDS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 186
    goto :goto_0

    .line 188
    :pswitch_1d
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->WHITE_INTERNET_RECORDS:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 189
    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public static getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->sPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/services/security/client/VivoPermissionType;

    .line 201
    .local v1, "type":Lcom/vivo/services/security/client/VivoPermissionType;
    if-eqz v1, :cond_1

    .line 203
    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionType;->MONITOR_CALL:Lcom/vivo/services/security/client/VivoPermissionType;

    if-ne v1, v2, :cond_0

    .line 205
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v0

    .line 206
    .local v0, "osVer":F
    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 208
    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType;->LAST:Lcom/vivo/services/security/client/VivoPermissionType;

    .line 216
    .end local v0    # "osVer":F
    .end local v1    # "type":Lcom/vivo/services/security/client/VivoPermissionType;
    :cond_0
    :goto_0
    return-object v1

    .line 215
    .restart local v1    # "type":Lcom/vivo/services/security/client/VivoPermissionType;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return LAST."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfDebug(Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType;->LAST:Lcom/vivo/services/security/client/VivoPermissionType;

    goto :goto_0
.end method

.method public static isValidTypeId(I)Z
    .locals 1
    .param p0, "type"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 253
    if-ltz p0, :cond_0

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_1

    .line 255
    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionType;

    return-object v0
.end method

.method public static values()[Lcom/vivo/services/security/client/VivoPermissionType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType;->$VALUES:[Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v0}, [Lcom/vivo/services/security/client/VivoPermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vivo/services/security/client/VivoPermissionType;

    return-object v0
.end method


# virtual methods
.method public getVPCategory()Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;
    .locals 3
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v0

    .line 225
    .local v0, "osVer":F
    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionType;->mCategory:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    return-object v1

    .line 231
    :cond_1
    iget v1, p0, Lcom/vivo/services/security/client/VivoPermissionType;->mTypeId:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_2

    .line 233
    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    iput-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionType;->mCategory:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    .line 236
    :cond_2
    iget v1, p0, Lcom/vivo/services/security/client/VivoPermissionType;->mTypeId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 238
    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    iput-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionType;->mCategory:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    goto :goto_0
.end method

.method public getVPTypeId()I
    .locals 1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 247
    iget v0, p0, Lcom/vivo/services/security/client/VivoPermissionType;->mTypeId:I

    return v0
.end method
