.class public Lcom/vivo/app/VivoBaseListActivity;
.super Lcom/vivo/app/VivoBaseActivity;
.source "VivoBaseListActivity.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseActivity;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mHandler:Landroid/os/Handler;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mFinishedStart:Z

    .line 27
    new-instance v0, Lcom/vivo/app/VivoBaseListActivity$1;

    invoke-direct {v0, p0}, Lcom/vivo/app/VivoBaseListActivity$1;-><init>(Lcom/vivo/app/VivoBaseListActivity;)V

    iput-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/vivo/app/VivoBaseListActivity$2;

    invoke-direct {v0, p0}, Lcom/vivo/app/VivoBaseListActivity$2;-><init>(Lcom/vivo/app/VivoBaseListActivity;)V

    iput-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/app/VivoBaseListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/VivoBaseListActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    const v0, 0x1090072

    invoke-virtual {p0, v0}, Lcom/vivo/app/VivoBaseListActivity;->setContentView(I)V

    goto :goto_0
.end method

.method private initListView()V
    .locals 3

    .prologue
    .line 74
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/vivo/app/VivoBaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/vivo/app/VivoBaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    .line 76
    iget-object v1, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    if-eqz v0, :cond_1

    .line 82
    iget-object v1, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vivo/app/VivoBaseListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    iget-boolean v1, p0, Lcom/vivo/app/VivoBaseListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/vivo/app/VivoBaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/vivo/app/VivoBaseListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/vivo/app/VivoBaseListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/app/VivoBaseListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/app/VivoBaseListActivity;->mFinishedStart:Z

    .line 90
    return-void
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseListActivity;->ensureList()V

    .line 144
    iget-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/app/VivoBaseListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    invoke-super {p0}, Lcom/vivo/app/VivoBaseActivity;->onDestroy()V

    .line 66
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 45
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseListActivity;->ensureList()V

    .line 56
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->setContentView(I)V

    .line 101
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseListActivity;->initListView()V

    .line 102
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/vivo/app/VivoBaseActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseListActivity;->initListView()V

    .line 96
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseListActivity;->ensureList()V

    .line 110
    iput-object p1, p0, Lcom/vivo/app/VivoBaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 111
    iget-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vivo/app/VivoBaseListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 123
    return-void
.end method
