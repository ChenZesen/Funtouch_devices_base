.class public Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;
.super Ljava/lang/Object;
.source "BaseTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/vivotransition/algorithm/BaseTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformationInfo"
.end annotation


# instance fields
.field public mAlpha:F

.field public mAlphaDirty:Z

.field public mBackgroundDirty:Z

.field public final mBounds:Landroid/graphics/Rect;

.field public mBoundsDirty:Z

.field public mCamera:Landroid/graphics/Camera;

.field public final mMatrix:Landroid/graphics/Matrix;

.field public mMatrixDirty:Z

.field public mPivotX:F

.field public mPivotY:F

.field public mRotation:F

.field public mRotationX:F

.field public mRotationY:F

.field public mScaleX:F

.field public mScaleY:F

.field public mTranslationX:F

.field public mTranslationY:F

.field public mTranslationZ:F

.field public matrix3D:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    .line 88
    iput-boolean v2, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 89
    iput-boolean v2, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 90
    iput-boolean v2, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBoundsDirty:Z

    .line 91
    iput-boolean v2, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBackgroundDirty:Z

    .line 92
    iput v3, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    .line 93
    iput-object v4, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 94
    iput-object v4, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    .line 95
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    .line 96
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationX:F

    .line 97
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotation:F

    .line 98
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 99
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationY:F

    .line 100
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationZ:F

    .line 101
    iput v3, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleX:F

    .line 102
    iput v3, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleY:F

    .line 103
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 104
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->clearDirty()V

    return-void
.end method

.method private clearDirty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    .line 71
    iput-boolean v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 72
    iput-boolean v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBoundsDirty:Z

    .line 73
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->clearMatrix()V

    .line 74
    return-void
.end method

.method private clearMatrix()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotation:F

    .line 78
    iput v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationX:F

    .line 79
    iput v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    .line 80
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleX:F

    .line 81
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleY:F

    .line 82
    iput v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 83
    iput v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationY:F

    .line 84
    return-void
.end method
