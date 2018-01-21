.class public Lcom/vivo/vivotransition/VivoTransition;
.super Ljava/lang/Object;
.source "VivoTransition.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/vivotransition/VivoTransition$ViewInfo;,
        Lcom/vivo/vivotransition/VivoTransition$ShadowView;,
        Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:F = 0.999f

.field private static final ALPHA_TRANSPARENT:F = 0.001f

.field private static final CAMERA_Z_DEF:I = -0x8

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoTransition"

.field public static final TRANS_TYPE_BOX:Ljava/lang/String; = "Box"

.field public static final TRANS_TYPE_CYLINDER:Ljava/lang/String; = "Cylinder"

.field public static final TRANS_TYPE_DEPTH:Ljava/lang/String; = "Depth"

.field public static final TRANS_TYPE_FLIPOVER:Ljava/lang/String; = "Flipover"

.field public static final TRANS_TYPE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final TRANS_TYPE_PAGE:Ljava/lang/String; = "Page"

.field public static final TRANS_TYPE_PUSH:Ljava/lang/String; = "Push"

.field public static final TRANS_TYPE_ROTATION:Ljava/lang/String; = "Rotation"

.field public static final TRANS_TYPE_WINDMILL:Ljava/lang/String; = "Windmill"


# instance fields
.field private mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

.field private mActiveTransitionType:I

.field private mAlphaViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimInfoEnds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBgDstRect:Landroid/graphics/Rect;

.field private mBgNoZoom:Z

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBgSrcRect:Landroid/graphics/Rect;

.field private mBgStatic:Z

.field private mDrawMethod:Ljava/lang/reflect/Method;

.field private mErasePaint:Landroid/graphics/Paint;

.field private mFirstOffset:I

.field private mForceDraw:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsTransparent:Z

.field private mLayerType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOffset:F

.field private mPageSpacing:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetView:Landroid/view/View;

.field private mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

.field private mTransitionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vivo/vivotransition/algorithm/BaseTransition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/vivotransition/VivoTransition;-><init>(Landroid/view/View;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionType"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/vivotransition/VivoTransition;-><init>(Landroid/view/View;II)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionType"    # I
    .param p3, "pageSpace"    # I

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mAnimInfos:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mAnimInfoEnds:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mAlphas:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mLayerType:Ljava/util/ArrayList;

    .line 214
    iput-boolean v1, p0, Lcom/vivo/vivotransition/VivoTransition;->mForceDraw:Z

    .line 215
    iput-boolean v1, p0, Lcom/vivo/vivotransition/VivoTransition;->mBgStatic:Z

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mBgNoZoom:Z

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mOffset:F

    .line 218
    iput-boolean v1, p0, Lcom/vivo/vivotransition/VivoTransition;->mIsTransparent:Z

    .line 219
    iput v1, p0, Lcom/vivo/vivotransition/VivoTransition;->mFirstOffset:I

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mBgPaint:Landroid/graphics/Paint;

    .line 222
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mErasePaint:Landroid/graphics/Paint;

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mBgSrcRect:Landroid/graphics/Rect;

    .line 225
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 227
    if-eqz p1, :cond_0

    .line 228
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mPaint:Landroid/graphics/Paint;

    .line 229
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 230
    iput-object p1, p0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    .line 231
    invoke-direct {p0}, Lcom/vivo/vivotransition/VivoTransition;->getDrawChildMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mDrawMethod:Ljava/lang/reflect/Method;

    .line 232
    invoke-direct {p0}, Lcom/vivo/vivotransition/VivoTransition;->initTransitions()V

    .line 233
    invoke-virtual {p0, p2}, Lcom/vivo/vivotransition/VivoTransition;->setTransitionType(I)V

    .line 234
    invoke-virtual {p0, p3}, Lcom/vivo/vivotransition/VivoTransition;->setPageSpacing(I)V

    .line 236
    :cond_0
    return-void
.end method

.method private animView(Landroid/graphics/Canvas;Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;)Z
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "animateinfo"    # Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;

    .prologue
    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v4}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->getBreakTimes()I

    move-result v19

    .line 240
    .local v19, "breakTimes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v22

    .line 241
    .local v22, "childWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v21

    .line 242
    .local v21, "childHeight":I
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v38

    .line 243
    .local v38, "viewsSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->isScrolling:Z

    invoke-virtual {v4, v6}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->setState(Z)V

    .line 244
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v38

    if-ge v0, v1, :cond_1d

    .line 245
    const/16 v33, 0x0

    .local v33, "times":I
    :goto_1
    move/from16 v0, v33

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    .line 246
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    .line 247
    .local v37, "viewinfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    move-object/from16 v0, v37

    iget v0, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->fraction:F

    move/from16 v26, v0

    .line 248
    .local v26, "fraction":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    move/from16 v0, v38

    move/from16 v1, v27

    move/from16 v2, v33

    move/from16 v3, v26

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->getDrawingOrder(IIIF)I

    move-result v5

    .line 249
    .local v5, "part":I
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    .end local v37    # "viewinfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    check-cast v37, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    .line 250
    .restart local v37    # "viewinfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    move-object/from16 v0, v37

    iget-object v10, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->view:Landroid/view/View;

    .line 251
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v35

    .line 252
    .local v35, "viewLeft":I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v36

    .line 253
    .local v36, "viewTop":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    if-ne v4, v10, :cond_0

    .line 254
    const/16 v35, 0x0

    .line 255
    const/16 v36, 0x0

    .line 257
    :cond_0
    move-object/from16 v0, v37

    iget v0, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->fraction:F

    move/from16 v26, v0

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    move/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->getBreakOrder(IF)I

    move-result v5

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    move-object/from16 v0, v37

    iget-boolean v6, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->isOverScrollFirst:Z

    move-object/from16 v0, v37

    iget-boolean v7, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->isOverScrollLast:Z

    move-object/from16 v0, v37

    iget v8, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->fraction:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/vivo/vivotransition/VivoTransition;->mPageSpacing:I

    invoke-virtual/range {v4 .. v11}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->getTransformation(IZZFLandroid/view/View;Landroid/view/View;I)Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-boolean v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    const v6, 0x3a83126f    # 0.001f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_d

    .line 265
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v32

    .line 266
    .local v32, "result":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-boolean v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBoundsDirty:Z

    if-nez v4, :cond_2

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    invoke-static {v10, v4}, Lcom/vivo/vivotransition/AlgorithmUtil;->getTransformRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 269
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    add-int/lit8 v6, v35, 0x0

    add-int/lit8 v7, v36, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-boolean v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBackgroundDirty:Z

    if-eqz v4, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mErasePaint:Landroid/graphics/Paint;

    const v6, 0xffffff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v6, v6, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v4}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->isHorizental()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 276
    if-nez v5, :cond_e

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mFirstOffset:I

    sub-int v6, v35, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 289
    :cond_3
    :goto_2
    move-object/from16 v0, v37

    iget-boolean v4, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->isOverScrollFirst:Z

    if-nez v4, :cond_4

    move-object/from16 v0, v37

    iget-boolean v4, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->isOverScrollLast:Z

    if-eqz v4, :cond_5

    .line 290
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 298
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-boolean v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    if-eqz v4, :cond_6

    .line 299
    add-int/lit8 v4, v35, 0x0

    int-to-float v4, v4

    add-int/lit8 v6, v36, 0x0

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 301
    rsub-int/lit8 v4, v35, 0x0

    int-to-float v4, v4

    rsub-int/lit8 v6, v36, 0x0

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 305
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-boolean v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBackgroundDirty:Z

    if-eqz v4, :cond_9

    .line 306
    const/16 v25, 0x0

    .line 307
    .local v25, "dxy":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v20

    .line 308
    .local v20, "childCounts":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v4}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->isHorizental()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 310
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgStatic:Z

    if-eqz v4, :cond_11

    .line 311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, v22

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mOffset:F

    mul-float v25, v4, v6

    .line 315
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgSrcRect:Landroid/graphics/Rect;

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float v7, v7, v25

    move/from16 v0, v35

    int-to-float v8, v0

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    add-float v9, v9, v25

    move/from16 v0, v35

    int-to-float v11, v0

    sub-float/2addr v9, v11

    add-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 316
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgNoZoom:Z

    if-eqz v4, :cond_8

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v23, v4, v6

    .line 319
    .local v23, "dheight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgSrcRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 334
    .end local v23    # "dheight":I
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 338
    .end local v20    # "childCounts":I
    .end local v25    # "dxy":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-boolean v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBoundsDirty:Z

    if-eqz v4, :cond_a

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 343
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-boolean v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    const v6, 0x3f7fbe77    # 0.999f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mIsTransparent:Z

    if-nez v4, :cond_b

    .line 344
    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_18

    .line 345
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->shadowView:Lcom/vivo/vivotransition/VivoTransition$ShadowView;

    if-eqz v4, :cond_15

    .line 346
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->shadowView:Lcom/vivo/vivotransition/VivoTransition$ShadowView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v6, v6, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    invoke-virtual {v4, v6}, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->setAlpha(F)V

    .line 363
    :cond_b
    :goto_5
    move-object/from16 v0, p2

    iget v4, v0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1a

    .line 364
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->shadowView:Lcom/vivo/vivotransition/VivoTransition$ShadowView;

    if-eqz v4, :cond_19

    .line 366
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->shadowView:Lcom/vivo/vivotransition/VivoTransition$ShadowView;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->draw(Landroid/graphics/Canvas;)V

    .line 389
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-boolean v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    const v6, 0x3f7fbe77    # 0.999f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_c

    .line 390
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mIsTransparent:Z

    if-eqz v4, :cond_1b

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v7, v7, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 398
    :cond_c
    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 245
    .end local v32    # "result":I
    :cond_d
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_1

    .line 279
    .restart local v32    # "result":I
    :cond_e
    add-int/lit8 v4, v19, -0x1

    if-ne v5, v4, :cond_3

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    add-int v6, v35, v22

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vivo/vivotransition/VivoTransition;->mFirstOffset:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    .line 282
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 284
    if-nez v5, :cond_10

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mFirstOffset:I

    sub-int v6, v36, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    .line 286
    :cond_10
    add-int/lit8 v4, v19, -0x1

    if-ne v5, v4, :cond_3

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    add-int v6, v36, v21

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vivo/vivotransition/VivoTransition;->mFirstOffset:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 313
    .restart local v20    # "childCounts":I
    .restart local v25    # "dxy":F
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, v20

    if-le v0, v4, :cond_7

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, v22

    int-to-float v4, v4

    add-int/lit8 v6, v20, -0x1

    int-to-float v6, v6

    div-float/2addr v4, v6

    move-object/from16 v0, v37

    iget v6, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->index:I

    int-to-float v6, v6

    mul-float v25, v4, v6

    goto/16 :goto_3

    .line 322
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgStatic:Z

    if-eqz v4, :cond_14

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mOffset:F

    mul-float v25, v4, v6

    .line 327
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgSrcRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float v8, v8, v25

    move/from16 v0, v35

    int-to-float v9, v0

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    add-float v11, v11, v25

    move/from16 v0, v35

    int-to-float v12, v0

    sub-float/2addr v11, v12

    add-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 328
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgNoZoom:Z

    if-eqz v4, :cond_8

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgDstRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v24, v4, v6

    .line 331
    .local v24, "dwidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBgSrcRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0, v6}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_4

    .line 325
    .end local v24    # "dwidth":I
    :cond_14
    const/4 v4, 0x1

    move/from16 v0, v20

    if-le v0, v4, :cond_13

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, v21

    int-to-float v4, v4

    add-int/lit8 v6, v20, -0x1

    int-to-float v6, v6

    div-float/2addr v4, v6

    move-object/from16 v0, v37

    iget v6, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->index:I

    int-to-float v6, v6

    mul-float v25, v4, v6

    goto :goto_8

    .line 350
    .end local v20    # "childCounts":I
    .end local v25    # "dxy":F
    :cond_15
    move-object/from16 v0, v37

    iget v4, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->alpha:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v4, v4, v6

    if-nez v4, :cond_16

    .line 351
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v4

    move-object/from16 v0, v37

    iput v4, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->alpha:F

    .line 352
    :cond_16
    move-object/from16 v0, v37

    iget v4, v0, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->layerType:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_17

    .line 353
    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {v10, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 355
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    invoke-virtual {v10, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_5

    .line 358
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v4, v4, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v4

    const/high16 v4, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/vivotransition/VivoTransition;->mTransInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v6, v6, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v16, v0

    const/16 v17, 0x4

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto/16 :goto_5

    .line 368
    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/vivo/vivotransition/VivoTransition;->mForceDraw:Z

    .line 369
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    .line 374
    :cond_1a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/vivotransition/VivoTransition;->mDrawMethod:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    .line 375
    .local v31, "method":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    move-object/from16 v34, v0

    .line 376
    .local v34, "view1":Landroid/view/View;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 377
    .local v18, "aobj":[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object p1, v18, v4

    .line 378
    const/4 v4, 0x1

    aput-object v10, v18, v4

    .line 379
    const/4 v4, 0x2

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->drawingTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v18, v4

    .line 380
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_6

    .line 381
    .end local v18    # "aobj":[Ljava/lang/Object;
    .end local v31    # "method":Ljava/lang/reflect/Method;
    .end local v34    # "view1":Landroid/view/View;
    :catch_0
    move-exception v29

    .line 382
    .local v29, "illegalargumentexception":Ljava/lang/IllegalArgumentException;
    const-string v4, "VivoTransition"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 383
    .end local v29    # "illegalargumentexception":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v28

    .line 384
    .local v28, "illegalaccessexception":Ljava/lang/IllegalAccessException;
    const-string v4, "VivoTransition"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 385
    .end local v28    # "illegalaccessexception":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v30

    .line 386
    .local v30, "invocationtargetexception":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "VivoTransition"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 394
    .end local v30    # "invocationtargetexception":Ljava/lang/reflect/InvocationTargetException;
    :cond_1b
    const/4 v4, 0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_c

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 244
    .end local v5    # "part":I
    .end local v10    # "view":Landroid/view/View;
    .end local v26    # "fraction":F
    .end local v32    # "result":I
    .end local v35    # "viewLeft":I
    .end local v36    # "viewTop":I
    .end local v37    # "viewinfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    :cond_1c
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 403
    .end local v33    # "times":I
    :cond_1d
    const/4 v4, 0x1

    return v4
.end method

.method private getDrawChildMethod()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 407
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/Class;

    .line 408
    .local v0, "aclass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Canvas;

    aput-object v4, v0, v3

    .line 409
    const-class v3, Landroid/view/View;

    aput-object v3, v0, v5

    .line 410
    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    .line 411
    const/4 v1, 0x0

    .line 413
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v3, Landroid/view/ViewGroup;

    const-string v4, "drawChild"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 414
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v2

    .line 416
    .local v2, "nosuchmethodexception":Ljava/lang/NoSuchMethodException;
    const-string v3, "VivoTransition"

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initTransitions()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/DepthTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/DepthTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/WindMillTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/WindMillTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/PushTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/PushTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/BoxTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/BoxTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/FlipOverTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/GoRotateTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/PageTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/PageTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/CylinderTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/CylinderTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/BlindTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/BlindTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/FadeTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/FadeTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/StackTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/StackTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vivo/vivotransition/algorithm/BoxInTransition;

    invoke-direct {v2}, Lcom/vivo/vivotransition/algorithm/BoxInTransition;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_0
    return-void
.end method

.method private onAnimationEnd(Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;)V
    .locals 4
    .param p1, "animateinfo"    # Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;

    .prologue
    .line 439
    iget-object v2, p0, Lcom/vivo/vivotransition/VivoTransition;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 440
    iget-object v2, p1, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 441
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/vivotransition/VivoTransition$ViewInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    .line 443
    .local v1, "viewinfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    iget v2, v1, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->alpha:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, v1, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->view:Landroid/view/View;

    iget v3, v1, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->alpha:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 446
    .end local v1    # "viewinfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->clear()V

    .line 447
    return-void
.end method


# virtual methods
.method public animateDispatchDraw(Landroid/graphics/Canvas;FZII)Z
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollProgress"    # F
    .param p3, "isScrolling"    # Z
    .param p4, "leftPage"    # I
    .param p5, "rightPage"    # I

    .prologue
    .line 515
    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    instance-of v12, v12, Landroid/view/ViewGroup;

    if-eqz v12, :cond_7

    .line 516
    iget-object v10, p0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    check-cast v10, Landroid/view/ViewGroup;

    .line 517
    .local v10, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 518
    .local v4, "childCount":I
    const/4 v3, 0x0

    .line 520
    .local v3, "child":Landroid/view/View;
    new-instance v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;

    const/4 v12, 0x0

    invoke-direct {v2, v12}, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;-><init>(I)V

    .line 521
    .local v2, "animateInfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v12

    iput-wide v12, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->drawingTime:J

    .line 522
    move/from16 v0, p3

    iput-boolean v0, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->isScrolling:Z

    .line 524
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, p2, v12

    if-ltz v12, :cond_0

    .line 525
    const/4 v12, 0x0

    .line 573
    .end local v2    # "animateInfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v10    # "vg":Landroid/view/ViewGroup;
    :goto_0
    return v12

    .line 528
    .restart local v2    # "animateInfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childCount":I
    .restart local v10    # "vg":Landroid/view/ViewGroup;
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 529
    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v12}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->isHorizental()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 530
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v12

    iput v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mFirstOffset:I

    .line 536
    :goto_1
    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 537
    const v12, 0x47c35000    # 100000.0f

    mul-float v12, v12, p2

    float-to-int v12, v12

    int-to-float v12, v12

    const v13, 0x47c35000    # 100000.0f

    div-float p2, v12, v13

    .line 539
    const/4 v12, 0x0

    cmpl-float v12, p2, v12

    if-nez v12, :cond_3

    if-nez p3, :cond_3

    .line 540
    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 541
    .local v9, "sz":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v9, :cond_2

    .line 542
    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    iget-object v13, p0, Lcom/vivo/vivotransition/VivoTransition;->mAlphas:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    .line 543
    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    iget-object v13, p0, Lcom/vivo/vivotransition/VivoTransition;->mLayerType:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 541
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 533
    .end local v6    # "j":I
    .end local v9    # "sz":I
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mFirstOffset:I

    goto :goto_1

    .line 545
    .restart local v6    # "j":I
    .restart local v9    # "sz":I
    :cond_2
    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 546
    const/4 v12, 0x0

    goto :goto_0

    .line 548
    .end local v6    # "j":I
    .end local v9    # "sz":I
    :cond_3
    new-instance v7, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    invoke-direct {v7, v3}, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;-><init>(Landroid/view/View;)V

    .line 549
    .local v7, "leftViewInfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    move/from16 v0, p2

    iput v0, v7, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->fraction:F

    .line 550
    move/from16 v0, p4

    iput v0, v7, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->index:I

    .line 551
    iget-object v12, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    const/4 v12, 0x0

    cmpl-float v12, p2, v12

    if-lez v12, :cond_4

    add-int/lit8 v12, v4, -0x1

    move/from16 v0, p5

    if-gt v0, v12, :cond_4

    move/from16 v0, p5

    move/from16 v1, p4

    if-eq v0, v1, :cond_4

    .line 554
    new-instance v8, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;-><init>(Landroid/view/View;)V

    .line 555
    .local v8, "rightViewInfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, p2, v12

    iput v12, v8, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->fraction:F

    .line 556
    move/from16 v0, p5

    iput v0, v8, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->index:I

    .line 557
    iget-object v12, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v8    # "rightViewInfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    :cond_4
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/vivo/vivotransition/VivoTransition;->animView(Landroid/graphics/Canvas;Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;)Z

    .line 560
    iget-object v12, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 561
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/vivotransition/VivoTransition$ViewInfo;>;"
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 562
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    .line 563
    .local v11, "viewinfo1":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    iget v12, v11, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->alpha:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    iget-object v13, v11, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 564
    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    iget-object v13, v11, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mAlphas:Ljava/util/ArrayList;

    iget v13, v11, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->alpha:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v12, p0, Lcom/vivo/vivotransition/VivoTransition;->mLayerType:Ljava/util/ArrayList;

    iget v13, v11, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->layerType:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 569
    .end local v11    # "viewinfo1":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    :cond_6
    invoke-virtual {v2}, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->clear()V

    .line 570
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 573
    .end local v2    # "animateInfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/vivotransition/VivoTransition$ViewInfo;>;"
    .end local v7    # "leftViewInfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    .end local v10    # "vg":Landroid/view/ViewGroup;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public animateDispatchDraw(Landroid/graphics/Canvas;IZII)Z
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "transitonX"    # I
    .param p3, "isScrolling"    # Z
    .param p4, "leftPage"    # I
    .param p5, "rightPage"    # I

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    instance-of v13, v13, Landroid/view/ViewGroup;

    if-eqz v13, :cond_7

    .line 452
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    check-cast v11, Landroid/view/ViewGroup;

    .line 453
    .local v11, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 454
    .local v4, "childCount":I
    const/4 v3, 0x0

    .line 455
    .local v3, "child":Landroid/view/View;
    const/4 v9, 0x0

    .line 457
    .local v9, "scrollProgress":F
    new-instance v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;

    const/4 v13, 0x0

    invoke-direct {v2, v13}, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;-><init>(I)V

    .line 458
    .local v2, "animateInfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v14

    iput-wide v14, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->drawingTime:J

    .line 459
    move/from16 v0, p3

    iput-boolean v0, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->isScrolling:Z

    .line 461
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v13}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->isHorizental()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 463
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mFirstOffset:I

    .line 469
    :goto_0
    move/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 470
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mPageSpacing:I

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v11, v0, v3, v1, v13}, Lcom/vivo/vivotransition/TransitionUtil;->getScrollProgress(Landroid/view/ViewGroup;ILandroid/view/View;II)F

    move-result v9

    .line 471
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v9, v13

    if-ltz v13, :cond_1

    .line 472
    const/4 v13, 0x0

    .line 510
    .end local v2    # "animateInfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v9    # "scrollProgress":F
    .end local v11    # "vg":Landroid/view/ViewGroup;
    :goto_1
    return v13

    .line 466
    .restart local v2    # "animateInfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childCount":I
    .restart local v9    # "scrollProgress":F
    .restart local v11    # "vg":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mFirstOffset:I

    goto :goto_0

    .line 475
    :cond_1
    const v13, 0x47c35000    # 100000.0f

    mul-float/2addr v13, v9

    float-to-int v13, v13

    int-to-float v13, v13

    const v14, 0x47c35000    # 100000.0f

    div-float v9, v13, v14

    .line 476
    const/4 v13, 0x0

    cmpl-float v13, v9, v13

    if-nez v13, :cond_3

    if-nez p3, :cond_3

    .line 477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 478
    .local v10, "sz":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v10, :cond_2

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/vivotransition/VivoTransition;->mAlphas:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    .line 480
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/vivotransition/VivoTransition;->mLayerType:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 478
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 482
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 483
    const/4 v13, 0x0

    goto :goto_1

    .line 485
    .end local v6    # "j":I
    .end local v10    # "sz":I
    :cond_3
    new-instance v7, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    invoke-direct {v7, v3}, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;-><init>(Landroid/view/View;)V

    .line 486
    .local v7, "leftViewInfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    iput v9, v7, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->fraction:F

    .line 487
    move/from16 v0, p4

    iput v0, v7, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->index:I

    .line 488
    iget-object v13, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const/4 v13, 0x0

    cmpl-float v13, v9, v13

    if-lez v13, :cond_4

    add-int/lit8 v13, v4, -0x1

    move/from16 v0, p5

    if-gt v0, v13, :cond_4

    move/from16 v0, p5

    move/from16 v1, p4

    if-eq v0, v1, :cond_4

    .line 491
    new-instance v8, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;-><init>(Landroid/view/View;)V

    .line 492
    .local v8, "rightViewInfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v13, v9, v13

    iput v13, v8, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->fraction:F

    .line 493
    move/from16 v0, p5

    iput v0, v8, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->index:I

    .line 494
    iget-object v13, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v8    # "rightViewInfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/vivo/vivotransition/VivoTransition;->animView(Landroid/graphics/Canvas;Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;)Z

    .line 497
    iget-object v13, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 498
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/vivotransition/VivoTransition$ViewInfo;>;"
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 499
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    .line 500
    .local v12, "viewinfo1":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    iget v13, v12, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->alpha:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    iget-object v14, v12, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAlphaViews:Ljava/util/ArrayList;

    iget-object v14, v12, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAlphas:Ljava/util/ArrayList;

    iget v14, v12, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->alpha:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mLayerType:Ljava/util/ArrayList;

    iget v14, v12, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->layerType:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 506
    .end local v12    # "viewinfo1":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    :cond_6
    invoke-virtual {v2}, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->clear()V

    .line 507
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 510
    .end local v2    # "animateInfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/vivotransition/VivoTransition$ViewInfo;>;"
    .end local v7    # "leftViewInfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    .end local v9    # "scrollProgress":F
    .end local v11    # "vg":Landroid/view/ViewGroup;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method public animateDraw(Landroid/graphics/Canvas;)Z
    .locals 18
    .param p1, "paramCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 578
    const/4 v9, 0x0

    .line 579
    .local v9, "result":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 580
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mForceDraw:Z

    if-eqz v13, :cond_3

    .line 581
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mForceDraw:Z

    if-eqz v13, :cond_1

    .line 582
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mForceDraw:Z

    .line 584
    :cond_1
    const/4 v9, 0x0

    .line 637
    :cond_2
    :goto_0
    return v9

    .line 586
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v4

    .line 587
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 588
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;>;"
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 589
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;

    .line 590
    .local v2, "animateinfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    iget-wide v14, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->startTime:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-nez v13, :cond_5

    .line 591
    iput-wide v4, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->startTime:J

    .line 596
    :cond_5
    iget-wide v14, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->duration:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_7

    .line 597
    iget-wide v14, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->startTime:J

    sub-long v14, v4, v14

    long-to-float v13, v14

    iget-wide v14, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->duration:J

    long-to-float v14, v14

    div-float v11, v13, v14

    .line 607
    .local v11, "slideTime":F
    :goto_2
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const v14, 0x3c23d70a    # 0.01f

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 608
    iget-boolean v13, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->reverse:Z

    if-eqz v13, :cond_9

    .line 609
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v8, v13, v11

    .line 612
    .local v8, "normalizedTime":F
    :goto_3
    const v13, 0x47c35000    # 100000.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/vivotransition/VivoTransition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v14, v8}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v13, v13

    const v14, 0x47c35000    # 100000.0f

    div-float v8, v13, v14

    .line 613
    iget-object v13, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 614
    .local v10, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v10, :cond_a

    .line 616
    iget-object v13, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    .line 617
    .local v12, "viewinfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    iput v8, v12, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->fraction:F

    .line 618
    rem-int/lit8 v13, v3, 0x2

    if-eqz v13, :cond_6

    .line 619
    iget v13, v12, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->fraction:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    iput v13, v12, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->fraction:F

    .line 614
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 600
    .end local v3    # "i":I
    .end local v8    # "normalizedTime":F
    .end local v10    # "size":I
    .end local v11    # "slideTime":F
    .end local v12    # "viewinfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    :cond_7
    iget-wide v14, v2, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->startTime:J

    cmp-long v13, v4, v14

    if-gez v13, :cond_8

    .line 601
    const/4 v11, 0x0

    .restart local v11    # "slideTime":F
    goto :goto_2

    .line 604
    .end local v11    # "slideTime":F
    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    .restart local v11    # "slideTime":F
    goto :goto_2

    .line 611
    :cond_9
    move v8, v11

    .restart local v8    # "normalizedTime":F
    goto :goto_3

    .line 622
    .restart local v3    # "i":I
    .restart local v10    # "size":I
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/vivo/vivotransition/VivoTransition;->animView(Landroid/graphics/Canvas;Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;)Z

    .line 623
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v11, v13

    if-ltz v13, :cond_4

    .line 624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAnimInfoEnds:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 628
    .end local v2    # "animateinfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    .end local v3    # "i":I
    .end local v8    # "normalizedTime":F
    .end local v10    # "size":I
    .end local v11    # "slideTime":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAnimInfoEnds:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 629
    .local v7, "localIterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;>;"
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 630
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vivo/vivotransition/VivoTransition;->onAnimationEnd(Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;)V

    goto :goto_5

    .line 632
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mAnimInfoEnds:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/vivotransition/VivoTransition;->mTargetView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->invalidate()V

    .line 634
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public getAvailableTransitions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vivo/vivotransition/algorithm/BaseTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLayerOffset(FI)F
    .locals 8
    .param p1, "offset"    # F
    .param p2, "i"    # I

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "f1":F
    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    .line 651
    iget-object v3, p0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    iget-boolean v3, v3, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mUseBg:Z

    if-eqz v3, :cond_0

    .line 652
    const/high16 v3, 0x3f800000    # 1.0f

    add-int/lit8 v4, p2, -0x1

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 653
    .local v2, "step":F
    rem-float v1, p1, v2

    .line 654
    .local v1, "overx":F
    sub-float/2addr p1, v1

    .line 655
    div-float v3, v1, v2

    float-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 656
    add-float/2addr p1, v2

    .line 658
    .end local v1    # "overx":F
    .end local v2    # "step":F
    :cond_0
    move v0, p1

    .line 666
    :goto_0
    return v0

    .line 660
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    .line 661
    move v0, p1

    goto :goto_0

    .line 663
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransitionType()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransitionType:I

    return v0
.end method

.method public is3DAnimation()Z
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->getAnimationType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAlphaMode(Z)V
    .locals 1
    .param p1, "alphaMode"    # Z

    .prologue
    .line 681
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v0, p1}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->setAlphaMode(Z)V

    .line 682
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 686
    iget-object v1, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    iget-boolean v1, v1, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mUseBg:Z

    if-eqz v1, :cond_0

    .line 687
    iput-object p1, p0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    .line 688
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    .line 689
    .local v0, "basetransition":Lcom/vivo/vivotransition/algorithm/BaseTransition;
    iget-object v1, p0, Lcom/vivo/vivotransition/VivoTransition;->mBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 690
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->setAlphaMode(Z)V

    .line 694
    .end local v0    # "basetransition":Lcom/vivo/vivotransition/algorithm/BaseTransition;
    :cond_0
    :goto_0
    return-void

    .line 692
    .restart local v0    # "basetransition":Lcom/vivo/vivotransition/algorithm/BaseTransition;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->setAlphaMode(Z)V

    goto :goto_0
.end method

.method public setBackgroundNoZoom(Z)V
    .locals 0
    .param p1, "noZoom"    # Z

    .prologue
    .line 698
    iput-boolean p1, p0, Lcom/vivo/vivotransition/VivoTransition;->mBgNoZoom:Z

    .line 699
    return-void
.end method

.method public setBackgroundOffset(ZF)V
    .locals 0
    .param p1, "bgStatic"    # Z
    .param p2, "offset"    # F

    .prologue
    .line 703
    iput-boolean p1, p0, Lcom/vivo/vivotransition/VivoTransition;->mBgStatic:Z

    .line 704
    iput p2, p0, Lcom/vivo/vivotransition/VivoTransition;->mOffset:F

    .line 705
    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1
    .param p1, "distance"    # F

    .prologue
    .line 709
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v0, p1}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->setCameraDistance(F)V

    .line 711
    :cond_0
    return-void
.end method

.method public setLayerTransparent(Z)V
    .locals 0
    .param p1, "isTransparent"    # Z

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/vivo/vivotransition/VivoTransition;->mIsTransparent:Z

    .line 716
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 720
    iput p1, p0, Lcom/vivo/vivotransition/VivoTransition;->mPageSpacing:I

    .line 721
    return-void
.end method

.method public setTransitionType(I)V
    .locals 4
    .param p1, "transitionType"    # I

    .prologue
    .line 725
    iget-object v1, p0, Lcom/vivo/vivotransition/VivoTransition;->mTransitionsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vivotransition/algorithm/BaseTransition;

    .line 726
    .local v0, "basetransition":Lcom/vivo/vivotransition/algorithm/BaseTransition;
    if-eqz v0, :cond_0

    .line 727
    iput-object v0, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    .line 728
    iget-object v1, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v1}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->reset()V

    .line 729
    iput p1, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransitionType:I

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    const-string v1, "VivoTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTransitionType failed, no such type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/View;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 737
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    if-eqz v6, :cond_2

    .line 738
    invoke-static {p1}, Lcom/vivo/vivotransition/VivoTransition$ShadowView;->createShadow(Landroid/view/View;)Lcom/vivo/vivotransition/VivoTransition$ShadowView;

    move-result-object v3

    .line 739
    .local v3, "shadowview":Lcom/vivo/vivotransition/VivoTransition$ShadowView;
    if-eqz v3, :cond_2

    .line 740
    iget-object v6, p0, Lcom/vivo/vivotransition/VivoTransition;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 741
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 742
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;

    .line 743
    .local v1, "animateinfo1":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    iget-object v6, v1, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    iget-object v6, v6, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->view:Landroid/view/View;

    if-eq v6, p1, :cond_0

    .line 744
    invoke-direct {p0, v1}, Lcom/vivo/vivotransition/VivoTransition;->onAnimationEnd(Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;)V

    goto :goto_0

    .line 747
    .end local v1    # "animateinfo1":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    :cond_1
    new-instance v0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;

    invoke-direct {v0, v7}, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;-><init>(I)V

    .line 748
    .local v0, "animateinfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    iput-boolean v7, v0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->reverse:Z

    .line 749
    iget-object v6, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v6, v7}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->setLayoutType(I)V

    .line 750
    iget-object v6, p0, Lcom/vivo/vivotransition/VivoTransition;->mActiveTransition:Lcom/vivo/vivotransition/algorithm/BaseTransition;

    invoke-virtual {v6, v7}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->setOrientation(I)V

    .line 751
    new-instance v4, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    invoke-direct {v4, p1}, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;-><init>(Landroid/view/View;)V

    .line 752
    .local v4, "viewinfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    iget-object v6, v0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v5, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;

    invoke-direct {v5, p1}, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;-><init>(Landroid/view/View;)V

    .line 754
    .local v5, "viewinfo1":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    iput-object v3, v5, Lcom/vivo/vivotransition/VivoTransition$ViewInfo;->shadowView:Lcom/vivo/vivotransition/VivoTransition$ShadowView;

    .line 755
    iget-object v6, v0, Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;->viewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v6, p0, Lcom/vivo/vivotransition/VivoTransition;->mAnimInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    move v6, v7

    .line 761
    .end local v0    # "animateinfo":Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/vivotransition/VivoTransition$AnimateInfo;>;"
    .end local v3    # "shadowview":Lcom/vivo/vivotransition/VivoTransition$ShadowView;
    .end local v4    # "viewinfo":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    .end local v5    # "viewinfo1":Lcom/vivo/vivotransition/VivoTransition$ViewInfo;
    :goto_1
    return v6

    :cond_2
    move v6, v8

    goto :goto_1
.end method
