.class public Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "CustomAppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CustomAppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation


# instance fields
.field mGroup:Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

.field private mPackageName:Ljava/lang/String;

.field mPerm:Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;

.field private mShowRevokeUI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    iput-boolean v0, p0, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    .line 135
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 175
    return-void
.end method

.method public setPermission(Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "grp"    # Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "showRevokeUI"    # Z

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;->mGroup:Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;

    .line 141
    iput-object p2, p0, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;

    .line 142
    iput-boolean p6, p0, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 143
    iput-object p5, p0, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    .line 145
    const v8, 0x30d000a

    invoke-virtual {p0, v8}, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 146
    .local v5, "permGrpIcon":Landroid/widget/ImageView;
    const v8, 0x30d000b

    invoke-virtual {p0, v8}, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 148
    .local v6, "permNameView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/server/pm/CustomAppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 149
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 150
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 151
    invoke-virtual {p1, v7}, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    :cond_0
    iget-object v2, p2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 154
    .local v2, "label":Ljava/lang/CharSequence;
    iget-boolean v8, p2, Lcom/android/server/pm/CustomAppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v8, :cond_1

    if-eqz p4, :cond_1

    .line 156
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 157
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 158
    .local v4, "parcel":Landroid/os/Parcel;
    const/4 v8, 0x0

    invoke-static {p4, v4, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 159
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 160
    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 161
    .local v3, "newStr":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 163
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    move-object v2, v0

    .line 167
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "newStr":Ljava/lang/CharSequence;
    .end local v4    # "parcel":Landroid/os/Parcel;
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method
