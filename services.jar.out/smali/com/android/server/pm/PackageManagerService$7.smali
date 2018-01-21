.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sortRecentlyUsedApps(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PackageParser$Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .prologue
    .line 7808
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .locals 4
    .param p1, "arg0"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "arg1"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 7810
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 7811
    :cond_0
    const/4 v0, 0x0

    .line 7817
    :goto_0
    return v0

    .line 7814
    :cond_1
    iget-wide v0, p1, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    iget-wide v2, p2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 7815
    const/4 v0, -0x1

    goto :goto_0

    .line 7817
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 7808
    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/PackageParser$Package;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$7;->compare(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    return v0
.end method
