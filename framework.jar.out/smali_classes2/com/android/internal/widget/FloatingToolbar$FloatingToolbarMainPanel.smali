.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarMainPanel"
.end annotation


# instance fields
.field private final mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

.field private final mContext:Landroid/content/Context;

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOpenOverflow:Ljava/lang/Runnable;

.field private mOpenOverflowButton:Landroid/view/View;

.field private final viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openOverflow"    # Ljava/lang/Runnable;

    .prologue
    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 1111
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    .line 1114
    new-instance v0, Lcom/android/internal/widget/FtMainPanelLayout;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/FtMainPanelLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    .line 1115
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FtMainPanelLayout;->setMenuItemOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$1;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    .line 1118
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    .line 1119
    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    return-object v0
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1233
    move-object v0, p1

    .line 1234
    .local v0, "button":Landroid/view/View;
    # invokes: Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    invoke-static {p2}, Lcom/android/internal/widget/FloatingToolbar;->access$2400(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1235
    const v1, 0x1020054

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1237
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1238
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1239
    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeIn(Z)V

    .line 1215
    return-void
.end method

.method public fadeOut(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeOut(Z)V

    .line 1219
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;I)Ljava/util/List;
    .locals 16
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    if-eqz v10, :cond_1

    .line 1132
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lcom/android/internal/widget/FtMainPanelLayout;->layoutMenuItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    .line 1194
    :cond_0
    :goto_0
    return-object v8

    .line 1136
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I
    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar;->access$2000(Landroid/content/Context;)I

    move-result v10

    sub-int v9, p2, v10

    .line 1138
    .local v9, "toolbarWidth":I
    move v2, v9

    .line 1139
    .local v2, "availableWidth":I
    new-instance v8, Ljava/util/LinkedList;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1141
    .local v8, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    invoke-virtual {v10}, Lcom/android/internal/widget/FtMainPanelLayout;->removeAllViews()V

    .line 1143
    const/4 v3, 0x1

    .line 1144
    .local v3, "isFirstItem":Z
    :goto_1
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1145
    invoke-virtual {v8}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 1146
    .local v4, "menuItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    invoke-static {v10, v4}, Lcom/android/internal/widget/FloatingToolbar;->access$2100(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v5

    .line 1149
    .local v5, "menuItemButton":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 1150
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1155
    const/4 v3, 0x0

    .line 1159
    :cond_2
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 1160
    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v12, v14

    double-to-int v12, v12

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1167
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1168
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1169
    .local v6, "menuItemButtonWidth":I
    if-gt v6, v2, :cond_4

    .line 1170
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    invoke-virtual {v10, v5}, Lcom/android/internal/widget/FtMainPanelLayout;->addView(Landroid/view/View;)V

    .line 1172
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1173
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1174
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    sub-int/2addr v2, v6

    .line 1176
    invoke-virtual {v8}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1178
    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    if-nez v10, :cond_5

    .line 1179
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x109005c

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    .line 1181
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    new-instance v11, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/FtMainPanelLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public measure()Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1227
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/FtMainPanelLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1228
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/widget/FtMainPanelLayout;->measure(II)V

    .line 1229
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/FtMainPanelLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/FtMainPanelLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    move v0, v1

    .line 1227
    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1199
    return-void
.end method

.method public updateFloatingArrow(ZI)V
    .locals 1
    .param p1, "isAbove"    # Z
    .param p2, "pointTo"    # I

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Lcom/android/internal/widget/FtMainPanelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/FtMainPanelLayout;->updateFloatingArrow(ZI)V

    .line 1206
    :cond_0
    return-void
.end method
