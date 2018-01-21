.class public Landroid/security/FtCredentials;
.super Ljava/lang/Object;
.source "FtCredentials.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final EXTRA_WAPI_SERVER_CERTIFICATE_DATA:Ljava/lang/String; = "wapi_server_certificate_data"

.field public static final EXTRA_WAPI_SERVER_CERTIFICATE_NAME:Ljava/lang/String; = "wapi_server_certificate_name"

.field public static final EXTRA_WAPI_USER_CERTIFICATE_DATA:Ljava/lang/String; = "wapi_user_certificate_data"

.field public static final EXTRA_WAPI_USER_CERTIFICATE_NAME:Ljava/lang/String; = "wapi_user_certificate_name"

.field public static final WAPI_SERVER_CERTIFICATE:Ljava/lang/String; = "WAPISERVERCERT_"

.field public static final WAPI_USER_CERTIFICATE:Ljava/lang/String; = "WAPIUSERCERT_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
