.class Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionInfoComparator;
.super Ljava/lang/Object;
.source "CustomAppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CustomAppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    .line 471
    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;)I
    .locals 3
    .param p1, "a"    # Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    .param p2, "b"    # Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 468
    check-cast p1, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionInfoComparator;->compare(Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;)I

    move-result v0

    return v0
.end method
