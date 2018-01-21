.class Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;
.super Landroid/widget/BaseAdapter;
.source "VivoContextListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/app/VivoContextListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/app/VivoContextListDialog;


# direct methods
.method public constructor <init>(Lcom/vivo/app/VivoContextListDialog;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;->this$0:Lcom/vivo/app/VivoContextListDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;->this$0:Lcom/vivo/app/VivoContextListDialog;

    # getter for: Lcom/vivo/app/VivoContextListDialog;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vivo/app/VivoContextListDialog;->access$000(Lcom/vivo/app/VivoContextListDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;->this$0:Lcom/vivo/app/VivoContextListDialog;

    # getter for: Lcom/vivo/app/VivoContextListDialog;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vivo/app/VivoContextListDialog;->access$000(Lcom/vivo/app/VivoContextListDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;->this$0:Lcom/vivo/app/VivoContextListDialog;

    # getter for: Lcom/vivo/app/VivoContextListDialog;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vivo/app/VivoContextListDialog;->access$000(Lcom/vivo/app/VivoContextListDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 121
    if-nez p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;->this$0:Lcom/vivo/app/VivoContextListDialog;

    # getter for: Lcom/vivo/app/VivoContextListDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/vivo/app/VivoContextListDialog;->access$100(Lcom/vivo/app/VivoContextListDialog;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x303000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 124
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method
