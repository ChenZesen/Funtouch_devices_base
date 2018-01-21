.class public Lcom/vivo/app/VivoContextListDialog;
.super Landroid/app/Dialog;
.source "VivoContextListDialog.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoContextListDialog"


# instance fields
.field private mDensity:F

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mTitleRoot:Landroid/widget/FrameLayout;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->CONTEXT_MENU_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v0}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 50
    iput-object p2, p0, Lcom/vivo/app/VivoContextListDialog;->mItems:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vivo/app/VivoContextListDialog;->mDensity:F

    .line 52
    invoke-direct {p0, p1}, Lcom/vivo/app/VivoContextListDialog;->initVivoContextListDialog(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/app/VivoContextListDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/VivoContextListDialog;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/app/VivoContextListDialog;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/app/VivoContextListDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/VivoContextListDialog;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/app/VivoContextListDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private initVivoContextListDialog(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 58
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/vivo/app/VivoContextListDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    iget-object v2, p0, Lcom/vivo/app/VivoContextListDialog;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x303000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "view":Landroid/view/View;
    const v2, 0x30d0027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vivo/app/VivoContextListDialog;->mTitleView:Landroid/widget/TextView;

    .line 64
    const v2, 0x30d0026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/vivo/app/VivoContextListDialog;->mTitleRoot:Landroid/widget/FrameLayout;

    .line 65
    iget-object v2, p0, Lcom/vivo/app/VivoContextListDialog;->mTitleRoot:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 67
    const v2, 0x30d0029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/vivo/app/VivoContextListDialog;->mListView:Landroid/widget/ListView;

    .line 70
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/vivo/app/VivoContextListDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {p0}, Lcom/vivo/app/VivoContextListDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 72
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 73
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    invoke-virtual {p0}, Lcom/vivo/app/VivoContextListDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    invoke-virtual {p0}, Lcom/vivo/app/VivoContextListDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 78
    invoke-virtual {p0, v7}, Lcom/vivo/app/VivoContextListDialog;->setCancelable(Z)V

    .line 79
    invoke-virtual {p0, v7}, Lcom/vivo/app/VivoContextListDialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    new-instance v2, Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;

    invoke-direct {v2, p0}, Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;-><init>(Lcom/vivo/app/VivoContextListDialog;)V

    iput-object v2, p0, Lcom/vivo/app/VivoContextListDialog;->mListAdapter:Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;

    .line 83
    iget-object v2, p0, Lcom/vivo/app/VivoContextListDialog;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vivo/app/VivoContextListDialog;->mListAdapter:Lcom/vivo/app/VivoContextListDialog$ContextListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v2, p0, Lcom/vivo/app/VivoContextListDialog;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vivo/app/VivoContextListDialog;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/vivo/app/VivoContextListDialog;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 94
    iget-object v0, p0, Lcom/vivo/app/VivoContextListDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vivo/app/VivoContextListDialog;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vivo/app/VivoContextListDialog;->mTitleRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/vivo/app/VivoContextListDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method
