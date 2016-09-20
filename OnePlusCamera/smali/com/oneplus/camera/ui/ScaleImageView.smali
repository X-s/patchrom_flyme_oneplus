.class public Lcom/oneplus/camera/ui/ScaleImageView;
.super Landroid/widget/ImageView;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;,
        Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;
    }
.end annotation


# static fields
.field private static final CLICK_THREADHOLD:I = 0x6

.field private static final DEFAULT_SCALE_TIMES:F = 3.0f

.field private static final DELETE_THREADHOLD:I = 0x14

.field private static final DOUBLE_CLICK_TIME:I = 0x15e

.field private static final DRAG:I = 0x1

.field private static final DURATION_SCALE_ANIMATION:I = 0xc8

.field private static final MAX_SCALE_TIMES:F = 5.0f

.field private static final MODE_SLIDER:I = 0x0

.field private static final MODE_VIEWER:I = 0x1

.field private static final NONE:I = 0x0

.field private static final ORIENTAL_HORIZONTAL:I = 0x0

.field private static final ORIENTAL_VERTICAL:I = 0x1

.field static final TAG:Ljava/lang/String;

.field private static final ZOOM:I = 0x2


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private m_Center:Landroid/graphics/PointF;

.field private m_Click:Z

.field private m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

.field private m_DiffX:I

.field private m_DiffY:I

.field private m_DrawableHeight:I

.field private m_DrawableWidth:I

.field private m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;

.field private m_InitialBitmap:Landroid/graphics/Bitmap;

.field private m_IsBitmapFullSize:Z

.field private m_IsDeleted:Z

.field private m_IsVideo:Z

.field private m_IsZoomIn:Z

.field private m_Matrix:Landroid/graphics/Matrix;

.field private final m_MatrixValues:[F

.field private m_MaxScale:F

.field private m_MaxX:I

.field private m_MaxY:I

.field private m_Mid:Landroid/graphics/PointF;

.field private m_MidX:I

.field private m_MidY:I

.field private m_MinMatrix:Landroid/graphics/Matrix;

.field private m_MinScale:F

.field private m_MinX:I

.field private m_MinY:I

.field private m_Mode:I

.field private m_OldDist:F

.field private m_Oriental:I

.field private m_PaddingX:I

.field private m_PaddingY:I

.field private m_Path:Ljava/lang/String;

.field private m_PreviousX:I

.field private m_PreviousY:I

.field private m_SavedMatrix:Landroid/graphics/Matrix;

.field private m_ScaleDrawable:Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

.field private m_Start:Landroid/graphics/PointF;

.field private m_TouchMode:I

.field private m_ViewHeight:I

.field private m_ViewWidth:I

.field private m_ViewerPreviousDist:F

.field private m_parent:Landroid/view/View;

.field private waitDouble:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MatrixValues:[F

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mid:Landroid/graphics/PointF;

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Center:Landroid/graphics/PointF;

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_OldDist:F

    .line 55
    iput v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_TouchMode:I

    .line 57
    iput v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    .line 60
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->waitDouble:Z

    .line 69
    iput-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 74
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    .line 79
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsBitmapFullSize:Z

    .line 80
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsZoomIn:Z

    .line 81
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewerPreviousDist:F

    .line 82
    iput-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    .line 83
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsVideo:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MatrixValues:[F

    .line 43
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;

    .line 47
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mid:Landroid/graphics/PointF;

    .line 48
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Center:Landroid/graphics/PointF;

    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_OldDist:F

    .line 55
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_TouchMode:I

    .line 57
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    .line 60
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->waitDouble:Z

    .line 69
    iput-object v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 74
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    .line 79
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsBitmapFullSize:Z

    .line 80
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsZoomIn:Z

    .line 81
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewerPreviousDist:F

    .line 82
    iput-object v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    .line 83
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsVideo:Z

    .line 99
    sget-object v1, Lcom/oneplus/camera/R$styleable;->ScaleImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    .line 101
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oriental: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/camera/ui/ScaleImageView;Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;)Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ScaleDrawable:Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/ui/ScaleImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateX()F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/ui/ScaleImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateY()F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/oneplus/camera/ui/ScaleImageView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/camera/ui/ScaleImageView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/PreviewGallery;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    return v0
.end method

.method static synthetic access$2002(Lcom/oneplus/camera/ui/ScaleImageView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/oneplus/camera/ui/ScaleImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->toggleMode()V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/camera/ui/ScaleImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->handleUp()V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/camera/ui/ScaleImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->animateToSliderInternal()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Center:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    return v0
.end method

.method static synthetic access$2502(Lcom/oneplus/camera/ui/ScaleImageView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    return p1
.end method

.method static synthetic access$2600(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinY:I

    return v0
.end method

.method static synthetic access$2800(Lcom/oneplus/camera/ui/ScaleImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsDeleted:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/oneplus/camera/ui/ScaleImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsDeleted:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/oneplus/camera/ui/ScaleImageView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxY:I

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/camera/ui/ScaleImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsBitmapFullSize:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    return v0
.end method

.method static synthetic access$3102(Lcom/oneplus/camera/ui/ScaleImageView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    return p1
.end method

.method static synthetic access$3200(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxX:I

    return v0
.end method

.method static synthetic access$3300(Lcom/oneplus/camera/ui/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinX:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/ScaleImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->waitDouble:Z

    return v0
.end method

.method static synthetic access$402(Lcom/oneplus/camera/ui/ScaleImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->waitDouble:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/camera/ui/ScaleImageView;FLandroid/graphics/PointF;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # Landroid/graphics/PointF;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/ScaleImageView;->zoomTo(FLandroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/camera/ui/ScaleImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F

    move-result v0

    return v0
.end method

.method private animateCenterToSlider()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/high16 v13, 0x40000000    # 2.0f

    .line 915
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F

    move-result v10

    .line 916
    .local v10, "scale":F
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableWidth:I

    int-to-float v0, v0

    mul-float v7, v10, v0

    .line 917
    .local v7, "currentWidth":F
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableHeight:I

    int-to-float v0, v0

    mul-float v6, v10, v0

    .line 918
    .local v6, "currentHeight":F
    sget-object v0, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentWidth: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " currentHeight: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    sget-object v0, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MTRANS_X: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v11, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v11, v14}, Lcom/oneplus/camera/ui/ScaleImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "  MTRANS_Y: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v11, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lcom/oneplus/camera/ui/ScaleImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    if-nez v0, :cond_0

    .line 923
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateX()F

    move-result v4

    .line 924
    .local v4, "startX":F
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v0, v0

    sub-float v0, v7, v0

    neg-float v0, v0

    div-float v8, v0, v13

    .line 925
    .local v8, "endX":F
    sub-float v0, v8, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 926
    .local v5, "distanceX":F
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateY()F

    move-result v2

    .line 927
    .local v2, "startY":F
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v0, v0

    sub-float v0, v6, v0

    neg-float v0, v0

    div-float v9, v0, v13

    .line 928
    .local v9, "endY":F
    sub-float v3, v9, v2

    .line 937
    .local v3, "distanceY":F
    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-nez v0, :cond_1

    .line 938
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->animateToSliderInternal()V

    .line 976
    :goto_1
    return-void

    .line 930
    .end local v2    # "startY":F
    .end local v3    # "distanceY":F
    .end local v4    # "startX":F
    .end local v5    # "distanceX":F
    .end local v8    # "endX":F
    .end local v9    # "endY":F
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateX()F

    move-result v4

    .line 931
    .restart local v4    # "startX":F
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v1, v1

    sub-float v1, v6, v1

    div-float/2addr v1, v13

    add-float v8, v0, v1

    .line 932
    .restart local v8    # "endX":F
    sub-float v0, v8, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 933
    .restart local v5    # "distanceX":F
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateY()F

    move-result v2

    .line 934
    .restart local v2    # "startY":F
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    div-float v9, v0, v13

    .line 935
    .restart local v9    # "endY":F
    sub-float v3, v9, v2

    .restart local v3    # "distanceY":F
    goto :goto_0

    .line 940
    :cond_1
    new-array v0, v14, [F

    const/4 v1, 0x0

    aput v4, v0, v1

    const/4 v1, 0x1

    aput v8, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 941
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v12, 0x1f4

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 942
    iget-object v11, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oneplus/camera/ui/ScaleImageView$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/ui/ScaleImageView$6;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;FFFF)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 951
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/camera/ui/ScaleImageView$7;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ScaleImageView$7;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 974
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1
.end method

.method private animateToSlider()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 979
    iget v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinScale:F

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F

    move-result v3

    div-float v1, v2, v3

    .line 980
    .local v1, "scale":F
    sub-float v0, v1, v4

    .line 981
    .local v0, "range":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 982
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 983
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oneplus/camera/ui/ScaleImageView$8;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/camera/ui/ScaleImageView$8;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1018
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oneplus/camera/ui/ScaleImageView$9;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ScaleImageView$9;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1041
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1042
    return-void
.end method

.method private animateToSliderInternal()V
    .locals 4

    .prologue
    .line 1045
    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinScale:F

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F

    move-result v2

    div-float v0, v1, v2

    .line 1046
    .local v0, "scale":F
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1047
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1048
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/camera/ui/ScaleImageView$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ScaleImageView$10;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1056
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/camera/ui/ScaleImageView$11;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ScaleImageView$11;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1078
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1079
    return-void
.end method

.method private animateToViewer()V
    .locals 4

    .prologue
    .line 646
    const/high16 v0, 0x40000000    # 2.0f

    .line 647
    .local v0, "range":F
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 648
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 649
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/camera/ui/ScaleImageView$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ScaleImageView$2;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 762
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/camera/ui/ScaleImageView$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ScaleImageView$3;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 786
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 787
    return-void

    .line 647
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method private animateZoomEnd()V
    .locals 18

    .prologue
    .line 791
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F

    move-result v12

    .line 792
    .local v12, "scale":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableWidth:I

    int-to-float v2, v2

    mul-float v9, v12, v2

    .line 793
    .local v9, "currentWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableHeight:I

    int-to-float v2, v2

    mul-float v8, v12, v2

    .line 794
    .local v8, "currentHeight":F
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateX()F

    move-result v13

    .local v13, "transX":F
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateY()F

    move-result v14

    .line 796
    .local v14, "transY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    if-nez v2, :cond_5

    .line 798
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_0

    .line 799
    move v4, v13

    .line 800
    .local v4, "startX":F
    const/4 v10, 0x0

    .line 808
    .local v10, "endX":F
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v2, v2

    cmpl-float v2, v8, v2

    if-lez v2, :cond_4

    .line 809
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v8

    cmpg-float v2, v14, v2

    if-gez v2, :cond_2

    .line 810
    move v6, v14

    .line 811
    .local v6, "startY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v2, v2

    sub-float v11, v2, v8

    .line 853
    .local v11, "endY":F
    :goto_1
    sub-float v5, v10, v4

    .line 854
    .local v5, "disX":F
    sub-float v7, v11, v6

    .line 855
    .local v7, "disY":F
    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    cmpl-float v2, v7, v2

    if-nez v2, :cond_c

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/ScaleImageView;->handleUp()V

    .line 893
    :goto_2
    return-void

    .line 801
    .end local v4    # "startX":F
    .end local v5    # "disX":F
    .end local v6    # "startY":F
    .end local v7    # "disY":F
    .end local v10    # "endX":F
    .end local v11    # "endY":F
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v9

    cmpg-float v2, v13, v2

    if-gez v2, :cond_1

    .line 802
    move v4, v13

    .line 803
    .restart local v4    # "startX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v2, v2

    sub-float v10, v2, v9

    .restart local v10    # "endX":F
    goto :goto_0

    .line 805
    .end local v4    # "startX":F
    .end local v10    # "endX":F
    :cond_1
    move v10, v13

    .restart local v10    # "endX":F
    move v4, v13

    .restart local v4    # "startX":F
    goto :goto_0

    .line 812
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-lez v2, :cond_3

    .line 813
    move v6, v14

    .line 814
    .restart local v6    # "startY":F
    const/4 v11, 0x0

    .restart local v11    # "endY":F
    goto :goto_1

    .line 816
    .end local v6    # "startY":F
    .end local v11    # "endY":F
    :cond_3
    move v11, v14

    .restart local v11    # "endY":F
    move v6, v14

    .restart local v6    # "startY":F
    goto :goto_1

    .line 819
    .end local v6    # "startY":F
    .end local v11    # "endY":F
    :cond_4
    move v6, v14

    .line 820
    .restart local v6    # "startY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v8

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    .restart local v11    # "endY":F
    goto :goto_1

    .line 824
    .end local v4    # "startX":F
    .end local v6    # "startY":F
    .end local v10    # "endX":F
    .end local v11    # "endY":F
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v2, v2

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_8

    .line 825
    cmpl-float v2, v13, v8

    if-lez v2, :cond_6

    .line 826
    move v4, v13

    .line 827
    .restart local v4    # "startX":F
    move v10, v8

    .line 838
    .restart local v10    # "endX":F
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v2, v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_9

    .line 839
    move v6, v14

    .line 840
    .restart local v6    # "startY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    .restart local v11    # "endY":F
    goto :goto_1

    .line 828
    .end local v4    # "startX":F
    .end local v6    # "startY":F
    .end local v10    # "endX":F
    .end local v11    # "endY":F
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v2, v2

    cmpg-float v2, v13, v2

    if-gez v2, :cond_7

    .line 829
    move v4, v13

    .line 830
    .restart local v4    # "startX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v10, v2

    .restart local v10    # "endX":F
    goto :goto_3

    .line 832
    .end local v4    # "startX":F
    .end local v10    # "endX":F
    :cond_7
    move v10, v13

    .restart local v10    # "endX":F
    move v4, v13

    .restart local v4    # "startX":F
    goto :goto_3

    .line 835
    .end local v4    # "startX":F
    .end local v10    # "endX":F
    :cond_8
    move v10, v13

    .restart local v10    # "endX":F
    move v4, v13

    .restart local v4    # "startX":F
    goto :goto_3

    .line 842
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v9

    cmpg-float v2, v14, v2

    if-gez v2, :cond_a

    .line 843
    move v6, v14

    .line 844
    .restart local v6    # "startY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v2, v2

    sub-float v11, v2, v9

    .restart local v11    # "endY":F
    goto/16 :goto_1

    .line 845
    .end local v6    # "startY":F
    .end local v11    # "endY":F
    :cond_a
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-lez v2, :cond_b

    .line 846
    move v6, v14

    .line 847
    .restart local v6    # "startY":F
    const/4 v11, 0x0

    .restart local v11    # "endY":F
    goto/16 :goto_1

    .line 849
    .end local v6    # "startY":F
    .end local v11    # "endY":F
    :cond_b
    move v11, v14

    .restart local v11    # "endY":F
    move v6, v14

    .restart local v6    # "startY":F
    goto/16 :goto_1

    .line 860
    .restart local v5    # "disX":F
    .restart local v7    # "disY":F
    :cond_c
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 862
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/camera/ui/ScaleImageView$4;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/ui/ScaleImageView$4;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;FFFF)V

    invoke-virtual {v15, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oneplus/camera/ui/ScaleImageView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/oneplus/camera/ui/ScaleImageView$5;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    .line 860
    :array_0
    .array-data 4
        0x0
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method private cutting()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 403
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F

    move-result v2

    .line 404
    .local v2, "scale":F
    sget-object v5, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getScale() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableWidth:I

    int-to-float v5, v5

    mul-float v1, v2, v5

    .line 406
    .local v1, "currentWidth":F
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableHeight:I

    int-to-float v5, v5

    mul-float v0, v2, v5

    .line 408
    .local v0, "currentHeight":F
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateX()F

    move-result v3

    .line 409
    .local v3, "transX":F
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateY()F

    move-result v4

    .line 410
    .local v4, "transY":F
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    if-nez v5, :cond_8

    .line 411
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_3

    .line 412
    cmpl-float v5, v3, v8

    if-ltz v5, :cond_2

    .line 413
    invoke-direct {p0, v8}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V

    .line 427
    :cond_0
    :goto_0
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_6

    .line 428
    cmpl-float v5, v4, v8

    if-ltz v5, :cond_5

    .line 429
    invoke-direct {p0, v8}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V

    .line 475
    :cond_1
    :goto_1
    return-void

    .line 414
    :cond_2
    add-float v5, v3, v1

    iget v6, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 415
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V

    goto :goto_0

    .line 419
    :cond_3
    cmpg-float v5, v3, v8

    if-gtz v5, :cond_4

    .line 420
    invoke-direct {p0, v8}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V

    goto :goto_0

    .line 421
    :cond_4
    add-float v5, v3, v1

    iget v6, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 422
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V

    goto :goto_0

    .line 430
    :cond_5
    add-float v5, v4, v0

    iget v6, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 431
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V

    goto :goto_1

    .line 435
    :cond_6
    cmpg-float v5, v4, v8

    if-gtz v5, :cond_7

    .line 436
    invoke-direct {p0, v8}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V

    goto :goto_1

    .line 437
    :cond_7
    add-float v5, v4, v0

    iget v6, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 438
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V

    goto :goto_1

    .line 443
    :cond_8
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_b

    .line 444
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_a

    .line 445
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V

    .line 459
    :cond_9
    :goto_2
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_e

    .line 460
    cmpl-float v5, v4, v8

    if-ltz v5, :cond_d

    .line 461
    invoke-direct {p0, v8}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V

    goto :goto_1

    .line 446
    :cond_a
    cmpg-float v5, v0, v3

    if-gez v5, :cond_9

    .line 447
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V

    goto :goto_2

    .line 451
    :cond_b
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_c

    .line 452
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V

    goto :goto_2

    .line 453
    :cond_c
    cmpg-float v5, v3, v0

    if-gez v5, :cond_9

    .line 454
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V

    goto :goto_2

    .line 462
    :cond_d
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateY()F

    move-result v5

    add-float/2addr v5, v1

    iget v6, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 463
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V

    goto/16 :goto_1

    .line 467
    :cond_e
    cmpg-float v5, v4, v8

    if-gtz v5, :cond_f

    .line 468
    invoke-direct {p0, v8}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V

    goto/16 :goto_1

    .line 469
    :cond_f
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateY()F

    move-result v5

    add-float/2addr v5, v1

    iget v6, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 470
    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V

    goto/16 :goto_1
.end method

.method private finishLandscape()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1177
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinX:I

    if-ne v0, v1, :cond_0

    .line 1178
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsDeleted:Z

    .line 1229
    :goto_0
    iput v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousX:I

    .line 1230
    return-void

    .line 1179
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxX:I

    if-ne v0, v1, :cond_1

    .line 1180
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsDeleted:Z

    goto :goto_0

    .line 1182
    :cond_1
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MidX:I

    if-le v0, v1, :cond_3

    .line 1183
    new-array v0, v3, [I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    aput v1, v0, v4

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxX:I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1187
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1188
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/camera/ui/ScaleImageView$14;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ScaleImageView$14;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1205
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/camera/ui/ScaleImageView$15;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ScaleImageView$15;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1227
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1184
    :cond_3
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MidX:I

    if-gt v0, v1, :cond_2

    .line 1185
    new-array v0, v3, [I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    aput v1, v0, v4

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinX:I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1
.end method

.method private finishPortrait()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1119
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinY:I

    if-ne v0, v1, :cond_0

    .line 1120
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsDeleted:Z

    .line 1173
    :goto_0
    iput v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousY:I

    .line 1174
    return-void

    .line 1121
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxY:I

    if-ne v0, v1, :cond_1

    .line 1122
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsDeleted:Z

    goto :goto_0

    .line 1124
    :cond_1
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MidY:I

    if-le v0, v1, :cond_3

    .line 1125
    new-array v0, v3, [I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    aput v1, v0, v4

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxY:I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1129
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1130
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/camera/ui/ScaleImageView$12;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ScaleImageView$12;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1147
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/camera/ui/ScaleImageView$13;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ScaleImageView$13;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1171
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1126
    :cond_3
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MidY:I

    if-gt v0, v1, :cond_2

    .line 1127
    new-array v0, v3, [I

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    aput v1, v0, v4

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinY:I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1
.end method

.method private getLayoutRotation()Lcom/oneplus/base/Rotation;
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Rotation;

    return-object v0
.end method

.method private getScale()F
    .locals 2

    .prologue
    .line 1087
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 1090
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    goto :goto_0
.end method

.method private getTranslateX()F
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method private getTranslateY()F
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1083
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private handleClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 596
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->waitDouble:Z

    if-ne v0, v2, :cond_1

    .line 597
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->waitDouble:Z

    .line 598
    new-instance v0, Lcom/oneplus/camera/ui/ScaleImageView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ScaleImageView$1;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    if-nez v0, :cond_2

    .line 626
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsVideo:Z

    if-nez v0, :cond_0

    .line 629
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->updateImageToFullSize()V

    .line 630
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->animateToViewer()V

    .line 639
    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->waitDouble:Z

    goto :goto_0

    .line 633
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsVideo:Z

    if-nez v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->updateImageToInitialSize()V

    .line 637
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->animateToSlider()V

    goto :goto_1
.end method

.method private handleUp()V
    .locals 2

    .prologue
    .line 896
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_TouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 897
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->toggleMode()V

    .line 902
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_TouchMode:I

    .line 903
    sget-object v0, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v1, "mode=NONE"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    if-eqz v0, :cond_2

    .line 905
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->handleClick()V

    .line 912
    :cond_1
    :goto_0
    return-void

    .line 908
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsZoomIn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 909
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->updateImageToInitialSize()V

    goto :goto_0
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 308
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 309
    .local v0, "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 310
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 311
    return-void
.end method

.method private recomputeImgMatrix()V
    .locals 6

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1269
    sget-object v4, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v5, "recomputeImgMatrix getDrawable() == null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 1273
    .local v3, "viewWidth":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getPaddingBottom()I

    move-result v5

    sub-int v2, v4, v5

    .line 1274
    .local v2, "viewHeight":I
    if-eqz v3, :cond_2

    .line 1275
    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    .line 1276
    iget-object v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Center:Landroid/graphics/PointF;

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 1278
    :cond_2
    if-eqz v2, :cond_3

    .line 1279
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I

    .line 1280
    iget-object v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Center:Landroid/graphics/PointF;

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 1283
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1284
    .local v1, "drawableWidth":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1285
    .local v0, "drawableHeight":I
    if-eqz v1, :cond_4

    .line 1286
    iput v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableWidth:I

    .line 1288
    :cond_4
    if-eqz v0, :cond_5

    .line 1289
    iput v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableHeight:I

    .line 1291
    :cond_5
    mul-int/lit8 v4, v2, -0x1

    iput v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinY:I

    .line 1292
    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinY:I

    div-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MidY:I

    .line 1293
    mul-int/lit8 v4, v3, -0x1

    iput v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinX:I

    .line 1294
    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinX:I

    div-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MidX:I

    .line 1296
    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    if-nez v4, :cond_0

    .line 1297
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->setMatrixCenterFit(IIII)V

    goto :goto_0
.end method

.method private scaling(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->spacing(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_OldDist:F

    div-float v1, v2, v3

    .line 393
    .local v1, "zoomScale":F
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F

    move-result v0

    .line 394
    .local v0, "scale":F
    mul-float v2, v0, v1

    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 395
    iget v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxScale:F

    div-float v1, v2, v0

    .line 399
    :cond_0
    :goto_0
    return v1

    .line 396
    :cond_1
    mul-float v2, v0, v1

    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 397
    iget v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinScale:F

    div-float v1, v2, v0

    goto :goto_0
.end method

.method private setMatrixCenterFit(IIII)V
    .locals 7
    .param p1, "drawableWidth"    # I
    .param p2, "drawableHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    const/4 v5, 0x0

    .line 1233
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 1234
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1235
    .local v0, "drawableRect":Landroid/graphics/RectF;
    const/4 v2, 0x0

    .line 1236
    .local v2, "viewRect":Landroid/graphics/RectF;
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    if-nez v3, :cond_0

    .line 1237
    new-instance v2, Landroid/graphics/RectF;

    .end local v2    # "viewRect":Landroid/graphics/RectF;
    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1238
    .restart local v2    # "viewRect":Landroid/graphics/RectF;
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1245
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1246
    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1247
    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1249
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinScale:F

    .line 1250
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinScale:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxScale:F

    .line 1251
    return-void

    .line 1240
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    .end local v2    # "viewRect":Landroid/graphics/RectF;
    neg-int v3, p4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    neg-int v4, p3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p4, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, p3, 0x2

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1241
    .restart local v2    # "viewRect":Landroid/graphics/RectF;
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1242
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1243
    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method private setTranslateX(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1104
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MatrixValues:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1105
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1106
    return-void
.end method

.method private setTranslateY(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1110
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MatrixValues:[F

    const/4 v1, 0x5

    aput p1, v0, v1

    .line 1111
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1112
    return-void
.end method

.method private sliderTouchHandler(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x14

    const/4 v7, 0x6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 479
    const/4 v0, 0x1

    .line 480
    .local v0, "factor":I
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getLayoutRotation()Lcom/oneplus/base/Rotation;

    move-result-object v3

    sget-object v4, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getLayoutRotation()Lcom/oneplus/base/Rotation;

    move-result-object v3

    sget-object v4, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    if-ne v3, v4, :cond_1

    .line 481
    :cond_0
    const/4 v0, -0x1

    .line 484
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 590
    :cond_2
    :goto_0
    return v1

    .line 486
    :pswitch_1
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousX:I

    .line 487
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousY:I

    .line 488
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    .line 490
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 491
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 495
    :pswitch_2
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    if-nez v3, :cond_3

    .line 497
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->spacing(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_OldDist:F

    .line 500
    sget-object v2, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldDist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_OldDist:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_OldDist:F

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 503
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 504
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mid:Landroid/graphics/PointF;

    invoke-direct {p0, v2, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 505
    const/4 v2, 0x2

    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_TouchMode:I

    .line 506
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->toggleMode()V

    .line 507
    sget-object v2, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v3, "mode=ZOOM"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->updateImageToFullSize()V

    goto :goto_0

    .line 512
    :cond_3
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    if-nez v3, :cond_4

    .line 513
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->finishPortrait()V

    .line 517
    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    goto :goto_0

    .line 515
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->finishLandscape()V

    goto :goto_1

    .line 522
    :pswitch_3
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousY:I

    if-nez v3, :cond_5

    .line 523
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DiffY:I

    .line 524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousY:I

    goto/16 :goto_0

    .line 527
    :cond_5
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousX:I

    if-nez v3, :cond_6

    .line 528
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DiffX:I

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousX:I

    goto/16 :goto_0

    .line 532
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousY:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DiffY:I

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DiffX:I

    .line 534
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DiffY:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    .line 535
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DiffX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    .line 536
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxY:I

    if-le v3, v4, :cond_a

    .line 537
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxY:I

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    .line 541
    :cond_7
    :goto_2
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxX:I

    if-le v3, v4, :cond_b

    .line 542
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxX:I

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    .line 547
    :cond_8
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v3, v0

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousY:I

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v3, v0

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousX:I

    .line 550
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    if-nez v3, :cond_c

    .line 551
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v5, :cond_9

    .line 552
    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->scrollTo(II)V

    .line 553
    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinY:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 555
    :cond_9
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxY:I

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v7, :cond_2

    .line 556
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    goto/16 :goto_0

    .line 538
    :cond_a
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinY:I

    if-ge v3, v4, :cond_7

    .line 539
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinY:I

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    goto :goto_2

    .line 543
    :cond_b
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinX:I

    if-ge v3, v4, :cond_8

    .line 544
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinX:I

    iput v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    goto :goto_3

    .line 559
    :cond_c
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v5, :cond_d

    .line 560
    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->scrollTo(II)V

    .line 561
    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MinX:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 563
    :cond_d
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_MaxX:I

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v7, :cond_2

    .line 564
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    goto/16 :goto_0

    .line 570
    :pswitch_4
    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    if-nez v3, :cond_e

    .line 571
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->finishPortrait()V

    .line 575
    :goto_4
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    goto/16 :goto_0

    .line 573
    :cond_e
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->finishLandscape()V

    goto :goto_4

    .line 579
    :pswitch_5
    iget v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I

    if-nez v2, :cond_f

    .line 580
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->finishPortrait()V

    .line 584
    :goto_5
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    if-eqz v2, :cond_2

    .line 585
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->handleClick()V

    goto/16 :goto_0

    .line 582
    :cond_f
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->finishLandscape()V

    goto :goto_5

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 302
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 303
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 304
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private toggleMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1254
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    .line 1255
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    if-nez v0, :cond_0

    .line 1256
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    .line 1257
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1264
    :goto_0
    return-void

    .line 1259
    :cond_0
    iput v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    .line 1260
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1261
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->updateImageToInitialSize()V

    .line 1262
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->requestLayout()V

    goto :goto_0
.end method

.method private updateImageToFullSize()V
    .locals 4

    .prologue
    .line 1304
    sget-object v0, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v1, "updateImageToFullSize()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsBitmapFullSize:Z

    if-nez v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    if-nez v0, :cond_0

    .line 1307
    new-instance v0, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    invoke-direct {v0, p0, p0}, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    .line 1308
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Path:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1311
    :cond_0
    return-void
.end method

.method private updateImageToInitialSize()V
    .locals 3

    .prologue
    .line 1316
    sget-object v0, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImageToInitialSize() m_IsBitmapFullSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsBitmapFullSize:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsBitmapFullSize:Z

    if-nez v0, :cond_0

    .line 1318
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->cancelDeocdingFullSizeImage()V

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ScaleDrawable:Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ScaleDrawable:Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_InitialBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1323
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsBitmapFullSize:Z

    .line 1324
    return-void
.end method

.method private viewerTouchHandler(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x1

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 380
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 382
    return v5

    .line 319
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 320
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 321
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v2, "mode=DRAG"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iput v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_TouchMode:I

    .line 323
    iput-boolean v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    goto :goto_0

    .line 327
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->animateZoomEnd()V

    .line 328
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_UP"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :pswitch_3
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_POINTER_UP"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :pswitch_4
    iput-boolean v6, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Click:Z

    .line 339
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_OldDist:F

    .line 341
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldDist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_OldDist:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_OldDist:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 345
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mid:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 346
    iput v7, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_TouchMode:I

    .line 347
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v2, "mode=ZOOM"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :pswitch_5
    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_TouchMode:I

    if-ne v1, v5, :cond_1

    .line 353
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 354
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I

    neg-int v2, v2

    if-lt v1, v2, :cond_0

    .line 355
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postTranslate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 357
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->cutting()V

    goto/16 :goto_0

    .line 359
    :cond_1
    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_TouchMode:I

    if-ne v1, v7, :cond_0

    .line 360
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsVideo:Z

    if-nez v1, :cond_0

    .line 361
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    .line 362
    .local v0, "newDist":F
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newDist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    cmpl-float v1, v0, v4

    if-lez v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 365
    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewerPreviousDist:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 366
    iput v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewerPreviousDist:F

    .line 367
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->scaling(Landroid/view/MotionEvent;)F

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mid:Landroid/graphics/PointF;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->zoomTo(FLandroid/graphics/PointF;)V

    .line 369
    iget v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewerPreviousDist:F

    sub-float v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 370
    iput-boolean v5, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsZoomIn:Z

    .line 373
    :goto_1
    iput v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewerPreviousDist:F

    goto/16 :goto_0

    .line 372
    :cond_3
    iput-boolean v6, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsZoomIn:Z

    goto :goto_1

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private zoomTo(FLandroid/graphics/PointF;)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "mid"    # Landroid/graphics/PointF;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 388
    return-void
.end method


# virtual methods
.method public cancelDeocdingFullSizeImage()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v1, "cancelDeocdingFullSizeImage() - Cancel decode task"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;->cancel(Z)Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DecodeTask:Lcom/oneplus/camera/ui/ScaleImageView$BitmapWorkerTask;

    .line 217
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;

    .line 223
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 224
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->recomputeImgMatrix()V

    .line 225
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 235
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 236
    sget-object v1, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v2, "mAnimator != null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/ui/PreviewGallery;->hideUndoDeletionBar(Z)V

    .line 243
    :cond_1
    iget v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    packed-switch v0, :pswitch_data_0

    .line 253
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 245
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->sliderTouchHandler(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 250
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView;->viewerTouchHandler(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Mode:I

    .line 261
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousX:I

    .line 262
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingX:I

    .line 263
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DiffX:I

    .line 264
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PreviousY:I

    .line 265
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_PaddingY:I

    .line 266
    iput v2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_DiffY:I

    .line 267
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 269
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->updateImageToInitialSize()V

    .line 276
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->requestLayout()V

    .line 277
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->recomputeImgMatrix()V

    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setPhoto(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/oneplus/camera/ui/PreviewGallery;Z)Z
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "gallery"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p4, "isVideo"    # Z

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->reset()V

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    if-eqz p3, :cond_0

    .line 288
    iput-object p2, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Path:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;

    .line 290
    invoke-virtual {p3}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 291
    iput-boolean p4, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_IsVideo:Z

    .line 293
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_InitialBitmap:Landroid/graphics/Bitmap;

    .line 294
    new-instance v0, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;-><init>(Lcom/oneplus/camera/ui/ScaleImageView;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ScaleDrawable:Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

    .line 295
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView;->m_ScaleDrawable:Lcom/oneplus/camera/ui/ScaleImageView$ScaleImageViewDrawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ScaleImageView;->requestLayout()V

    .line 297
    const/4 v0, 0x1

    goto :goto_0
.end method
