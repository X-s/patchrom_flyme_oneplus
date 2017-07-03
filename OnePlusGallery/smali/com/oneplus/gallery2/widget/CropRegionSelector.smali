.class public Lcom/oneplus/gallery2/widget/CropRegionSelector;
.super Landroid/view/View;
.source "CropRegionSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/widget/CropRegionSelector$OnCropRectChangeListener;
    }
.end annotation


# static fields
.field public static BOUND_STROKE_WIDTH:I = 0x0

.field public static final GRID_STROKE_WIDTH:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CropRegionSelector"

.field private static final TOUCH_DETECTION_AREA_RADIUS:I = 0x5a


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_CropGridPaint:Landroid/graphics/Paint;

.field private m_CropIndicatorLength:I

.field private m_CropIndicatorPaint:Landroid/graphics/Paint;

.field private m_CropModeChangeListner:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/gallery/crop/CropModeType;",
            ">;"
        }
    .end annotation
.end field

.field private m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

.field private m_CropRegionBound:Landroid/graphics/Rect;

.field private m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

.field private m_EditingPointEnd:Landroid/graphics/PointF;

.field private m_EditingPointStart:Landroid/graphics/PointF;

.field private m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

.field private m_MovingStartCropRegion:Landroid/graphics/Rect;

.field private m_MovingStartPoint:Landroid/graphics/Point;

.field private m_OnCropRectChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/gallery2/widget/CropRegionSelector$OnCropRectChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

.field private m_RegularPointEnd:Landroid/graphics/PointF;

.field private m_RegularPointStart:Landroid/graphics/PointF;

.field private m_RegularRectF:Landroid/graphics/RectF;

.field private m_ShadowPaint:Landroid/graphics/Paint;

.field private m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

.field private m_UpdateRegionByTouching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    sget-object v0, Lcom/oneplus/gallery/crop/MovingPointType;->NONE:Lcom/oneplus/gallery/crop/MovingPointType;

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_EditingPointEnd:Landroid/graphics/PointF;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_EditingPointStart:Landroid/graphics/PointF;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointEnd:Landroid/graphics/PointF;

    .line 62
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointStart:Landroid/graphics/PointF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularRectF:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Lcom/oneplus/gallery2/widget/CropRegionSelector$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector$1;-><init>(Lcom/oneplus/gallery2/widget/CropRegionSelector;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeChangeListner:Lcom/oneplus/base/PropertyChangedCallback;

    .line 90
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_Context:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->initialize()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v0, Lcom/oneplus/gallery/crop/MovingPointType;->NONE:Lcom/oneplus/gallery/crop/MovingPointType;

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_EditingPointEnd:Landroid/graphics/PointF;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_EditingPointStart:Landroid/graphics/PointF;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointEnd:Landroid/graphics/PointF;

    .line 62
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointStart:Landroid/graphics/PointF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularRectF:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Lcom/oneplus/gallery2/widget/CropRegionSelector$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector$1;-><init>(Lcom/oneplus/gallery2/widget/CropRegionSelector;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeChangeListner:Lcom/oneplus/base/PropertyChangedCallback;

    .line 96
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_Context:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->initialize()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    sget-object v0, Lcom/oneplus/gallery/crop/MovingPointType;->NONE:Lcom/oneplus/gallery/crop/MovingPointType;

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_EditingPointEnd:Landroid/graphics/PointF;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_EditingPointStart:Landroid/graphics/PointF;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointEnd:Landroid/graphics/PointF;

    .line 62
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointStart:Landroid/graphics/PointF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularRectF:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Lcom/oneplus/gallery2/widget/CropRegionSelector$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector$1;-><init>(Lcom/oneplus/gallery2/widget/CropRegionSelector;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeChangeListner:Lcom/oneplus/base/PropertyChangedCallback;

    .line 102
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_Context:Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->initialize()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/widget/CropRegionSelector;Lcom/oneplus/gallery/crop/CropModeType;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/widget/CropRegionSelector;
    .param p1, "x1"    # Lcom/oneplus/gallery/crop/CropModeType;
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->onCropModeTypeChanged(Lcom/oneplus/gallery/crop/CropModeType;Z)V

    return-void
.end method

.method private getDistance(FFFF)D
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 117
    sub-float v0, p1, p3

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p2, p4

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getMoveRect(Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "movingPoint"    # Landroid/graphics/Point;
    .param p2, "currentRect"    # Landroid/graphics/Rect;
    .param p3, "imageBound"    # Landroid/graphics/Rect;

    .prologue
    .line 124
    iget v5, p1, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_MovingStartPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v1, v5, v6

    .line 125
    .local v1, "shiftX":I
    iget v5, p1, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_MovingStartPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v2, v5, v6

    .line 127
    .local v2, "shiftY":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 129
    .local v0, "newRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_MovingStartCropRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v3, v5, v1

    .line 130
    .local v3, "targetLeft":I
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_MovingStartCropRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v4, v5, v2

    .line 133
    .local v4, "targetTop":I
    iget v5, p3, Landroid/graphics/Rect;->left:I

    if-ge v3, v5, :cond_2

    .line 134
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 139
    :cond_0
    :goto_0
    iget v5, p3, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_3

    .line 140
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 144
    :cond_1
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 146
    return-object v0

    .line 135
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v3

    iget v6, p3, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_0

    .line 136
    iget v5, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_1

    .line 142
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_1
.end method

.method private getTouchedMovingPointType(FF)Lcom/oneplus/gallery/crop/MovingPointType;
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 153
    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    if-nez v10, :cond_0

    .line 154
    sget-object v10, Lcom/oneplus/gallery/crop/MovingPointType;->NONE:Lcom/oneplus/gallery/crop/MovingPointType;

    .line 186
    :goto_0
    return-object v10

    .line 156
    :cond_0
    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-direct {p0, p1, p2, v10, v11}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->getDistance(FFFF)D

    move-result-wide v2

    .line 157
    .local v2, "distanceToLeftTop":D
    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-direct {p0, p1, p2, v10, v11}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->getDistance(FFFF)D

    move-result-wide v6

    .line 158
    .local v6, "distanceToRightTop":D
    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    invoke-direct {p0, p1, p2, v10, v11}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->getDistance(FFFF)D

    move-result-wide v0

    .line 159
    .local v0, "distanceToLeftBottom":D
    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    invoke-direct {p0, p1, p2, v10, v11}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->getDistance(FFFF)D

    move-result-wide v4

    .line 162
    .local v4, "distanceToRightBottom":D
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 163
    .local v8, "minDistance":D
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 164
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 166
    const-wide v10, 0x4056800000000000L    # 90.0

    cmpl-double v10, v8, v10

    if-lez v10, :cond_2

    .line 169
    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    cmpl-float v10, p1, v10

    if-lez v10, :cond_1

    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpg-float v10, p1, v10

    if-gez v10, :cond_1

    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    cmpl-float v10, p2, v10

    if-lez v10, :cond_1

    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpg-float v10, p2, v10

    if-gez v10, :cond_1

    .line 170
    sget-object v10, Lcom/oneplus/gallery/crop/MovingPointType;->INNER:Lcom/oneplus/gallery/crop/MovingPointType;

    goto :goto_0

    .line 172
    :cond_1
    sget-object v10, Lcom/oneplus/gallery/crop/MovingPointType;->NONE:Lcom/oneplus/gallery/crop/MovingPointType;

    goto :goto_0

    .line 176
    :cond_2
    cmpl-double v10, v8, v2

    if-nez v10, :cond_3

    .line 177
    sget-object v10, Lcom/oneplus/gallery/crop/MovingPointType;->TOP_LEFT:Lcom/oneplus/gallery/crop/MovingPointType;

    goto :goto_0

    .line 178
    :cond_3
    cmpl-double v10, v8, v6

    if-nez v10, :cond_4

    .line 179
    sget-object v10, Lcom/oneplus/gallery/crop/MovingPointType;->TOP_RIGHT:Lcom/oneplus/gallery/crop/MovingPointType;

    goto/16 :goto_0

    .line 180
    :cond_4
    cmpl-double v10, v8, v0

    if-nez v10, :cond_5

    .line 181
    sget-object v10, Lcom/oneplus/gallery/crop/MovingPointType;->BOTTOM_LEFT:Lcom/oneplus/gallery/crop/MovingPointType;

    goto/16 :goto_0

    .line 182
    :cond_5
    cmpl-double v10, v8, v4

    if-nez v10, :cond_6

    .line 183
    sget-object v10, Lcom/oneplus/gallery/crop/MovingPointType;->BOTTOM_RIGHT:Lcom/oneplus/gallery/crop/MovingPointType;

    goto/16 :goto_0

    .line 186
    :cond_6
    sget-object v10, Lcom/oneplus/gallery/crop/MovingPointType;->NONE:Lcom/oneplus/gallery/crop/MovingPointType;

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->BOUND_STROKE_WIDTH:I

    .line 111
    return-void
.end method

.method private notifyCropRectChanged()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 193
    iget-object v7, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    if-nez v7, :cond_1

    .line 195
    const-string v7, "CropRegionSelector"

    const-string v8, "notifyCropRectChanged() - m_CropRegionBound is null"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v7, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 201
    const-string v7, "CropRegionSelector"

    const-string v8, "notifyCropRectChanged() - No source image bounds"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_OnCropRectChangeListeners:Ljava/util/ArrayList;

    if-nez v7, :cond_3

    .line 207
    const-string v7, "CropRegionSelector"

    const-string v8, "notifyCropRectChanged() - m_OnCropRectChangeListeners is null"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_3
    new-instance v4, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 220
    .local v4, "normalizedRect":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/PointF;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v3, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 221
    .local v3, "modifiedPointStart":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    iget v7, v4, Landroid/graphics/RectF;->right:F

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 223
    .local v2, "modifiedPointEnd":Landroid/graphics/PointF;
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 224
    .local v6, "originalPointStart":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 225
    .local v5, "originalPointEnd":Landroid/graphics/PointF;
    iget-object v7, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    invoke-virtual {v7, v3, v6, v12}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapToOriginal(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 226
    iget-object v7, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    invoke-virtual {v7, v2, v5, v12}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapToOriginal(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 228
    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v8, v6, Landroid/graphics/PointF;->y:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget v10, v6, Landroid/graphics/PointF;->y:F

    iget v11, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 234
    iget-object v7, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_OnCropRectChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/widget/CropRegionSelector$OnCropRectChangeListener;

    .line 235
    .local v1, "listner":Lcom/oneplus/gallery2/widget/CropRegionSelector$OnCropRectChangeListener;
    invoke-interface {v1, v4}, Lcom/oneplus/gallery2/widget/CropRegionSelector$OnCropRectChangeListener;->onCropRectChanged(Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method private onCropModeTypeChanged(Lcom/oneplus/gallery/crop/CropModeType;Z)V
    .locals 13
    .param p1, "type"    # Lcom/oneplus/gallery/crop/CropModeType;
    .param p2, "notifyEditor"    # Z

    .prologue
    .line 242
    const-string v8, "CropRegionSelector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCropModeTypeChanged() - type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    if-eqz v8, :cond_3

    .line 246
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    invoke-virtual {v8, p1}, Lcom/oneplus/gallery/crop/CropModeManager;->getCropMode(Lcom/oneplus/gallery/crop/CropModeType;)Lcom/oneplus/gallery/crop/CropMode;

    move-result-object v2

    .line 249
    .local v2, "mode":Lcom/oneplus/gallery/crop/CropMode;
    instance-of v8, v2, Lcom/oneplus/gallery/crop/CropModeRatioBase;

    if-eqz v8, :cond_3

    move-object v3, v2

    .line 251
    check-cast v3, Lcom/oneplus/gallery/crop/CropModeRatioBase;

    .line 253
    .local v3, "ratioMode":Lcom/oneplus/gallery/crop/CropModeRatioBase;
    invoke-virtual {v3}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getCropRatioX()F

    move-result v8

    invoke-virtual {v3}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getCropRatioY()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    .line 256
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getRatioYoverX()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v5, v8

    .line 258
    .local v5, "targetHeight":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gt v5, v8, :cond_4

    .line 260
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 261
    .local v7, "top":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 262
    .local v1, "left":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int v4, v1, v8

    .line 263
    .local v4, "right":I
    add-int v0, v7, v5

    .line 264
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    if-eqz v8, :cond_0

    .line 265
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v7, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 269
    :cond_0
    const-string v8, "CropRegionSelector"

    const-string v9, "onCropModeTypeChanged() - Crop region bounds: "

    iget-object v10, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    const-string v11, ", source: "

    iget-object v12, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-static {v8, v9, v10, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    .end local v5    # "targetHeight":I
    :cond_1
    :goto_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_UpdateRegionByTouching:Z

    .line 319
    if-eqz p2, :cond_2

    .line 320
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->notifyCropRectChanged()V

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->invalidate()V

    .line 324
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "mode":Lcom/oneplus/gallery/crop/CropMode;
    .end local v3    # "ratioMode":Lcom/oneplus/gallery/crop/CropModeRatioBase;
    .end local v4    # "right":I
    .end local v7    # "top":I
    :cond_3
    return-void

    .line 274
    .restart local v2    # "mode":Lcom/oneplus/gallery/crop/CropMode;
    .restart local v3    # "ratioMode":Lcom/oneplus/gallery/crop/CropModeRatioBase;
    .restart local v5    # "targetHeight":I
    :cond_4
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getRatioXoverY()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 276
    .local v6, "targetWidth":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->top:I

    .line 277
    .restart local v7    # "top":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x2

    add-int v1, v8, v9

    .line 278
    .restart local v1    # "left":I
    add-int v4, v1, v6

    .line 279
    .restart local v4    # "right":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int v0, v7, v8

    .line 280
    .restart local v0    # "bottom":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    if-eqz v8, :cond_1

    .line 281
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v7, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 289
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v4    # "right":I
    .end local v5    # "targetHeight":I
    .end local v6    # "targetWidth":I
    .end local v7    # "top":I
    :cond_5
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getRatioXoverY()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 291
    .restart local v6    # "targetWidth":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-gt v6, v8, :cond_6

    .line 293
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->top:I

    .line 294
    .restart local v7    # "top":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x2

    add-int v1, v8, v9

    .line 295
    .restart local v1    # "left":I
    add-int v4, v1, v6

    .line 296
    .restart local v4    # "right":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int v0, v7, v8

    .line 297
    .restart local v0    # "bottom":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    if-eqz v8, :cond_1

    .line 298
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v7, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 305
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v4    # "right":I
    .end local v7    # "top":I
    :cond_6
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getRatioYoverX()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v5, v8

    .line 307
    .restart local v5    # "targetHeight":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 308
    .restart local v7    # "top":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    .line 309
    .restart local v1    # "left":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int v4, v1, v8

    .line 310
    .restart local v4    # "right":I
    add-int v0, v7, v5

    .line 311
    .restart local v0    # "bottom":I
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    if-eqz v8, :cond_1

    .line 312
    iget-object v8, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v7, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method private setCropRegionPosition(Landroid/graphics/Rect;Lcom/oneplus/gallery/crop/MovingPointType;)V
    .locals 2
    .param p1, "updatedRect"    # Landroid/graphics/Rect;
    .param p2, "movingPoint"    # Lcom/oneplus/gallery/crop/MovingPointType;

    .prologue
    .line 547
    if-nez p1, :cond_0

    .line 549
    const-string v0, "CropRegionSelector"

    const-string v1, "setCropRegionPosition() - Updated rectangle is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 555
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_UpdateRegionByTouching:Z

    .line 558
    invoke-direct {p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->notifyCropRectChanged()V

    .line 559
    invoke-virtual {p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 332
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v3, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/crop/CropModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/crop/CropModeType;->FREE:Lcom/oneplus/gallery/crop/CropModeType;

    if-eq v2, v3, :cond_7

    .line 341
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v3, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/crop/CropModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/crop/CropModeType;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->onCropModeTypeChanged(Lcom/oneplus/gallery/crop/CropModeType;Z)V

    .line 348
    :goto_0
    const-string v2, "CropRegionSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDraw() - initialized m_CropRegionBound : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropIndicatorLength:I

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->notifyCropRectChanged()V

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020096

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropIndicatorPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    .line 367
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropIndicatorPaint:Landroid/graphics/Paint;

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropIndicatorPaint:Landroid/graphics/Paint;

    const v3, -0x19000001

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropIndicatorPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropIndicatorPaint:Landroid/graphics/Paint;

    sget v3, Lcom/oneplus/gallery2/widget/CropRegionSelector;->BOUND_STROKE_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropIndicatorPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropGridPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_3

    .line 376
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropGridPaint:Landroid/graphics/Paint;

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropGridPaint:Landroid/graphics/Paint;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropGridPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropGridPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropGridPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_ShadowPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_4

    .line 384
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_ShadowPaint:Landroid/graphics/Paint;

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_ShadowPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    if-eqz v2, :cond_6

    .line 390
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_UpdateRegionByTouching:Z

    if-nez v2, :cond_5

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    sget-object v3, Lcom/oneplus/gallery2/editor/PhotoEditor;->PROP_CLIP_RECT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/RectF;

    .line 395
    .local v16, "modifiedRectF":Landroid/graphics/RectF;
    if-eqz v16, :cond_5

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_EditingPointStart:Landroid/graphics/PointF;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_EditingPointEnd:Landroid/graphics/PointF;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_EditingPointStart:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointStart:Landroid/graphics/PointF;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapFromOriginal(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_EditingPointEnd:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointEnd:Landroid/graphics/PointF;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/oneplus/gallery2/editor/PhotoEditor;->mapFromOriginal(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointEnd:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointStart:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointEnd:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularPointEnd:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_RegularRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 420
    .end local v16    # "modifiedRectF":Landroid/graphics/RectF;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/oneplus/gallery2/widget/CropRegionSelector;->BOUND_STROKE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v13, v2

    .line 421
    .local v13, "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/oneplus/gallery2/widget/CropRegionSelector;->BOUND_STROKE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    .line 422
    .local v20, "top":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/oneplus/gallery2/widget/CropRegionSelector;->BOUND_STROKE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    .line 423
    .local v18, "right":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/oneplus/gallery2/widget/CropRegionSelector;->BOUND_STROKE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v8, v2

    .line 425
    .local v8, "bottom":F
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 426
    .local v11, "boundaryLine":Landroid/graphics/Path;
    move/from16 v0, v20

    invoke-virtual {v11, v13, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 427
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 428
    move/from16 v0, v18

    invoke-virtual {v11, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 429
    invoke-virtual {v11, v13, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 430
    move/from16 v0, v20

    invoke-virtual {v11, v13, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float v23, v2, v3

    .line 436
    .local v23, "widthBlockLength":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float v12, v2, v3

    .line 437
    .local v12, "heightBlockLength":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v3, v2, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v5, v2, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropGridPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v23

    add-float/2addr v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v23

    add-float/2addr v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropGridPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float v4, v2, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float v6, v2, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropGridPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v12

    add-float/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v12

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropGridPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/oneplus/gallery2/widget/CropRegionSelector;->BOUND_STROKE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v14, v2

    .line 444
    .local v14, "leftOutSideBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/oneplus/gallery2/widget/CropRegionSelector;->BOUND_STROKE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v21, v0

    .line 445
    .local v21, "topOutSideBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/oneplus/gallery2/widget/CropRegionSelector;->BOUND_STROKE_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v17, v0

    .line 446
    .local v17, "righOutSideBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/oneplus/gallery2/widget/CropRegionSelector;->BOUND_STROKE_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v9, v2

    .line 447
    .local v9, "bottomOutSideBound":F
    new-instance v22, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move/from16 v0, v21

    float-to-int v5, v0

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 448
    .local v22, "topShadow":Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move/from16 v0, v21

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    float-to-int v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v15, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 449
    .local v15, "leftShadow":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    move/from16 v0, v17

    float-to-int v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move/from16 v0, v21

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 450
    .local v19, "rightShadow":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    float-to-int v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v10, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 451
    .local v10, "bottomShadow":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_ShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_ShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_ShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_ShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_IconCropHandleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 462
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_UpdateRegionByTouching:Z

    .line 464
    .end local v8    # "bottom":F
    .end local v9    # "bottomOutSideBound":F
    .end local v10    # "bottomShadow":Landroid/graphics/Rect;
    .end local v11    # "boundaryLine":Landroid/graphics/Path;
    .end local v12    # "heightBlockLength":F
    .end local v13    # "left":F
    .end local v14    # "leftOutSideBound":F
    .end local v15    # "leftShadow":Landroid/graphics/Rect;
    .end local v17    # "righOutSideBound":F
    .end local v18    # "right":F
    .end local v19    # "rightShadow":Landroid/graphics/Rect;
    .end local v20    # "top":F
    .end local v21    # "topOutSideBound":F
    .end local v22    # "topShadow":Landroid/graphics/Rect;
    .end local v23    # "widthBlockLength":F
    :cond_6
    return-void

    .line 346
    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v5

    .line 474
    :cond_1
    iget-object v6, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    if-eqz v6, :cond_0

    .line 477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 478
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 480
    .local v4, "y":F
    new-instance v1, Landroid/graphics/Point;

    float-to-int v5, v3

    float-to-int v6, v4

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 482
    .local v1, "movingPoint":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 521
    :cond_2
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 485
    :pswitch_0
    invoke-direct {p0, v3, v4}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->getTouchedMovingPointType(FF)Lcom/oneplus/gallery/crop/MovingPointType;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

    .line 486
    iput-object v1, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_MovingStartPoint:Landroid/graphics/Point;

    .line 487
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_MovingStartCropRegion:Landroid/graphics/Rect;

    goto :goto_1

    .line 491
    :pswitch_1
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

    sget-object v6, Lcom/oneplus/gallery/crop/MovingPointType;->NONE:Lcom/oneplus/gallery/crop/MovingPointType;

    if-eq v5, v6, :cond_2

    .line 493
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

    sget-object v6, Lcom/oneplus/gallery/crop/MovingPointType;->INNER:Lcom/oneplus/gallery/crop/MovingPointType;

    if-ne v5, v6, :cond_3

    .line 495
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v5, v6}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->getMoveRect(Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 496
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

    invoke-direct {p0, v2, v5}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->setCropRegionPosition(Landroid/graphics/Rect;Lcom/oneplus/gallery/crop/MovingPointType;)V

    goto :goto_1

    .line 502
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    if-eqz v5, :cond_2

    .line 504
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v6, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery/crop/CropModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/crop/CropMode;

    .line 506
    .local v0, "mode":Lcom/oneplus/gallery/crop/CropMode;
    if-eqz v0, :cond_2

    .line 508
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropRegionBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

    iget-object v7, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/oneplus/gallery/crop/CropMode;->getCropRect(Landroid/graphics/Point;Landroid/graphics/Rect;Lcom/oneplus/gallery/crop/MovingPointType;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 509
    .restart local v2    # "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

    invoke-direct {p0, v2, v5}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->setCropRegionPosition(Landroid/graphics/Rect;Lcom/oneplus/gallery/crop/MovingPointType;)V

    goto :goto_1

    .line 517
    .end local v0    # "mode":Lcom/oneplus/gallery/crop/CropMode;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :pswitch_2
    sget-object v5, Lcom/oneplus/gallery/crop/MovingPointType;->NONE:Lcom/oneplus/gallery/crop/MovingPointType;

    iput-object v5, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CurrentMovingPointType:Lcom/oneplus/gallery/crop/MovingPointType;

    goto :goto_1

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .prologue
    .line 528
    const-string v0, "CropRegionSelector"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeChangeListner:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/crop/CropModeManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 530
    return-void
.end method

.method public setCropModeManager(Lcom/oneplus/gallery/crop/CropModeManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/oneplus/gallery/crop/CropModeManager;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    .line 540
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_CropModeChangeListner:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/crop/CropModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 541
    return-void
.end method

.method public setOnCropRectChangeListener(Lcom/oneplus/gallery2/widget/CropRegionSelector$OnCropRectChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/gallery2/widget/CropRegionSelector$OnCropRectChangeListener;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_OnCropRectChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_OnCropRectChangeListeners:Ljava/util/ArrayList;

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_OnCropRectChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_OnCropRectChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_1
    return-void
.end method

.method public setPhotoEditor(Lcom/oneplus/gallery2/editor/PhotoEditor;)V
    .locals 0
    .param p1, "editor"    # Lcom/oneplus/gallery2/editor/PhotoEditor;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_PhotoEditor:Lcom/oneplus/gallery2/editor/PhotoEditor;

    .line 584
    return-void
.end method

.method public setSourceImageBoundsOnWindow(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 599
    const-string v0, "CropRegionSelector"

    const-string v1, "setSourceImageBoundsOnWindow() - Set source: "

    iget-object v2, p0, Lcom/oneplus/gallery2/widget/CropRegionSelector;->m_SourceImageBoundsOnWindow:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    invoke-virtual {p0}, Lcom/oneplus/gallery2/widget/CropRegionSelector;->invalidate()V

    .line 603
    return-void
.end method
