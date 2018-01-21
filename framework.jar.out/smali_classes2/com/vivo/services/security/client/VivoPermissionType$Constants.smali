.class public final Lcom/vivo/services/security/client/VivoPermissionType$Constants;
.super Ljava/lang/Object;
.source "VivoPermissionType.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/client/VivoPermissionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final CAMERA_VIDEO:Ljava/lang/String; = "android.permission.CAMERA_VIDEO"

.field public static final CUSTOM_READ_MMS:Ljava/lang/String; = "android.permission.READ_MMS"

.field public static final CUSTOM_SEND_EMAIL:Ljava/lang/String; = "android.permission.SEND_EMAIL"

.field public static final CUSTOM_SEND_MMS:Ljava/lang/String; = "android.permission.SEND_MMS"

.field public static final CUSTOM_WRITE_MMS:Ljava/lang/String; = "android.permission.WRITE_MMS"

.field public static final VALUE_ACCESS_LOCATION:I = 0xc

.field public static final VALUE_BLUETOOTH:I = 0x13

.field public static final VALUE_CALL_PHONE:I = 0x2

.field public static final VALUE_CAMERA_IMAGE:I = 0xe

.field public static final VALUE_CAMERA_VIDEO:I = 0xf

.field public static final VALUE_CHANGE_NETWORK_STATE:I = 0x11

.field public static final VALUE_CHANGE_WIFI_STATE:I = 0x12

.field public static final VALUE_INTERNET:I = 0x17

.field public static final VALUE_LAST:I = 0x1e

.field public static final VALUE_MONITOR_CALL:I = 0x3

.field public static final VALUE_NFC:I = 0x14

.field public static final VALUE_READ_CALENDAR:I = 0x1a

.field public static final VALUE_READ_CALL_LOG:I = 0xa

.field public static final VALUE_READ_CONTACTS:I = 0x8

.field public static final VALUE_READ_INTERNET_RECORDS:I = 0x1c

.field public static final VALUE_READ_MMS:I = 0x6

.field public static final VALUE_READ_PHONE_STATE:I = 0xd

.field public static final VALUE_READ_SMS:I = 0x4

.field public static final VALUE_RECORD_AUDIO:I = 0x10

.field public static final VALUE_RW_FILE:I = 0x16

.field public static final VALUE_SCREENSHOT:I = 0x19

.field public static final VALUE_SEND_EMAIL:I = 0x15

.field public static final VALUE_SEND_MMS:I = 0x1

.field public static final VALUE_SEND_SMS:I = 0x0

.field public static final VALUE_THIRD_PHONE:I = 0x18

.field public static final VALUE_WHITE_INTERNET_RECORDS:I = 0x1d

.field public static final VALUE_WRITE_CALENDAR:I = 0x1b

.field public static final VALUE_WRITE_CALL_LOG:I = 0xb

.field public static final VALUE_WRITE_CONTACTS:I = 0x9

.field public static final VALUE_WRITE_MMS:I = 0x7

.field public static final VALUE_WRITE_SMS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
