.class public Lcom/android/server/pm/CustomAppSecurityPermissions;
.super Ljava/lang/Object;
.source "CustomAppSecurityPermissions.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionInfoComparator;,
        Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionGroupInfoComparator;,
        Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;,
        Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;,
        Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomAppSecurityPermissions"

.field private static final WHICH_ALL:I = 0xffff

.field private static final WHICH_DEVICE:I = 0x2

.field private static final WHICH_NEW:I = 0x4

.field private static final WHICH_PERSONAL:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mNewPermPrefix:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPermComparator:Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionInfoComparator;

.field private final mPermGroupComparator:Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionGroupInfoComparator;

.field private final mPermGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermGroupsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-direct {v0}, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionGroupInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroupComparator:Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionGroupInfoComparator;

    .line 65
    new-instance v0, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionInfoComparator;

    invoke-direct {v0}, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermComparator:Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionInfoComparator;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 180
    iput-object p1, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 181
    iget-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 184
    iget-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mContext:Landroid/content/Context;

    const v1, 0x10403d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/pm/CustomAppSecurityPermissions;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 190
    .local v2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;>;"
    if-nez p2, :cond_0

    .line 219
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, "installedPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 200
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x1000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 204
    :goto_1
    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/pm/CustomAppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V

    .line 207
    :cond_1
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 210
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v3

    .line 211
    .local v3, "sharedUid":I
    invoke-direct {p0, v3, v2}, Lcom/android/server/pm/CustomAppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    .end local v3    # "sharedUid":I
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-object v4, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/server/pm/CustomAppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "CustomAppSecurityPermissions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t retrieve shared user id for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 202
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private addPermToList(Ljava/util/List;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;)V
    .locals 2
    .param p2, "pInfo"    # Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "permList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;>;"
    iget-object v1, p2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermComparator:Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionInfoComparator;

    invoke-static {p1, p2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 483
    .local v0, "idx":I
    if-gez v0, :cond_1

    .line 484
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 485
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 487
    :cond_1
    return-void
.end method

.method private displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V
    .locals 12
    .param p2, "permListView"    # Landroid/widget/LinearLayout;
    .param p3, "which"    # I
    .param p4, "showRevokeUI"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;>;"
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 361
    const/high16 v0, 0x41000000    # 8.0f

    iget-object v3, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v10, v0

    .line 363
    .local v10, "spacing":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 364
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

    .line 365
    .local v1, "grp":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/CustomAppSecurityPermissions;->getPermissionList(Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v9

    .line 366
    .local v9, "perms":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 367
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;

    .line 368
    .local v2, "perm":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    if-nez v7, :cond_3

    const/4 v3, 0x1

    :goto_2
    const/4 v0, 0x4

    if-eq p3, v0, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    :goto_3
    move-object v0, p0

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/CustomAppSecurityPermissions;->getPermissionItemView(Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;

    move-result-object v11

    .line 370
    .local v11, "view":Landroid/view/View;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x2

    invoke-direct {v8, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 373
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v7, :cond_0

    .line 374
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 376
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_1

    .line 377
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 379
    :cond_1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 380
    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 382
    :cond_2
    invoke-virtual {p2, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 368
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 363
    .end local v2    # "perm":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "grp":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    .end local v7    # "j":I
    .end local v9    # "perms":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;>;"
    :cond_6
    return-void
.end method

.method private extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    .locals 21
    .param p1, "info"    # Landroid/content/pm/PackageInfo;
    .param p3, "installedPkgInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 243
    .local v16, "strList":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 244
    .local v6, "flagsList":[I
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 319
    :cond_0
    return-void

    .line 247
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    .line 248
    aget-object v15, v16, v10

    .line 251
    .local v15, "permName":Ljava/lang/String;
    if-eqz p3, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_3

    .line 252
    aget v18, v6, v10

    and-int/lit8 v18, v18, 0x2

    if-nez v18, :cond_3

    .line 247
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 257
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v17

    .line 258
    .local v17, "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v17, :cond_2

    .line 261
    const/4 v5, -0x1

    .line 262
    .local v5, "existingIndex":I
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 264
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_4

    .line 265
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 266
    move v5, v11

    .line 271
    .end local v11    # "j":I
    :cond_4
    if-ltz v5, :cond_9

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move-object/from16 v18, v0

    aget v4, v18, v5

    .line 273
    .local v4, "existingFlags":I
    :goto_3
    aget v18, v6, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/pm/CustomAppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 278
    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 279
    .local v14, "origGroupName":Ljava/lang/String;
    move-object v8, v14

    .line 280
    .local v8, "groupName":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 281
    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 282
    move-object/from16 v0, v17

    iput-object v8, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 284
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

    .line 285
    .local v7, "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    if-nez v7, :cond_7

    .line 286
    const/4 v9, 0x0

    .line 287
    .local v9, "grp":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v14, :cond_6

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v9

    .line 290
    :cond_6
    if-eqz v9, :cond_a

    .line 291
    new-instance v7, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    invoke-direct {v7, v9}, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 304
    .restart local v7    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v9    # "grp":Landroid/content/pm/PermissionGroupInfo;
    :cond_7
    if-eqz p3, :cond_c

    and-int/lit8 v18, v4, 0x2

    if-nez v18, :cond_c

    const/4 v13, 0x1

    .line 308
    .local v13, "newPerm":Z
    :goto_5
    new-instance v12, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 309
    .local v12, "myPerm":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    aget v18, v6, v10

    move/from16 v0, v18

    iput v0, v12, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    .line 310
    iput v4, v12, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    .line 313
    iput-boolean v13, v12, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mNew:Z

    .line 314
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 315
    .end local v4    # "existingFlags":I
    .end local v5    # "existingIndex":I
    .end local v7    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    .end local v8    # "groupName":Ljava/lang/String;
    .end local v12    # "myPerm":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    .end local v13    # "newPerm":Z
    .end local v14    # "origGroupName":Ljava/lang/String;
    .end local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v3

    .line 316
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "CustomAppSecurityPermissions"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignoring unknown permission:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 264
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "existingIndex":I
    .restart local v11    # "j":I
    .restart local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 271
    .end local v11    # "j":I
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 297
    .restart local v4    # "existingFlags":I
    .restart local v7    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    .restart local v8    # "groupName":Ljava/lang/String;
    .restart local v9    # "grp":Landroid/content/pm/PermissionGroupInfo;
    .restart local v14    # "origGroupName":Ljava/lang/String;
    :cond_a
    :try_start_1
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    check-cast v7, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

    .line 299
    .restart local v7    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    if-nez v7, :cond_b

    .line 300
    new-instance v7, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 302
    .restart local v7    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    :cond_b
    new-instance v7, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v7    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    goto/16 :goto_4

    .line 306
    .end local v9    # "grp":Landroid/content/pm/PermissionGroupInfo;
    :cond_c
    const/4 v13, 0x0

    goto :goto_5
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 6
    .param p1, "sharedUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "sharedPkgList":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 229
    :cond_0
    return-void

    .line 226
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 227
    .local v3, "sharedPkg":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/CustomAppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "grp"    # Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    .param p3, "perm"    # Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    .param p4, "first"    # Z
    .param p5, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "showRevokeUI"    # Z

    .prologue
    .line 396
    iget v1, p3, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const v1, 0x3030005

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;

    .local v0, "permView":Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;
    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 400
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;->setPermission(Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 401
    return-object v0

    .line 396
    .end local v0    # "permView":Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;
    :cond_0
    const v1, 0x3030004

    goto :goto_0
.end method

.method private getPermissionItemView(Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;
    .locals 8
    .param p1, "grp"    # Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "showRevokeUI"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/CustomAppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;

    move-result-object v0

    return-object v0
.end method

.method private static getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "grpName"    # Ljava/lang/CharSequence;
    .param p3, "permList"    # Ljava/lang/CharSequence;
    .param p4, "dangerous"    # Z
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 406
    const v4, 0x3030006

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 408
    .local v3, "permView":Landroid/view/View;
    const v4, 0x30d000e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 409
    .local v2, "permGrpView":Landroid/widget/TextView;
    const v4, 0x30d000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 411
    .local v1, "permDescView":Landroid/widget/TextView;
    const v4, 0x30d000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 412
    .local v0, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    if-eqz p2, :cond_0

    .line 414
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :goto_0
    return-object v3

    .line 417
    :cond_0
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getPermissionList(Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;
    .locals 1
    .param p1, "grp"    # Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 331
    iget-object v0, p1, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 337
    :goto_0
    return-object v0

    .line 332
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 333
    iget-object v0, p1, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 335
    iget-object v0, p1, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p1, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 234
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1, p2, v1}, Lcom/android/server/pm/CustomAppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CustomAppSecurityPermissions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve permissions for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z
    .locals 10
    .param p1, "pInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "newReqFlags"    # I
    .param p3, "existingReqFlags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 425
    iget v9, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v9, 0xf

    .line 426
    .local v0, "base":I
    if-nez v0, :cond_2

    move v4, v7

    .line 427
    .local v4, "isNormal":Z
    :goto_0
    if-ne v0, v7, :cond_3

    move v1, v7

    .line 428
    .local v1, "isDangerous":Z
    :goto_1
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_4

    move v5, v7

    .line 430
    .local v5, "isRequired":Z
    :goto_2
    iget v9, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_5

    move v2, v7

    .line 432
    .local v2, "isDevelopment":Z
    :goto_3
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_6

    move v6, v7

    .line 434
    .local v6, "wasGranted":Z
    :goto_4
    and-int/lit8 v9, p2, 0x2

    if-eqz v9, :cond_7

    move v3, v7

    .line 439
    .local v3, "isGranted":Z
    :goto_5
    if-nez v4, :cond_0

    if-eqz v1, :cond_8

    :cond_0
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-eqz v3, :cond_8

    .line 450
    :cond_1
    :goto_6
    return v7

    .end local v1    # "isDangerous":Z
    .end local v2    # "isDevelopment":Z
    .end local v3    # "isGranted":Z
    .end local v4    # "isNormal":Z
    .end local v5    # "isRequired":Z
    .end local v6    # "wasGranted":Z
    :cond_2
    move v4, v8

    .line 426
    goto :goto_0

    .restart local v4    # "isNormal":Z
    :cond_3
    move v1, v8

    .line 427
    goto :goto_1

    .restart local v1    # "isDangerous":Z
    :cond_4
    move v5, v8

    .line 428
    goto :goto_2

    .restart local v5    # "isRequired":Z
    :cond_5
    move v2, v8

    .line 430
    goto :goto_3

    .restart local v2    # "isDevelopment":Z
    :cond_6
    move v6, v8

    .line 432
    goto :goto_4

    .restart local v6    # "wasGranted":Z
    :cond_7
    move v3, v8

    .line 434
    goto :goto_5

    .line 446
    .restart local v3    # "isGranted":Z
    :cond_8
    if-eqz v2, :cond_9

    if-nez v6, :cond_1

    :cond_9
    move v7, v8

    .line 450
    goto :goto_6
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "permList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;>;"
    if-eqz p1, :cond_3

    .line 492
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;

    .line 493
    .local v4, "pInfo":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    iget v6, v4, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    iget v7, v4, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/pm/CustomAppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 496
    iget-object v6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v7, v4, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

    .line 497
    .local v2, "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    if-eqz v2, :cond_0

    .line 498
    iget-object v6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 499
    iget-object v6, v2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v4}, Lcom/android/server/pm/CustomAppSecurityPermissions;->addPermToList(Ljava/util/List;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;)V

    .line 500
    iget-boolean v6, v4, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v6, :cond_1

    .line 501
    iget-object v6, v2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v4}, Lcom/android/server/pm/CustomAppSecurityPermissions;->addPermToList(Ljava/util/List;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;)V

    .line 503
    :cond_1
    iget v6, v2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 504
    iget-object v6, v2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v4}, Lcom/android/server/pm/CustomAppSecurityPermissions;->addPermToList(Ljava/util/List;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;)V

    goto :goto_0

    .line 506
    :cond_2
    iget-object v6, v2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v4}, Lcom/android/server/pm/CustomAppSecurityPermissions;->addPermToList(Ljava/util/List;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;)V

    goto :goto_0

    .line 512
    .end local v2    # "group":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pInfo":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

    .line 513
    .local v5, "pgrp":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    iget v6, v5, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->labelRes:I

    if-nez v6, :cond_4

    iget-object v6, v5, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    .line 514
    :cond_4
    iget-object v6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    .line 524
    :goto_2
    iget-object v6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 518
    :cond_5
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v5, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 519
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 520
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 526
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "pgrp":Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    :cond_6
    iget-object v6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroupComparator:Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 527
    return-void
.end method


# virtual methods
.method public getPermissionCount()I
    .locals 4

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

    const v3, 0xffff

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/CustomAppSecurityPermissions;->getPermissionList(Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_0
    return v0
.end method

.method public getPermissionsView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 342
    iget-object v3, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x3030007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 343
    .local v2, "permsView":Landroid/widget/LinearLayout;
    const v3, 0x30d0011

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 344
    .local v0, "displayList":Landroid/widget/LinearLayout;
    const v3, 0x30d0010

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 346
    .local v1, "noPermsView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/server/pm/CustomAppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    const v4, 0xffff

    invoke-direct {p0, v3, v0, v4, v6}, Lcom/android/server/pm/CustomAppSecurityPermissions;->displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V

    .line 347
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 348
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :cond_0
    return-object v2
.end method
