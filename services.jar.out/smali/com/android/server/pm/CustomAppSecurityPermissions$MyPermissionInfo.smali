.class Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
.super Landroid/content/pm/PermissionInfo;
.source "CustomAppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CustomAppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPermissionInfo"
.end annotation


# instance fields
.field mExistingReqFlags:I

.field mLabel:Ljava/lang/CharSequence;

.field mNew:Z

.field mNewReqFlags:I


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 123
    return-void
.end method
