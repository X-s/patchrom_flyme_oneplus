.class public Lcom/oneplus/widget/ImageClipEditor;
.super Lcom/oneplus/widget/TransformedImageViewer;
.source "ImageClipEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/widget/ImageClipEditor$1;,
        Lcom/oneplus/widget/ImageClipEditor$ClipCallback;,
        Lcom/oneplus/widget/ImageClipEditor$ClipMode;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues:[I = null

.field private static final CLIP_RECT_CONTROL_POINT_RADIUS:F = 75.0f

.field protected static final CLIP_RECT_VERTEX_INDEX_BOTTOM_LEFT:I = 0x3

.field protected static final CLIP_RECT_VERTEX_INDEX_BOTTOM_LEFT_X:I = 0x6

.field protected static final CLIP_RECT_VERTEX_INDEX_BOTTOM_LEFT_Y:I = 0x7

.field protected static final CLIP_RECT_VERTEX_INDEX_BOTTOM_RIGHT:I = 0x2

.field protected static final CLIP_RECT_VERTEX_INDEX_BOTTOM_RIGHT_X:I = 0x4

.field protected static final CLIP_RECT_VERTEX_INDEX_BOTTOM_RIGHT_Y:I = 0x5

.field protected static final CLIP_RECT_VERTEX_INDEX_TOP_LEFT:I = 0x0

.field protected static final CLIP_RECT_VERTEX_INDEX_TOP_LEFT_X:I = 0x0

.field protected static final CLIP_RECT_VERTEX_INDEX_TOP_LEFT_Y:I = 0x1

.field protected static final CLIP_RECT_VERTEX_INDEX_TOP_RIGHT:I = 0x1

.field protected static final CLIP_RECT_VERTEX_INDEX_TOP_RIGHT_X:I = 0x2

.field protected static final CLIP_RECT_VERTEX_INDEX_TOP_RIGHT_Y:I = 0x3

.field private static final DEFAULT_IMAGE_MASK_ALPHA:I = 0x7f

.field private static final DEFAULT_IMAGE_MASK_COLOR:I = -0x1000000

.field private static final DURATION_CENTER_DISPLAYED_CLIP_RECT:J = 0x3e8L

.field private static final MIN_MOVING_DISPLAYED_CLIP_RECT_VERTEX_DISTANCE:F = 1.0f

.field protected static final PIVOT_FLAG_BOTTOM:I = 0x8

.field protected static final PIVOT_FLAG_CENTER:I = 0xf

.field protected static final PIVOT_FLAG_CENTER_X:I = 0x5

.field protected static final PIVOT_FLAG_CENTER_Y:I = 0xa

.field protected static final PIVOT_FLAG_LEFT:I = 0x1

.field protected static final PIVOT_FLAG_RIGHT:I = 0x4

.field protected static final PIVOT_FLAG_TOP:I = 0x2


# instance fields
.field private final m_CenterDisplayedClipRectAction:Ljava/lang/Runnable;

.field private final m_ClipCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/widget/ImageClipEditor$ClipCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

.field private m_DefaultClearPaint:Landroid/graphics/Paint;

.field private m_DefaultClipRectBorderPaint:Landroid/graphics/Paint;

.field private m_DefaultImageMaskLayerPaint:Landroid/graphics/Paint;

.field private m_DefaultImageMaskPaint:Landroid/graphics/Paint;

.field private m_DefaultImageMaskPath:Landroid/graphics/Path;

.field private final m_DisplayedClipRectPath:Landroid/graphics/Path;

.field private final m_DisplayedClipRectVertices:[F

.field private m_FixedClipRectWidthHeightRatio:F

.field private m_HasClipRect:Z

.field private m_IsCenteringDisplayedClipRectScheduled:Z

.field private m_IsDisplayedClipRectCentered:Z

.field private m_IsDisplayedClipRectMovingByUser:Z

.field private m_IsEditable:Z

.field private m_IsEditorVisible:Z

.field private m_KeepDisplayedClipRectAtCenter:Z

.field private final m_MinClipRect:Landroid/graphics/Rect;

.field private m_MovingDisplayedClipRectVertexIndex:I

.field private final m_OriginalClipRect:Landroid/graphics/Rect;

.field private final m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

.field private m_ShowClippedImageOnly:Z

.field private final m_SuspendCenteringClipRectHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TempClipRect:Landroid/graphics/RectF;

.field private final m_TempClipRectAUIB:Landroid/graphics/RectF;

.field private final m_TempClipRectCDCRV:Landroid/graphics/RectF;

.field private final m_TempClipRectCR:Landroid/graphics/RectF;

.field private final m_TempClipRectDCRV:Landroid/graphics/RectF;

.field private final m_TempClipRectMDCR:Landroid/graphics/RectF;

.field private final m_TempClipRectRounded:Landroid/graphics/Rect;

.field private final m_TempDrawingClipBounds:Landroid/graphics/RectF;

.field private final m_TempImageBounds:Landroid/graphics/Rect;

.field private final m_TempImageRectAUIB:Landroid/graphics/RectF;

.field private final m_TempImageRectCR:Landroid/graphics/RectF;

.field private final m_TempImageRectDCRV:Landroid/graphics/RectF;

.field private final m_TempImageRectMDCR:Landroid/graphics/RectF;

.field private m_TempPath:Landroid/graphics/Path;

.field private final m_TempVertices:[F

.field private final m_TempVerticesAUIB:[F

.field private final m_TempVerticesCR:[F

.field private final m_TempVerticesDCRV:[F

.field private final m_TempVerticesMDCR:[F

.field private final m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;


# direct methods
.method private static synthetic -getcom-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/widget/ImageClipEditor;->-com-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/widget/ImageClipEditor;->-com-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->values()[Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_AFTER_TRAMSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    invoke-virtual {v1}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_BEFORE_TRANSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    invoke-virtual {v1}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/widget/ImageClipEditor;->-com-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/widget/ImageClipEditor;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ImageClipEditor;->resumeCenteringDisplayedClipRect(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0xa

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/TransformedImageViewer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipCallbacks:Ljava/util/List;

    .line 119
    sget-object v0, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_BEFORE_TRANSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    .line 125
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectPath:Landroid/graphics/Path;

    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    .line 130
    iput-boolean v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectCentered:Z

    .line 132
    iput-boolean v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    .line 133
    iput-boolean v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditorVisible:Z

    .line 134
    iput-boolean v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_KeepDisplayedClipRectAtCenter:Z

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_MinClipRect:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Lcom/oneplus/util/TransformedRect;

    invoke-direct {v0}, Lcom/oneplus/util/TransformedRect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_SuspendCenteringClipRectHandles:Ljava/util/List;

    .line 141
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    .line 142
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    .line 143
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    .line 144
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    .line 146
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectMDCR:Landroid/graphics/RectF;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectRounded:Landroid/graphics/Rect;

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempDrawingClipBounds:Landroid/graphics/RectF;

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    .line 151
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectCR:Landroid/graphics/RectF;

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectDCRV:Landroid/graphics/RectF;

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectMDCR:Landroid/graphics/RectF;

    .line 155
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    .line 156
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    .line 157
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    .line 158
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesDCRV:[F

    .line 159
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    .line 160
    new-instance v0, Lcom/oneplus/util/TransformedRect;

    invoke-direct {v0}, Lcom/oneplus/util/TransformedRect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    .line 164
    new-instance v0, Lcom/oneplus/widget/ImageClipEditor$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ImageClipEditor$1;-><init>(Lcom/oneplus/widget/ImageClipEditor;)V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_CenterDisplayedClipRectAction:Ljava/lang/Runnable;

    .line 220
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/oneplus/widget/TransformedImageViewer;->setFitToViewOnly(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->changeToUserImageBounds()V

    .line 214
    return-void
.end method

.method private cancelCenteringDisplayedClipRect()V
    .locals 2

    .prologue
    .line 762
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsCenteringDisplayedClipRectScheduled:Z

    if-nez v1, :cond_0

    .line 763
    return-void

    .line 764
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsCenteringDisplayedClipRectScheduled:Z

    .line 765
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 766
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 767
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_CenterDisplayedClipRectAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 760
    :cond_1
    return-void
.end method

.method private completeMovingDisplayedClipRect()V
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectMovingByUser:Z

    if-nez v0, :cond_0

    .line 801
    return-void

    .line 807
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectMovingByUser:Z

    .line 810
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->onUserDisplayedClipRectMovingCompleted()V

    .line 813
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isCenteringDisplayedClipRectNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->scheduleCenteringDisplayedClipRect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    .line 797
    :cond_1
    return-void
.end method

.method private convertPivotFlagsToGeometryFlags(I)I
    .locals 3
    .param p1, "pivotFlags"    # I

    .prologue
    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "flags":I
    and-int/lit8 v1, p1, 0xf

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 776
    const/high16 v0, 0x600000

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 779
    :cond_1
    and-int/lit8 v1, p1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 780
    const/high16 v0, 0x200000

    .line 785
    :cond_2
    :goto_1
    and-int/lit8 v1, p1, 0xa

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 786
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_0

    .line 781
    :cond_3
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 782
    const/high16 v0, 0x20000

    goto :goto_1

    .line 783
    :cond_4
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 784
    const/high16 v0, 0x80000

    goto :goto_1

    .line 787
    :cond_5
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 788
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    goto :goto_0

    .line 789
    :cond_6
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 790
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private mapClipRectToDisplayedImageBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "imageBounds"    # Landroid/graphics/Rect;
    .param p2, "clipRect"    # Landroid/graphics/RectF;

    .prologue
    .line 957
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-virtual {v1}, Lcom/oneplus/util/TransformedRect;->getWidth()F

    move-result v1

    div-float v2, v0, v1

    .line 958
    .local v2, "scaleX":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-virtual {v1}, Lcom/oneplus/util/TransformedRect;->getHeight()F

    move-result v1

    div-float v3, v0, v1

    .line 959
    .local v3, "scaleY":F
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-virtual {v0}, Lcom/oneplus/util/TransformedRect;->getLeft()F

    move-result v4

    .line 960
    .local v4, "originalImageRectLeft":F
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-virtual {v0}, Lcom/oneplus/util/TransformedRect;->getTop()F

    move-result v5

    .local v5, "originalImageRectTop":F
    move-object v0, p2

    move-object v1, p2

    .line 961
    invoke-static/range {v0 .. v5}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 962
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 955
    return-void
.end method

.method private mapClipRectToOriginalImageBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "imageBounds"    # Landroid/graphics/Rect;
    .param p2, "clipRect"    # Landroid/graphics/RectF;

    .prologue
    .line 969
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-virtual {v0}, Lcom/oneplus/util/TransformedRect;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 970
    .local v2, "scaleX":F
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-virtual {v0}, Lcom/oneplus/util/TransformedRect;->getHeight()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 971
    .local v3, "scaleY":F
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-virtual {v0}, Lcom/oneplus/util/TransformedRect;->getLeft()F

    move-result v6

    .line 972
    .local v6, "originalImageRectLeft":F
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-virtual {v0}, Lcom/oneplus/util/TransformedRect;->getTop()F

    move-result v7

    .line 973
    .local v7, "originalImageRectTop":F
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    move-object v0, p2

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 974
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, v6, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, v7, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 967
    return-void
.end method

.method private moveDisplayedClipRect(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 982
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectMovingByUser:Z

    if-nez v1, :cond_0

    .line 983
    return-void

    .line 986
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 987
    .local v7, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 988
    .local v8, "y":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ImageClipEditor;->getTargetImageBounds(Landroid/graphics/Rect;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/widget/ImageClipEditor;->prepareTransformedImageRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/widget/ImageClipEditor;->m_MovingDisplayedClipRectVertexIndex:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectByUser(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;[FIFF)I

    move-result v16

    .line 998
    .local v16, "pivotFlags":I
    and-int/lit8 v1, v16, 0xf

    if-nez v1, :cond_1

    .line 999
    return-void

    .line 1000
    :cond_1
    and-int/lit8 v1, v16, 0x5

    if-nez v1, :cond_2

    .line 1001
    or-int/lit8 v16, v16, 0x5

    .line 1002
    :cond_2
    and-int/lit8 v1, v16, 0xa

    if-nez v1, :cond_3

    .line 1003
    or-int/lit8 v16, v16, 0xa

    .line 1006
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v17}, Lcom/oneplus/widget/ImageClipEditor;->calculateClipRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;II[FILandroid/graphics/Rect;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    move-object/from16 v17, v0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    .line 1017
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectCentered:Z

    .line 1020
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->invalidate()V

    .line 1023
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/widget/ImageClipEditor;->reportClipRect(ZLandroid/graphics/Rect;Z)V

    .line 979
    return-void
.end method

.method private prepareTransformedImageRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;)V
    .locals 4
    .param p1, "imageBounds"    # Landroid/graphics/Rect;
    .param p2, "result"    # Lcom/oneplus/util/TransformedRect;

    .prologue
    const/4 v2, 0x0

    .line 1609
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/ImageClipEditor;->getImageTransformation(Lcom/oneplus/util/TransformedRect;)V

    .line 1610
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getOriginalIntrinsicImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getOriginalIntrinsicImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v2, v2, v0, v1}, Lcom/oneplus/util/TransformedRect;->setOriginalRect(FFFF)V

    .line 1611
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/oneplus/util/TransformedRect;->getLeft()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/oneplus/util/TransformedRect;->getTop()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/util/TransformedRect;->postTranslate(FF)Z

    .line 1612
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/oneplus/util/TransformedRect;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/oneplus/util/TransformedRect;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/oneplus/util/TransformedRect;->postScale(FFFF)Z

    .line 1607
    return-void
.end method

.method private printDisplayedClipRectVertices(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/widget/ImageClipEditor;->printDisplayedClipRectVertices(Ljava/lang/CharSequence;[FI)V

    .line 1618
    return-void
.end method

.method private printDisplayedClipRectVertices(Ljava/lang/CharSequence;[FI)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "vertices"    # [F
    .param p3, "index"    # I

    .prologue
    .line 1624
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/widget/ImageClipEditor;->printVerticesLog(Ljava/lang/CharSequence;[FII)V

    .line 1622
    return-void
.end method

.method private reportClipRect(ZLandroid/graphics/Rect;Z)V
    .locals 9
    .param p1, "updateOriginalClipRect"    # Z
    .param p2, "imageBounds"    # Landroid/graphics/Rect;
    .param p3, "fromUser"    # Z

    .prologue
    .line 1663
    if-eqz p1, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-direct {p0, p2, v0}, Lcom/oneplus/widget/ImageClipEditor;->prepareTransformedImageRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;)V

    .line 1666
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipHeight()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    iget-object v8, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    const/16 v7, 0xf

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/widget/ImageClipEditor;->calculateClipRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;II[FILandroid/graphics/Rect;)V

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageClipEditor;->onClipRectUpdated(IIIIZ)V

    .line 1661
    return-void
.end method

.method private resumeCenteringDisplayedClipRect(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_SuspendCenteringClipRectHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1676
    return-void

    .line 1679
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isCenteringDisplayedClipRectNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1680
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    .line 1673
    :cond_1
    return-void
.end method

.method private scheduleCenteringDisplayedClipRect()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1687
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsCenteringDisplayedClipRectScheduled:Z

    if-eqz v1, :cond_0

    .line 1688
    return v4

    .line 1689
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1690
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_CenterDisplayedClipRectAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1692
    iput-boolean v4, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsCenteringDisplayedClipRectScheduled:Z

    .line 1693
    return v4

    .line 1695
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private startMovingDisplayedClipRect(I)Z
    .locals 2
    .param p1, "vertexIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 1992
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectMovingByUser:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_0

    .line 1996
    iput p1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_MovingDisplayedClipRectVertexIndex:I

    .line 1997
    iput-boolean v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectMovingByUser:Z

    .line 2003
    invoke-virtual {p0, p1}, Lcom/oneplus/widget/ImageClipEditor;->onUserDisplayedClipRectMovingStarted(I)V

    .line 2006
    return v1

    .line 1993
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startMovingDisplayedClipRect(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x42960000    # 75.0f

    .line 1978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1979
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1980
    .local v6, "y":F
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    const/4 v7, 0x4

    if-ge v2, v7, :cond_1

    .line 1982
    iget-object v7, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget v0, v7, v4

    .line 1983
    .local v0, "centerX":F
    iget-object v7, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aget v1, v7, v3

    .line 1984
    .local v1, "centerY":F
    sub-float v7, v5, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    sub-float v7, v6, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 1985
    invoke-direct {p0, v2}, Lcom/oneplus/widget/ImageClipEditor;->startMovingDisplayedClipRect(I)Z

    move-result v7

    return v7

    .line 1980
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1987
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_1
    const/4 v7, 0x0

    return v7
.end method


# virtual methods
.method public addClipCallback(Lcom/oneplus/widget/ImageClipEditor$ClipCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/widget/ImageClipEditor$ClipCallback;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method protected calculateAdjustedUserImageBounds(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "currentBounds"    # Landroid/graphics/Rect;
    .param p6, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v2, :cond_0

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/widget/ImageClipEditor;->prepareTransformedImageRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v2 .. v10}, Lcom/oneplus/widget/ImageClipEditor;->calculateAdjustedUserImageBounds(IIFFLandroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;[FLandroid/graphics/Rect;)V

    .line 237
    return-void

    .line 243
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/oneplus/widget/TransformedImageViewer;->calculateAdjustedUserImageBounds(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 246
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_ShowClippedImageOnly:Z

    if-eqz v2, :cond_3

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingLeft()I

    move-result v12

    .line 250
    .local v12, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingTop()I

    move-result v14

    .line 251
    .local v14, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingRight()I

    move-result v13

    .line 252
    .local v13, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingBottom()I

    move-result v11

    .line 253
    .local v11, "paddingBottom":I
    add-int v2, v12, v13

    sub-int p1, p1, v2

    .line 254
    add-int v2, v14, v11

    sub-int p2, p2, v2

    .line 255
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 256
    :cond_1
    return-void

    .line 257
    :cond_2
    int-to-float v2, v12

    move/from16 v0, p1

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v15, v2, v3

    .line 258
    .local v15, "viewCenterX":F
    int-to-float v2, v14

    move/from16 v0, p2

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v16, v2, v3

    .line 261
    .local v16, "viewCenterY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    const/16 v6, 0xf

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move/from16 v0, p1

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    move/from16 v0, p2

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/oneplus/widget/ImageClipEditor;->calculateCenteredDisplayedClipRectVertices(Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;[FLandroid/graphics/Rect;)Z

    .line 285
    .end local v11    # "paddingBottom":I
    .end local v12    # "paddingLeft":I
    .end local v13    # "paddingRight":I
    .end local v14    # "paddingTop":I
    .end local v15    # "viewCenterX":F
    .end local v16    # "viewCenterY":F
    :cond_3
    :goto_0
    return-void

    .line 269
    .restart local v11    # "paddingBottom":I
    .restart local v12    # "paddingLeft":I
    .restart local v13    # "paddingRight":I
    .restart local v14    # "paddingTop":I
    .restart local v15    # "viewCenterX":F
    .restart local v16    # "viewCenterY":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move/from16 v0, p1

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float v2, v15, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 275
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    move/from16 v0, p2

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float v2, v16, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 271
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v12

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 272
    int-to-float v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 273
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-int v3, v12, p1

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 274
    add-int v2, v12, p1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 277
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v14

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 278
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_0

    .line 279
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-int v3, v14, p2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 280
    add-int v2, v14, p2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_0
.end method

.method protected calculateAdjustedUserImageBounds(IIFFLandroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;[FLandroid/graphics/Rect;)V
    .locals 23
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "currentBounds"    # Landroid/graphics/Rect;
    .param p6, "transformedCurrentBounds"    # Lcom/oneplus/util/TransformedRect;
    .param p7, "displayedClipRectVertices"    # [F
    .param p8, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 308
    move-object/from16 v0, p8

    move-object/from16 v1, p5

    if-eq v0, v1, :cond_0

    .line 309
    move-object/from16 v0, p8

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 310
    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->sort()V

    .line 313
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_ShowClippedImageOnly:Z

    if-eqz v2, :cond_2

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingLeft()I

    move-result v18

    .line 360
    .local v18, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingTop()I

    move-result v20

    .line 361
    .local v20, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingRight()I

    move-result v19

    .line 362
    .local v19, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingBottom()I

    move-result v17

    .line 363
    .local v17, "paddingBottom":I
    add-int v2, v18, v19

    sub-int p1, p1, v2

    .line 364
    add-int v2, v20, v17

    sub-int p2, p2, v2

    .line 365
    if-lez p1, :cond_1

    if-gtz p2, :cond_6

    .line 366
    :cond_1
    return-void

    .line 316
    .end local v17    # "paddingBottom":I
    .end local v18    # "paddingLeft":I
    .end local v19    # "paddingRight":I
    .end local v20    # "paddingTop":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/oneplus/util/TransformedRect;->getOriginalRect(Landroid/graphics/RectF;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v2, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/util/TransformedRect;->mapToOriginalRectangle([FI[FII)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipWidth()I

    move-result v2

    int-to-float v15, v2

    .line 321
    .local v15, "minClipWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipHeight()I

    move-result v2

    int-to-float v13, v2

    .line 323
    .local v13, "minClipHeight":F
    invoke-static {}, Lcom/oneplus/widget/ImageClipEditor;->-getcom-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    invoke-virtual {v3}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 334
    const/high16 v16, 0x3f800000    # 1.0f

    .line 335
    .local v16, "minClipWidthRatio":F
    const/high16 v14, 0x3f800000    # 1.0f

    .line 338
    .local v14, "minClipHeightRatio":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v2, v3, v5, v6}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v12, v2, v16

    .line 340
    .local v12, "maxImageWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v11, v2, v14

    .line 341
    .local v11, "maxImageHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v12

    if-gtz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v11

    if-lez v2, :cond_4

    .line 343
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v2, v12, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v3, v11, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 344
    .local v4, "scale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move v5, v4

    invoke-static/range {v2 .. v7}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 348
    .end local v4    # "scale":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    const/4 v8, 0x0

    const/4 v9, 0x4

    const v10, 0x10003

    invoke-static/range {v5 .. v10}, Lcom/oneplus/util/Geometry;->adjustRectToContainsPoints(Landroid/graphics/RectF;Landroid/graphics/RectF;[FIII)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 352
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v5, p6

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/util/TransformedRect;->mapFromOriginalRectangle([FI[FII)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v2, v3, v5, v6}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 305
    .end local v11    # "maxImageHeight":F
    .end local v12    # "maxImageWidth":F
    .end local v13    # "minClipHeight":F
    .end local v14    # "minClipHeightRatio":F
    .end local v15    # "minClipWidth":F
    .end local v16    # "minClipWidthRatio":F
    :cond_5
    :goto_1
    return-void

    .line 326
    .restart local v13    # "minClipHeight":F
    .restart local v15    # "minClipWidth":F
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getOriginalIntrinsicImageWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v16, v15, v2

    .line 327
    .restart local v16    # "minClipWidthRatio":F
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getOriginalIntrinsicImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v14, v13, v2

    .line 328
    .restart local v14    # "minClipHeightRatio":F
    goto/16 :goto_0

    .line 330
    .end local v14    # "minClipHeightRatio":F
    .end local v16    # "minClipWidthRatio":F
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getIntrinsicImageWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v16, v15, v2

    .line 331
    .restart local v16    # "minClipWidthRatio":F
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getIntrinsicImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v14, v13, v2

    .line 332
    .restart local v14    # "minClipHeightRatio":F
    goto/16 :goto_0

    .line 367
    .end local v13    # "minClipHeight":F
    .end local v14    # "minClipHeightRatio":F
    .end local v15    # "minClipWidth":F
    .end local v16    # "minClipWidthRatio":F
    .restart local v17    # "paddingBottom":I
    .restart local v18    # "paddingLeft":I
    .restart local v19    # "paddingRight":I
    .restart local v20    # "paddingTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-nez v2, :cond_7

    .line 368
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/16 v9, 0xf

    move-object/from16 v5, p0

    move-object/from16 v6, p8

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    .line 369
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v2, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesAUIB:[F

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v2, v3, v5, v6}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 373
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v21, v2, v3

    .line 374
    .local v21, "scaleX":F
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v22, v2, v3

    .line 375
    .local v22, "scaleY":F
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 376
    .restart local v4    # "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    move v5, v4

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    move-object/from16 v2, p8

    move-object/from16 v3, p8

    move v5, v4

    move/from16 v6, p3

    move/from16 v7, p4

    .line 379
    invoke-static/range {v2 .. v7}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFF)V

    .line 383
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move/from16 v0, p1

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a

    .line 384
    div-int/lit8 v2, p1, 0x2

    add-int v2, v2, v18

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 389
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    move/from16 v0, p2

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_c

    .line 390
    div-int/lit8 v2, p2, 0x2

    add-int v2, v2, v20

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_1

    .line 385
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move/from16 v0, v18

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 386
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 387
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-int v3, v18, p1

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 388
    add-int v2, v18, p1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 391
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move/from16 v0, v20

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    .line 392
    move/from16 v0, v20

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_1

    .line 393
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-int v3, v20, p2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 394
    add-int v2, v20, p2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectAUIB:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_1

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected calculateCenteredDisplayedClipRectVertices(Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;[FLandroid/graphics/Rect;)Z
    .locals 21
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "clipMode"    # Lcom/oneplus/widget/ImageClipEditor$ClipMode;
    .param p3, "resultClipRectVertices"    # [F
    .param p4, "resultImageBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingLeft()I

    move-result v12

    .line 411
    .local v12, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingTop()I

    move-result v14

    .line 412
    .local v14, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingRight()I

    move-result v13

    .line 413
    .local v13, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getPaddingBottom()I

    move-result v11

    .line 414
    .local v11, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getWidth()I

    move-result v2

    sub-int/2addr v2, v12

    sub-int v20, v2, v13

    .line 415
    .local v20, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getHeight()I

    move-result v2

    sub-int/2addr v2, v14

    sub-int v19, v2, v11

    .line 416
    .local v19, "viewHeight":I
    if-lez v20, :cond_0

    if-gtz v19, :cond_1

    .line 417
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 418
    :cond_1
    int-to-float v2, v12

    move/from16 v0, v20

    int-to-float v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float v17, v2, v3

    .line 419
    .local v17, "viewCenterX":F
    int-to-float v2, v14

    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float v18, v2, v3

    .line 422
    .local v18, "viewCenterY":F
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getIntrinsicImageWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageClipEditor;->getIntrinsicImageHeight()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 425
    const/16 v6, 0xf

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-static {v2, v0, v3, v5}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float v2, v17, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float v3, v18, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 430
    sget-object v2, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_AFTER_TRAMSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float v3, v17, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float v5, v18, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 434
    :cond_2
    move/from16 v0, v20

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v15, v2, v3

    .line 435
    .local v15, "scaleX":F
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v16, v2, v3

    .line 436
    .local v16, "scaleY":F
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .local v4, "scale":F
    move-object/from16 v2, p4

    move-object/from16 v3, p4

    move v5, v4

    move/from16 v6, v17

    move/from16 v7, v18

    .line 437
    invoke-static/range {v2 .. v7}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFF)V

    .line 438
    sget-object v2, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_AFTER_TRAMSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    move v5, v4

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 442
    :cond_3
    invoke-static {}, Lcom/oneplus/widget/ImageClipEditor;->-getcom-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 457
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 445
    :pswitch_0
    const/16 v9, 0xf

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    goto :goto_0

    .line 449
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/oneplus/widget/ImageClipEditor;->mapClipRectToOriginalImageBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCDCRV:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectRounded:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectRounded:Landroid/graphics/Rect;

    const/16 v9, 0xf

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    goto :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected calculateClipRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;II[FILandroid/graphics/Rect;)V
    .locals 14
    .param p1, "imageBounds"    # Landroid/graphics/Rect;
    .param p2, "transformedImageBounds"    # Lcom/oneplus/util/TransformedRect;
    .param p3, "clipMode"    # Lcom/oneplus/widget/ImageClipEditor$ClipMode;
    .param p4, "minClipWidth"    # I
    .param p5, "minClipHeight"    # I
    .param p6, "displayedClipRectVertices"    # [F
    .param p7, "pivotFlags"    # I
    .param p8, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 484
    invoke-static {}, Lcom/oneplus/widget/ImageClipEditor;->-getcom-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 503
    :goto_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->convertPivotFlagsToGeometryFlags(I)I

    move-result v10

    .line 504
    .local v10, "adjustFlags":I
    iget v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_FixedClipRectWidthHeightRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 506
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    iget v4, p0, Lcom/oneplus/widget/ImageClipEditor;->m_FixedClipRectWidthHeightRatio:F

    invoke-static {v2, v3, v4, v10}, Lcom/oneplus/util/Geometry;->adjustRectByWidthHeightRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;FI)Z

    .line 507
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    const/high16 v6, 0x10000

    or-int/2addr v6, v10

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/util/Geometry;->adjustRectByMinSize(Landroid/graphics/RectF;Landroid/graphics/RectF;FFI)Z

    .line 513
    :goto_1
    invoke-static {}, Lcom/oneplus/widget/ImageClipEditor;->-getcom-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 529
    :goto_2
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectCR:Landroid/graphics/RectF;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/oneplus/util/TransformedRect;->getOriginalRect(Landroid/graphics/RectF;)V

    .line 530
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v2, v4, v3, v5, v6}, Lcom/oneplus/util/Geometry;->getCentroid([FI[FII)V

    .line 531
    const/4 v10, 0x3

    .line 532
    const/high16 v11, 0x7fc00000    # NaNf

    .line 533
    .local v11, "adjustPivotX":F
    const/high16 v12, 0x7fc00000    # NaNf

    .line 534
    .local v12, "adjustPivotY":F
    and-int/lit8 v2, p7, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 536
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v3, 0x8

    aget v11, v2, v3

    .line 537
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v3, 0x9

    aget v12, v2, v3

    .line 596
    :cond_0
    :goto_3
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v3, 0x8

    aput v11, v2, v3

    .line 597
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v3, 0x9

    aput v12, v2, v3

    .line 598
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    iget-object v4, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    iget-object v6, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectCR:Landroid/graphics/RectF;

    const/16 v3, 0x8

    const/16 v5, 0x8

    const/high16 v7, 0x7fc00000    # NaNf

    const/high16 v8, 0x7fc00000    # NaNf

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/oneplus/util/Geometry;->adjustPointIntoRect([FI[FILandroid/graphics/RectF;FFI)Z

    .line 599
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    iget-object v4, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    iget-object v7, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectCR:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v5, 0x8

    aget v8, v3, v5

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v5, 0x9

    aget v9, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static/range {v2 .. v10}, Lcom/oneplus/util/Geometry;->adjustPointsIntoRect([FI[FIILandroid/graphics/RectF;FFI)Z

    .line 602
    invoke-static {}, Lcom/oneplus/widget/ImageClipEditor;->-getcom-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    .line 619
    :goto_4
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 481
    return-void

    .line 488
    .end local v10    # "adjustFlags":I
    .end local v11    # "adjustPivotX":F
    .end local v12    # "adjustPivotY":F
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v2, p2

    move-object/from16 v5, p6

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/util/TransformedRect;->mapToOriginalRectangle([FI[FII)V

    .line 489
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    goto/16 :goto_0

    .line 494
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getOriginalIntrinsicImageWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 495
    .local v13, "scale":F
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float/2addr v2, v13

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    add-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 p4, v0

    .line 496
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float/2addr v2, v13

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    add-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 p5, v0

    .line 497
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p6

    invoke-static {v2, v0, v3, v4}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    goto/16 :goto_0

    .line 510
    .end local v13    # "scale":F
    .restart local v10    # "adjustFlags":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    invoke-static {v2, v3, v4, v5, v10}, Lcom/oneplus/util/Geometry;->adjustRectByMinSize(Landroid/graphics/RectF;Landroid/graphics/RectF;FFI)Z

    goto/16 :goto_1

    .line 517
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    goto/16 :goto_2

    .line 522
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 523
    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    iget-object v5, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/util/TransformedRect;->mapToOriginalRectangle([FI[FII)V

    goto/16 :goto_2

    .line 541
    .restart local v11    # "adjustPivotX":F
    .restart local v12    # "adjustPivotY":F
    :cond_2
    and-int/lit8 v2, p7, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 543
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v3, 0x8

    aget v11, v2, v3

    .line 544
    and-int/lit8 v2, p7, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 545
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v3, 0x9

    aget v12, v2, v3

    goto/16 :goto_3

    .line 546
    :cond_3
    and-int/lit8 v2, p7, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 548
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x1

    aget v12, v2, v3

    .line 549
    const/4 v10, 0x2

    goto/16 :goto_3

    .line 551
    :cond_4
    and-int/lit8 v2, p7, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 553
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x7

    aget v12, v2, v3

    .line 554
    const/4 v10, 0x2

    goto/16 :goto_3

    .line 557
    :cond_5
    and-int/lit8 v2, p7, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 559
    and-int/lit8 v2, p7, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    .line 561
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x0

    aget v11, v2, v3

    .line 562
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v3, 0x9

    aget v12, v2, v3

    .line 574
    :cond_6
    :goto_5
    const/4 v10, 0x2

    goto/16 :goto_3

    .line 564
    :cond_7
    and-int/lit8 v2, p7, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 566
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x0

    aget v11, v2, v3

    .line 567
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x1

    aget v12, v2, v3

    goto :goto_5

    .line 569
    :cond_8
    and-int/lit8 v2, p7, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 571
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x6

    aget v11, v2, v3

    .line 572
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x7

    aget v12, v2, v3

    goto :goto_5

    .line 576
    :cond_9
    and-int/lit8 v2, p7, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 578
    and-int/lit8 v2, p7, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    .line 580
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x2

    aget v11, v2, v3

    .line 581
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/16 v3, 0x9

    aget v12, v2, v3

    .line 593
    :cond_a
    :goto_6
    const/4 v10, 0x2

    goto/16 :goto_3

    .line 583
    :cond_b
    and-int/lit8 v2, p7, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 585
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x2

    aget v11, v2, v3

    .line 586
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x3

    aget v12, v2, v3

    goto :goto_6

    .line 588
    :cond_c
    and-int/lit8 v2, p7, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 590
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x4

    aget v11, v2, v3

    .line 591
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v3, 0x5

    aget v12, v2, v3

    goto :goto_6

    .line 606
    :pswitch_4
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    goto/16 :goto_4

    .line 611
    :pswitch_5
    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    iget-object v5, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/util/TransformedRect;->mapFromOriginalRectangle([FI[FII)V

    .line 612
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesCR:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 613
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectCR:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v2}, Lcom/oneplus/widget/ImageClipEditor;->mapClipRectToOriginalImageBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    goto/16 :goto_4

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 513
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 602
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V
    .locals 7
    .param p1, "imageBounds"    # Landroid/graphics/Rect;
    .param p2, "clipRect"    # Landroid/graphics/Rect;
    .param p3, "clipMode"    # Lcom/oneplus/widget/ImageClipEditor$ClipMode;
    .param p4, "pivotFlags"    # I
    .param p5, "result"    # [F

    .prologue
    .line 719
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/widget/ImageClipEditor;->prepareTransformedImageRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;)V

    .line 720
    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    .line 717
    return-void
.end method

.method protected calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V
    .locals 11
    .param p1, "imageBounds"    # Landroid/graphics/Rect;
    .param p2, "transformedImageBounds"    # Lcom/oneplus/util/TransformedRect;
    .param p3, "clipRect"    # Landroid/graphics/Rect;
    .param p4, "clipMode"    # Lcom/oneplus/widget/ImageClipEditor$ClipMode;
    .param p5, "pivotFlags"    # I
    .param p6, "result"    # [F

    .prologue
    .line 644
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->convertPivotFlagsToGeometryFlags(I)I

    move-result v10

    .line 647
    .local v10, "geometryFlags":I
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 648
    iget v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_FixedClipRectWidthHeightRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_FixedClipRectWidthHeightRatio:F

    invoke-static {v1, v2, v3, v10}, Lcom/oneplus/util/Geometry;->adjustRectByWidthHeightRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;FI)Z

    .line 651
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x10000

    or-int/2addr v5, v10

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oneplus/util/Geometry;->adjustRectByMinSize(Landroid/graphics/RectF;Landroid/graphics/RectF;FFI)Z

    .line 657
    :goto_0
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectDCRV:Landroid/graphics/RectF;

    invoke-virtual {p2, v1}, Lcom/oneplus/util/TransformedRect;->getOriginalRect(Landroid/graphics/RectF;)V

    .line 660
    invoke-static {}, Lcom/oneplus/widget/ImageClipEditor;->-getcom-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p4}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 673
    :goto_1
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesDCRV:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p6

    invoke-static {v1, v2, v0, v3, v4}, Lcom/oneplus/util/Geometry;->getCentroid([FI[FII)V

    .line 674
    const/4 v9, 0x3

    .line 675
    .local v9, "adjustFlags":I
    const/high16 v7, 0x7fc00000    # NaNf

    .line 676
    .local v7, "adjustPivotX":F
    const/high16 v8, 0x7fc00000    # NaNf

    .line 677
    .local v8, "adjustPivotY":F
    and-int/lit8 v1, p5, 0xf

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 679
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesDCRV:[F

    const/4 v2, 0x0

    aget v7, v1, v2

    .line 680
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesDCRV:[F

    const/4 v2, 0x1

    aget v8, v1, v2

    .line 709
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectDCRV:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v1, p6

    move-object/from16 v3, p6

    invoke-static/range {v1 .. v9}, Lcom/oneplus/util/Geometry;->adjustPointsIntoRect([FI[FIILandroid/graphics/RectF;FFI)Z

    .line 712
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v1, p2

    move-object/from16 v2, p6

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/util/TransformedRect;->mapFromOriginalRectangle([FI[FII)V

    .line 641
    return-void

    .line 654
    .end local v7    # "adjustPivotX":F
    .end local v8    # "adjustPivotY":F
    .end local v9    # "adjustFlags":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v2, v3, v4, v10}, Lcom/oneplus/util/Geometry;->adjustRectByMinSize(Landroid/graphics/RectF;Landroid/graphics/RectF;FFI)Z

    goto :goto_0

    .line 663
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-static {v1, v0, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    goto :goto_1

    .line 666
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/widget/ImageClipEditor;->mapClipRectToDisplayedImageBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 667
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectDCRV:Landroid/graphics/RectF;

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-static {v1, v0, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 668
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v1, p2

    move-object/from16 v2, p6

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/util/TransformedRect;->mapToOriginalRectangle([FI[FII)V

    goto :goto_1

    .line 684
    .restart local v7    # "adjustPivotX":F
    .restart local v8    # "adjustPivotY":F
    .restart local v9    # "adjustFlags":I
    :cond_2
    and-int/lit8 v1, p5, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 685
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesDCRV:[F

    const/4 v2, 0x0

    aget v7, v1, v2

    .line 696
    :cond_3
    :goto_3
    and-int/lit8 v1, p5, 0xa

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 697
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesDCRV:[F

    const/4 v2, 0x1

    aget v8, v1, v2

    goto :goto_2

    .line 686
    :cond_4
    and-int/lit8 v1, p5, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 688
    const/4 v1, 0x0

    aget v7, p6, v1

    .line 689
    const/4 v9, 0x2

    goto :goto_3

    .line 691
    :cond_5
    and-int/lit8 v1, p5, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 693
    const/4 v1, 0x2

    aget v7, p6, v1

    .line 694
    const/4 v9, 0x2

    goto :goto_3

    .line 698
    :cond_6
    and-int/lit8 v1, p5, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 700
    const/4 v1, 0x1

    aget v8, p6, v1

    .line 701
    and-int/lit8 v9, v9, -0x2

    goto :goto_2

    .line 703
    :cond_7
    and-int/lit8 v1, p5, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 705
    const/4 v1, 0x7

    aget v8, p6, v1

    .line 706
    and-int/lit8 v9, v9, -0x2

    goto/16 :goto_2

    .line 660
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected calculateFitToViewBounds(IIIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I
    .param p5, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ShowClippedImageOnly:Z

    if-eqz v0, :cond_1

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    invoke-virtual {p0, v0, v1, v2, p5}, Lcom/oneplus/widget/ImageClipEditor;->calculateCenteredDisplayedClipRectVertices(Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;[FLandroid/graphics/Rect;)Z

    .line 726
    return-void

    .line 731
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/oneplus/widget/TransformedImageViewer;->calculateFitToViewBounds(IIIILandroid/graphics/Rect;)V

    .line 732
    return-void
.end method

.method protected calculateMovingUserImageBounds(IILandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "distanceX"    # I
    .param p2, "distanceY"    # I
    .param p3, "currentBounds"    # Landroid/graphics/Rect;
    .param p4, "preventMovingOnSmallSide"    # Z
    .param p5, "result"    # Landroid/graphics/Rect;
    .param p6, "adjustedResult"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 745
    invoke-super/range {v0 .. v6}, Lcom/oneplus/widget/TransformedImageViewer;->calculateMovingUserImageBounds(IILandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 748
    if-eqz p4, :cond_3

    .line 750
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v2, 0x4

    invoke-static {v0, v1, v4, v2}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 751
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_1

    .line 752
    :cond_0
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 753
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_3

    .line 754
    :cond_2
    iget v0, p5, Landroid/graphics/Rect;->left:I

    iget v1, p6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 742
    :cond_3
    return-void
.end method

.method public fitImageToView(Z)Z
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ShowClippedImageOnly:Z

    if-eqz v0, :cond_1

    .line 827
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/widget/TransformedImageViewer;->fitImageToView(Z)Z

    move-result v0

    return v0

    .line 826
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 837
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 838
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->getClipRect(Landroid/graphics/Rect;)V

    .line 839
    return-object v0
.end method

.method public getClipRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 849
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 847
    return-void
.end method

.method public getDisplayedClipRectVertices([F)V
    .locals 1
    .param p1, "dst"    # [F

    .prologue
    .line 859
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ImageClipEditor;->getDisplayedClipRectVertices([FI)V

    .line 857
    return-void
.end method

.method public getDisplayedClipRectVertices([FI)V
    .locals 3
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I

    .prologue
    .line 870
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    return-void
.end method

.method public getFixedClipRectWidthHeightRatio()F
    .locals 1

    .prologue
    .line 880
    iget v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_FixedClipRectWidthHeightRatio:F

    return v0
.end method

.method public getMinClipHeight()I
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_MinClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const/4 v0, 0x1

    return v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_MinClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinClipWidth()I
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_MinClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    const/4 v0, 0x1

    return v0

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_MinClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public hasClipRect()Z
    .locals 1

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    return v0
.end method

.method protected isCenteringDisplayedClipRectNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 924
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_KeepDisplayedClipRectAtCenter:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_SuspendCenteringClipRectHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    return v1

    .line 925
    :cond_0
    return v1

    .line 928
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isClipRectEditingByUser()Z
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-nez v0, :cond_0

    .line 939
    const/4 v0, 0x0

    return v0

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isImageMovingByUser()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectMovingByUser:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    return v0
.end method

.method protected moveDisplayedClipRectByUser(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;[FIFF)I
    .locals 8
    .param p1, "imageBounds"    # Landroid/graphics/Rect;
    .param p2, "transformedImageBounds"    # Lcom/oneplus/util/TransformedRect;
    .param p3, "clipMode"    # Lcom/oneplus/widget/ImageClipEditor$ClipMode;
    .param p4, "clipRectVertices"    # [F
    .param p5, "vertexIndex"    # I
    .param p6, "newX"    # F
    .param p7, "newY"    # F

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {p4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1057
    invoke-static {}, Lcom/oneplus/widget/ImageClipEditor;->-getcom-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1075
    :goto_0
    :pswitch_0
    const/4 v7, 0x0

    .line 1076
    .local v7, "pivotFlags":I
    packed-switch p5, :pswitch_data_1

    .line 1107
    :cond_0
    :goto_1
    sget-object v0, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_BEFORE_TRANSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    if-ne p3, v0, :cond_2

    .line 1109
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectMDCR:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Lcom/oneplus/util/TransformedRect;->getOriginalRect(Landroid/graphics/RectF;)V

    .line 1110
    const/4 v0, 0x0

    cmpg-float v0, p6, v0

    if-gez v0, :cond_7

    .line 1111
    const/4 p6, 0x0

    .line 1114
    :cond_1
    :goto_2
    const/4 v0, 0x0

    cmpg-float v0, p7, v0

    if-gez v0, :cond_8

    .line 1115
    const/4 p7, 0x0

    .line 1121
    :cond_2
    :goto_3
    add-int/lit8 v0, p5, 0x2

    rem-int/lit8 v6, v0, 0x4

    .line 1122
    .local v6, "oppositeIndex":I
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectMDCR:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    shl-int/lit8 v2, v6, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1123
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectMDCR:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    shl-int/lit8 v2, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1124
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectMDCR:Landroid/graphics/RectF;

    iput p6, v0, Landroid/graphics/RectF;->right:F

    .line 1125
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectMDCR:Landroid/graphics/RectF;

    iput p7, v0, Landroid/graphics/RectF;->bottom:F

    .line 1126
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectMDCR:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    .line 1129
    invoke-static {}, Lcom/oneplus/widget/ImageClipEditor;->-getcom-oneplus-widget-ImageClipEditor$ClipModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 1145
    :goto_4
    return v7

    .line 1061
    .end local v6    # "oppositeIndex":I
    .end local v7    # "pivotFlags":I
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/16 v1, 0x8

    aput p6, v0, v1

    .line 1062
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/16 v1, 0x9

    aput p7, v0, v1

    .line 1063
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/util/TransformedRect;->mapToOriginalRectangle([FI[FII)V

    .line 1064
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/16 v1, 0x8

    aget p6, v0, v1

    .line 1065
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/16 v1, 0x9

    aget p7, v0, v1

    goto :goto_0

    .line 1079
    .restart local v7    # "pivotFlags":I
    :pswitch_2
    const/16 v7, 0xc

    .line 1080
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p6

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1081
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p6, v0, v1

    .line 1082
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p7

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p7, v0, v1

    goto/16 :goto_1

    .line 1086
    :pswitch_3
    const/16 v7, 0x9

    .line 1087
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p6, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 1088
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float p6, v0, v1

    .line 1089
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p7

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p7, v0, v1

    goto/16 :goto_1

    .line 1093
    :pswitch_4
    const/4 v7, 0x3

    .line 1094
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p6, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 1095
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float p6, v0, v1

    .line 1096
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p7, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float p7, v0, v1

    goto/16 :goto_1

    .line 1100
    :pswitch_5
    const/4 v7, 0x6

    .line 1101
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p6

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1102
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p6, v0, v1

    .line 1103
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p7, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVerticesMDCR:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float p7, v0, v1

    goto/16 :goto_1

    .line 1112
    :cond_7
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectMDCR:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p6, v0

    if-lez v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectMDCR:Landroid/graphics/RectF;

    iget p6, v0, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 1116
    :cond_8
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectMDCR:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p7, v0

    if-lez v0, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageRectMDCR:Landroid/graphics/RectF;

    iget p7, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 1133
    .restart local v6    # "oppositeIndex":I
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectMDCR:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-static {v0, p4, v1}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 1134
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p2

    move-object v1, p4

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/util/TransformedRect;->mapFromOriginalRectangle([FI[FII)V

    goto/16 :goto_4

    .line 1139
    :pswitch_7
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRectMDCR:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-static {v0, p4, v1}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    goto/16 :goto_4

    .line 1057
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1076
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1129
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public moveDisplayedClipRectToCenter()Z
    .locals 1

    .prologue
    .line 1155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    move-result v0

    return v0
.end method

.method public moveDisplayedClipRectToCenter(Z)Z
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1167
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isImageMovingByUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1168
    :cond_0
    return v5

    .line 1171
    :cond_1
    iput-boolean v4, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectCentered:Z

    .line 1174
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelImageAutoScrolling()V

    .line 1175
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelImageBoundsAnimation()V

    .line 1178
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelCenteringDisplayedClipRect()V

    .line 1181
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/widget/ImageClipEditor;->calculateCenteredDisplayedClipRectVertices(Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;[FLandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1182
    return v4

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/widget/ImageClipEditor;->moveImage(Landroid/graphics/Rect;Z)Z

    .line 1186
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->invalidate()V

    .line 1189
    if-nez p1, :cond_3

    .line 1190
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0, v5}, Lcom/oneplus/widget/ImageClipEditor;->reportClipRect(ZLandroid/graphics/Rect;Z)V

    .line 1193
    :cond_3
    return v4
.end method

.method protected onClipRectUpdated(IIIIZ)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "fromUser"    # Z

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipCallbacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ImageClipEditor$ClipCallback;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/widget/ImageClipEditor$ClipCallback;->onClipRectUpdated(Lcom/oneplus/widget/ImageClipEditor;IIIIZ)V

    .line 1207
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1205
    :cond_0
    return-void
.end method

.method protected onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1216
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_0

    .line 1218
    const/4 v0, 0x1

    return v0

    .line 1217
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/widget/TransformedImageViewer;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->getImageBounds(Landroid/graphics/Rect;)V

    .line 1228
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v0, :cond_1

    .line 1230
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-nez v0, :cond_0

    .line 1231
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    iget-object v5, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/16 v4, 0xf

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1233
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1234
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1235
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1236
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1237
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1241
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1244
    .local v6, "saveCount":I
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ShowClippedImageOnly:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v0, :cond_2

    .line 1245
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1246
    :cond_2
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ImageClipEditor;->prepareTransformedImageRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;)V

    .line 1247
    invoke-super {p0, p1}, Lcom/oneplus/widget/TransformedImageViewer;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1255
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditorVisible:Z

    if-eqz v0, :cond_4

    .line 1257
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ShowClippedImageOnly:Z

    if-nez v0, :cond_3

    .line 1258
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectPath:Landroid/graphics/Path;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oneplus/widget/ImageClipEditor;->onDrawImageMask(Landroid/graphics/Canvas;Lcom/oneplus/util/TransformedRect;[FLandroid/graphics/Path;)V

    .line 1259
    :cond_3
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectPath:Landroid/graphics/Path;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oneplus/widget/ImageClipEditor;->onDrawClipRect(Landroid/graphics/Canvas;Lcom/oneplus/util/TransformedRect;[FLandroid/graphics/Path;)V

    .line 1224
    :cond_4
    return-void

    .line 1250
    :catchall_0
    move-exception v0

    .line 1251
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1250
    throw v0
.end method

.method protected onDrawClipRect(Landroid/graphics/Canvas;Lcom/oneplus/util/TransformedRect;[FLandroid/graphics/Path;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "transformedImageBounds"    # Lcom/oneplus/util/TransformedRect;
    .param p3, "clipRectVertices"    # [F
    .param p4, "clipRectPath"    # Landroid/graphics/Path;

    .prologue
    .line 1274
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-nez v0, :cond_0

    .line 1275
    return-void

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClipRectBorderPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 1280
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClipRectBorderPaint:Landroid/graphics/Paint;

    .line 1281
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClipRectBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1282
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClipRectBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1283
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClipRectBorderPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1284
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClipRectBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1285
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClipRectBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1289
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClipRectBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1271
    return-void
.end method

.method protected onDrawImageMask(Landroid/graphics/Canvas;Lcom/oneplus/util/TransformedRect;[FLandroid/graphics/Path;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "transformedImageBounds"    # Lcom/oneplus/util/TransformedRect;
    .param p3, "clipRectVertices"    # [F
    .param p4, "clipRectPath"    # Landroid/graphics/Path;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1303
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskLayerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 1305
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskLayerPaint:Landroid/graphics/Paint;

    .line 1306
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskLayerPaint:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1308
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1309
    .local v0, "canvasClipRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_4

    .line 1310
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempDrawingClipBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1313
    :goto_0
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempDrawingClipBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 1316
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 1318
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPaint:Landroid/graphics/Paint;

    .line 1319
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1320
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1321
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1322
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1324
    :cond_1
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClearPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 1326
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClearPaint:Landroid/graphics/Paint;

    .line 1327
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClearPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1328
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClearPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1332
    :cond_2
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    if-nez v1, :cond_5

    .line 1334
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    .line 1335
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1339
    :goto_1
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    invoke-virtual {p2, v1, v5}, Lcom/oneplus/util/TransformedRect;->getVertices([FI)V

    .line 1340
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1341
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1342
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1343
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempVertices:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1344
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 1345
    if-eqz v0, :cond_3

    .line 1347
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempPath:Landroid/graphics/Path;

    if-nez v1, :cond_6

    .line 1348
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempPath:Landroid/graphics/Path;

    .line 1351
    :goto_2
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1352
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 1354
    :cond_3
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1357
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1358
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    aget v2, p3, v5

    aget v3, p3, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1359
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    aget v2, p3, v7

    const/4 v3, 0x3

    aget v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1360
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    const/4 v2, 0x4

    aget v2, p3, v2

    const/4 v3, 0x5

    aget v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1361
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    const/4 v2, 0x6

    aget v2, p3, v2

    const/4 v3, 0x7

    aget v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1362
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 1363
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultClearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1300
    return-void

    .line 1312
    :cond_4
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempDrawingClipBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 1338
    :cond_5
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DefaultImageMaskPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_1

    .line 1350
    :cond_6
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    goto :goto_2
.end method

.method protected onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFZ)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .param p5, "preventScrollingOnSmallSize"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1375
    if-eqz p5, :cond_3

    .line 1377
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/4 v2, 0x4

    invoke-static {v0, v1, v5, v2}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 1378
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->getImageBounds(Landroid/graphics/Rect;)V

    .line 1379
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 1380
    :cond_0
    const/4 p3, 0x0

    .line 1381
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    .line 1382
    :cond_2
    const/4 p4, 0x0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1386
    invoke-super/range {v0 .. v5}, Lcom/oneplus/widget/TransformedImageViewer;->onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFZ)Z

    move-result v0

    return v0
.end method

.method protected onImageAutoScrollingCompleted()V
    .locals 3

    .prologue
    .line 1395
    invoke-super {p0}, Lcom/oneplus/widget/TransformedImageViewer;->onImageAutoScrollingCompleted()V

    .line 1398
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->getAdjustedUserImageBounds(Landroid/graphics/Rect;)V

    .line 1401
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/oneplus/widget/ImageClipEditor;->reportClipRect(ZLandroid/graphics/Rect;Z)V

    .line 1402
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isCenteringDisplayedClipRectNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isImageMovingByUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->scheduleCenteringDisplayedClipRect()Z

    goto :goto_0
.end method

.method protected onImageAutoScrollingStarted()V
    .locals 0

    .prologue
    .line 1413
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelCenteringDisplayedClipRect()V

    .line 1416
    invoke-super {p0}, Lcom/oneplus/widget/TransformedImageViewer;->onImageAutoScrollingStarted()V

    .line 1410
    return-void
.end method

.method protected onImageBoundsAnimationStarted(IIII)V
    .locals 3
    .param p1, "targetLeft"    # I
    .param p2, "targetTop"    # I
    .param p3, "targetRight"    # I
    .param p4, "targetBottom"    # I

    .prologue
    .line 1425
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->completeMovingDisplayedClipRect()V

    .line 1428
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/TransformedImageViewer;->onImageBoundsAnimationStarted(IIII)V

    .line 1431
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1434
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/oneplus/widget/ImageClipEditor;->reportClipRect(ZLandroid/graphics/Rect;Z)V

    .line 1422
    :cond_0
    return-void
.end method

.method protected onImageBoundsChanged(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1443
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1446
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    iget-object v5, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    const/16 v4, 0xf

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    .line 1448
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/TransformedImageViewer;->onImageBoundsChanged(IIII)V

    .line 1441
    return-void
.end method

.method protected onImageTransformationChanged(Landroid/graphics/Matrix;Z)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "animate"    # Z

    .prologue
    .line 1457
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->completeMovingDisplayedClipRect()V

    .line 1460
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/TransformedRect;->setTransformation(Landroid/graphics/Matrix;)V

    .line 1463
    invoke-super {p0, p1, p2}, Lcom/oneplus/widget/TransformedImageViewer;->onImageTransformationChanged(Landroid/graphics/Matrix;Z)V

    .line 1466
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    sget-object v1, Lcom/oneplus/widget/ImageClipEditor$ClipMode;->CLIP_AFTER_TRAMSFORMATION:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    if-ne v0, v1, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->getAdjustedUserImageBounds(Landroid/graphics/Rect;)V

    .line 1469
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/oneplus/widget/ImageClipEditor;->reportClipRect(ZLandroid/graphics/Rect;Z)V

    .line 1473
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectCentered:Z

    if-eqz v0, :cond_2

    .line 1474
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    .line 1454
    :cond_1
    :goto_0
    return-void

    .line 1475
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isCenteringDisplayedClipRectNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsCenteringDisplayedClipRectScheduled:Z

    if-nez v0, :cond_1

    .line 1476
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    goto :goto_0
.end method

.method protected onOriginalIntrinsicImageSizeChanged(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 1484
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->completeMovingDisplayedClipRect()V

    .line 1485
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalTransformedImageRect:Lcom/oneplus/util/TransformedRect;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/oneplus/util/TransformedRect;->setOriginalRect(FFFF)V

    .line 1486
    invoke-super {p0, p1, p2}, Lcom/oneplus/widget/TransformedImageViewer;->onOriginalIntrinsicImageSizeChanged(II)V

    .line 1482
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1494
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/TransformedImageViewer;->onSizeChanged(IIII)V

    .line 1495
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isCenteringDisplayedClipRectNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectCentered:Z

    if-eqz v0, :cond_1

    .line 1496
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    .line 1492
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1533
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectMovingByUser:Z

    if-eqz v0, :cond_0

    .line 1534
    return v1

    .line 1509
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelCenteringDisplayedClipRect()V

    .line 1510
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ImageClipEditor;->startMovingDisplayedClipRect(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    return v1

    .line 1517
    :pswitch_1
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectMovingByUser:Z

    if-eqz v0, :cond_0

    .line 1519
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->completeMovingDisplayedClipRect()V

    .line 1520
    return v1

    .line 1525
    :pswitch_2
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectMovingByUser:Z

    if-eqz v0, :cond_0

    .line 1527
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRect(Landroid/view/MotionEvent;)V

    .line 1528
    return v1

    .line 1539
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/widget/TransformedImageViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onUserDisplayedClipRectMovingCompleted()V
    .locals 0

    .prologue
    .line 1546
    return-void
.end method

.method protected onUserDisplayedClipRectMovingStarted(I)V
    .locals 0
    .param p1, "vertexIndex"    # I

    .prologue
    .line 1560
    return-void
.end method

.method protected onUserImageMovingCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1569
    invoke-super {p0}, Lcom/oneplus/widget/TransformedImageViewer;->onUserImageMovingCompleted()V

    .line 1572
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->getAdjustedUserImageBounds(Landroid/graphics/Rect;)V

    .line 1575
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v1}, Lcom/oneplus/widget/ImageClipEditor;->reportClipRect(ZLandroid/graphics/Rect;Z)V

    .line 1579
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isCenteringDisplayedClipRectNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isImageAutoScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1566
    :cond_1
    :goto_0
    return-void

    .line 1581
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->scheduleCenteringDisplayedClipRect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1582
    invoke-virtual {p0, v1}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    goto :goto_0
.end method

.method protected onUserImageMovingStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1592
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->completeMovingDisplayedClipRect()V

    .line 1595
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->getAdjustedUserImageBounds(Landroid/graphics/Rect;)V

    .line 1598
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v1}, Lcom/oneplus/widget/ImageClipEditor;->reportClipRect(ZLandroid/graphics/Rect;Z)V

    .line 1602
    :cond_0
    invoke-super {p0}, Lcom/oneplus/widget/TransformedImageViewer;->onUserImageMovingStarted()V

    .line 1589
    return-void
.end method

.method protected printVerticesLog(Ljava/lang/CharSequence;[FII)V
    .locals 11
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "vertices"    # [F
    .param p3, "vertexIndex"    # I
    .param p4, "vertexCount"    # I

    .prologue
    const/4 v10, 0x0

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1637
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p3

    .end local p3    # "vertexIndex":I
    .local v2, "vertexIndex":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 1640
    add-int/lit8 p3, v2, 0x1

    .end local v2    # "vertexIndex":I
    .restart local p3    # "vertexIndex":I
    aget v3, p2, v2

    .line 1641
    .local v3, "x":F
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "vertexIndex":I
    .restart local v2    # "vertexIndex":I
    aget v4, p2, p3

    .line 1642
    .local v4, "y":F
    if-lez v1, :cond_0

    .line 1643
    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    :cond_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "(%.3f, %.3f)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1646
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    iget-object v5, p0, Lcom/oneplus/widget/ImageClipEditor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method public removeClipCallback(Lcom/oneplus/widget/ImageClipEditor$ClipCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/widget/ImageClipEditor$ClipCallback;

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1654
    return-void
.end method

.method public setClipRect(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1706
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ImageClipEditor;->setClipRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public setClipRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1719
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1722
    return v2

    .line 1724
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1725
    return v2

    .line 1728
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    .line 1729
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v0, :cond_5

    .line 1730
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1735
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelCenteringDisplayedClipRect()V

    .line 1738
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_6

    .line 1740
    invoke-super {p0, v1, p2}, Lcom/oneplus/widget/TransformedImageViewer;->setFitToViewOnly(ZZ)V

    .line 1741
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    .line 1750
    :goto_2
    return v2

    :cond_4
    move v0, v2

    .line 1728
    goto :goto_0

    .line 1732
    :cond_5
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 1745
    :cond_6
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/ImageClipEditor;->refreshImageBounds(Z)V

    .line 1746
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->invalidate()V

    goto :goto_2
.end method

.method public setEditable(Z)V
    .locals 1
    .param p1, "isEditable"    # Z

    .prologue
    .line 1760
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ImageClipEditor;->setEditable(ZZ)V

    .line 1758
    return-void
.end method

.method public setEditable(ZZ)V
    .locals 1
    .param p1, "isEditable"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1771
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-ne v0, p1, :cond_0

    .line 1772
    return-void

    .line 1773
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    .line 1776
    if-eqz p1, :cond_1

    .line 1778
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Lcom/oneplus/widget/TransformedImageViewer;->setFitToViewOnly(ZZ)V

    .line 1779
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->changeToUserImageBounds()V

    .line 1780
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    .line 1788
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->invalidate()V

    .line 1769
    return-void

    .line 1784
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelCenteringDisplayedClipRect()V

    .line 1785
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->completeMovingDisplayedClipRect()V

    .line 1786
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelUserImageMoving()V

    goto :goto_0
.end method

.method public setFitToViewOnly(ZZ)V
    .locals 1
    .param p1, "fitToViewOnly"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1796
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsEditable:Z

    if-eqz v0, :cond_0

    .line 1797
    return-void

    .line 1798
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/widget/TransformedImageViewer;->setFitToViewOnly(ZZ)V

    .line 1794
    return-void
.end method

.method public setFixedClipRectWidthHeightRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 1808
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ImageClipEditor;->setFixedClipRectWidthHeightRatio(FZ)V

    .line 1806
    return-void
.end method

.method public setFixedClipRectWidthHeightRatio(FZ)V
    .locals 11
    .param p1, "ratio"    # F
    .param p2, "animate"    # Z

    .prologue
    const/16 v7, 0xf

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1820
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->completeMovingDisplayedClipRect()V

    .line 1821
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelUserImageMoving()V

    .line 1824
    iput p1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_FixedClipRectWidthHeightRatio:F

    .line 1827
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_HasClipRect:Z

    if-nez v0, :cond_0

    .line 1828
    return-void

    .line 1831
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelCenteringDisplayedClipRect()V

    .line 1834
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectCentered:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isCenteringDisplayedClipRectNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1836
    :cond_1
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    .line 1837
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->getTargetImageBounds(Landroid/graphics/Rect;)V

    .line 1838
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v9, v0, v10}, Lcom/oneplus/widget/ImageClipEditor;->reportClipRect(ZLandroid/graphics/Rect;Z)V

    .line 1817
    :goto_0
    return-void

    .line 1842
    :cond_2
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->getAdjustedUserImageBounds(Landroid/graphics/Rect;)V

    .line 1843
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ImageClipEditor;->prepareTransformedImageRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;)V

    .line 1844
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipHeight()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    iget-object v8, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/widget/ImageClipEditor;->calculateClipRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;II[FILandroid/graphics/Rect;)V

    .line 1845
    iget-object v4, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    iget-object v8, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    .line 1846
    invoke-virtual {p0, v9}, Lcom/oneplus/widget/ImageClipEditor;->refreshImageBounds(Z)V

    .line 1847
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v9, v0, v10}, Lcom/oneplus/widget/ImageClipEditor;->reportClipRect(ZLandroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method public setMinClipSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1859
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/widget/ImageClipEditor;->setMinClipSize(IIZ)V

    .line 1857
    return-void
.end method

.method public setMinClipSize(IIZ)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "animate"    # Z

    .prologue
    const/16 v7, 0xf

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1872
    invoke-static {v11, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1873
    invoke-static {v11, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1874
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, p2, :cond_2

    :cond_0
    move v9, v10

    .line 1877
    .local v9, "needUpdateClipRect":Z
    :goto_0
    if-eqz v9, :cond_1

    .line 1879
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->completeMovingDisplayedClipRect()V

    .line 1880
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelUserImageMoving()V

    .line 1884
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_MinClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 1885
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_MinClipRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1888
    if-nez v9, :cond_3

    .line 1889
    return-void

    .end local v9    # "needUpdateClipRect":Z
    :cond_2
    move v9, v11

    .line 1874
    goto :goto_0

    .line 1892
    .restart local v9    # "needUpdateClipRect":Z
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelCenteringDisplayedClipRect()V

    .line 1895
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsDisplayedClipRectCentered:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isCenteringDisplayedClipRectNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1896
    :cond_4
    invoke-virtual {p0, p3}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    .line 1869
    :goto_1
    return-void

    .line 1899
    :cond_5
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageClipEditor;->getAdjustedUserImageBounds(Landroid/graphics/Rect;)V

    .line 1900
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ImageClipEditor;->prepareTransformedImageRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;)V

    .line 1901
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TransformedImageRect:Lcom/oneplus/util/TransformedRect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->getMinClipHeight()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    iget-object v8, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/widget/ImageClipEditor;->calculateClipRect(Landroid/graphics/Rect;Lcom/oneplus/util/TransformedRect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;II[FILandroid/graphics/Rect;)V

    .line 1902
    iget-object v4, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ImageClipEditor;->m_OriginalClipRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ClipMode:Lcom/oneplus/widget/ImageClipEditor$ClipMode;

    iget-object v8, p0, Lcom/oneplus/widget/ImageClipEditor;->m_DisplayedClipRectVertices:[F

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/widget/ImageClipEditor;->calculateDisplayedClipRectVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/widget/ImageClipEditor$ClipMode;I[F)V

    .line 1903
    invoke-virtual {p0, v10}, Lcom/oneplus/widget/ImageClipEditor;->refreshImageBounds(Z)V

    .line 1904
    iget-object v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v10, v0, v11}, Lcom/oneplus/widget/ImageClipEditor;->reportClipRect(ZLandroid/graphics/Rect;Z)V

    goto :goto_1
.end method

.method public setPadding(IIIIZ)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "animate"    # Z

    .prologue
    .line 1913
    invoke-super/range {p0 .. p5}, Lcom/oneplus/widget/TransformedImageViewer;->setPadding(IIIIZ)V

    .line 1914
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isCenteringDisplayedClipRectNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsCenteringDisplayedClipRectScheduled:Z

    if-eqz v0, :cond_1

    .line 1911
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    invoke-virtual {p0, p5}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    goto :goto_0
.end method

.method public setPaddingRelative(IIIIZ)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .param p5, "animate"    # Z

    .prologue
    .line 1923
    invoke-super/range {p0 .. p5}, Lcom/oneplus/widget/TransformedImageViewer;->setPaddingRelative(IIIIZ)V

    .line 1924
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->isCenteringDisplayedClipRectNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_IsCenteringDisplayedClipRectScheduled:Z

    if-eqz v0, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return-void

    .line 1925
    :cond_1
    invoke-virtual {p0, p5}, Lcom/oneplus/widget/ImageClipEditor;->moveDisplayedClipRectToCenter(Z)Z

    goto :goto_0
.end method

.method public setShowClippedImageOnly(Z)V
    .locals 1
    .param p1, "clippedOnly"    # Z

    .prologue
    .line 1935
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ImageClipEditor;->setShowClippedImageOnly(ZZ)V

    .line 1933
    return-void
.end method

.method public setShowClippedImageOnly(ZZ)V
    .locals 1
    .param p1, "clippedOnly"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ShowClippedImageOnly:Z

    if-ne v0, p1, :cond_0

    .line 1948
    return-void

    .line 1949
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ShowClippedImageOnly:Z

    .line 1952
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelCenteringDisplayedClipRect()V

    .line 1955
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->completeMovingDisplayedClipRect()V

    .line 1956
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelUserImageMoving()V

    .line 1957
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelImageAutoScrolling()V

    .line 1958
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelImageBoundsAnimation()V

    .line 1961
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/ImageClipEditor;->refreshImageBounds(Z)V

    .line 1944
    return-void
.end method

.method public showClippedImageOnly()Z
    .locals 1

    .prologue
    .line 1971
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageClipEditor;->m_ShowClippedImageOnly:Z

    return v0
.end method

.method public suspendCenteringDisplayedClipRect()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 2016
    new-instance v0, Lcom/oneplus/widget/ImageClipEditor$2;

    const-string/jumbo v1, "SuspendCenteringDisplayedClipRect"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/widget/ImageClipEditor$2;-><init>(Lcom/oneplus/widget/ImageClipEditor;Ljava/lang/String;)V

    .line 2024
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_SuspendCenteringClipRectHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2027
    iget-object v1, p0, Lcom/oneplus/widget/ImageClipEditor;->m_SuspendCenteringClipRectHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2028
    invoke-direct {p0}, Lcom/oneplus/widget/ImageClipEditor;->cancelCenteringDisplayedClipRect()V

    .line 2029
    :cond_0
    return-object v0
.end method
