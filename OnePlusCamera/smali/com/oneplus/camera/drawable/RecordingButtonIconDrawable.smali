.class public Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RecordingButtonIconDrawable.java"


# static fields
.field public static final DURATION_ANIMATION:J = 0x12cL

.field private static final INTERPOLATOR_END:Landroid/view/animation/Interpolator;

.field private static final INTERPOLATOR_START:Landroid/view/animation/Interpolator;

.field private static final STATE_READY:I = 0x0

.field private static final STATE_RECORDING:I = 0x2

.field private static final STATE_STARTING:I = 0x1

.field private static final STATE_STOPPING:I = 0x3


# instance fields
.field private m_Alpha:I

.field private m_AnimationDuration:J

.field private final m_AnimationRunnable:Ljava/lang/Runnable;

.field private m_AnimationStartTime:J

.field private m_BufferBitmap:Landroid/graphics/Bitmap;

.field private m_BufferBitmapPaint:Landroid/graphics/Paint;

.field private m_CenterDrawable:Landroid/graphics/drawable/Drawable;

.field private m_CurrentRadius:F

.field private m_OriginalRadius:F

.field private final m_Paint:Landroid/graphics/Paint;

.field private m_State:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f99999a    # 1.2f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->INTERPOLATOR_START:Landroid/view/animation/Interpolator;

    .line 64
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->INTERPOLATOR_END:Landroid/view/animation/Interpolator;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const v0, 0x7f02000a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "radius"    # F

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    const/16 v0, 0xff

    iput v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Alpha:I

    .line 42
    new-instance v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable$1;-><init>(Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;)V

    iput-object v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    .line 103
    iput p3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    .line 104
    iput p3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CurrentRadius:F

    .line 105
    iget-object v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "centerDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    const/16 v1, 0xff

    iput v1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Alpha:I

    .line 42
    new-instance v1, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable$1;-><init>(Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;)V

    iput-object v1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    .line 87
    iget v1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    iput v1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CurrentRadius:F

    .line 88
    iput-object p2, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Paint:Landroid/graphics/Paint;

    const v2, 0x7f06000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->animate()V

    return-void
.end method

.method private animate()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1e

    .line 114
    iget v3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    packed-switch v3, :pswitch_data_0

    .line 154
    :goto_0
    :pswitch_0
    return-void

    .line 118
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 119
    .local v4, "time":J
    iget-wide v6, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationStartTime:J

    sub-long v0, v4, v6

    .line 120
    .local v0, "duration":J
    iget-wide v6, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationDuration:J

    cmp-long v3, v0, v6

    if-gez v3, :cond_0

    .line 122
    long-to-float v3, v0

    iget-wide v6, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationDuration:J

    long-to-float v6, v6

    div-float v2, v3, v6

    .line 123
    .local v2, "progress":F
    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v6, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->INTERPOLATOR_START:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float/2addr v3, v6

    iget v6, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CurrentRadius:F

    .line 124
    iget-object v3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationRunnable:Ljava/lang/Runnable;

    add-long v6, v4, v8

    invoke-virtual {p0, v3, v6, v7}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 131
    .end local v2    # "progress":F
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->invalidateSelf()V

    goto :goto_0

    .line 128
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CurrentRadius:F

    .line 129
    const/4 v3, 0x2

    iput v3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    goto :goto_1

    .line 137
    .end local v0    # "duration":J
    .end local v4    # "time":J
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 138
    .restart local v4    # "time":J
    iget-wide v6, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationStartTime:J

    sub-long v0, v4, v6

    .line 139
    .restart local v0    # "duration":J
    iget-wide v6, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationDuration:J

    cmp-long v3, v0, v6

    if-gez v3, :cond_1

    .line 141
    long-to-float v3, v0

    iget-wide v6, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationDuration:J

    long-to-float v6, v6

    div-float v2, v3, v6

    .line 142
    .restart local v2    # "progress":F
    sget-object v3, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->INTERPOLATOR_END:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget v6, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CurrentRadius:F

    .line 143
    iget-object v3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationRunnable:Ljava/lang/Runnable;

    add-long v6, v4, v8

    invoke-virtual {p0, v3, v6, v7}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 150
    .end local v2    # "progress":F
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->invalidateSelf()V

    goto :goto_0

    .line 147
    :cond_1
    iget v3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    iput v3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CurrentRadius:F

    .line 148
    const/4 v3, 0x0

    iput v3, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    goto :goto_2

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v9, v9, v18

    float-to-double v0, v9

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v11, v0

    .line 163
    .local v11, "bufferWidth":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-eq v9, v11, :cond_1

    .line 164
    :cond_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v11, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmap:Landroid/graphics/Bitmap;

    .line 165
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmapPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_2

    .line 167
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmapPaint:Landroid/graphics/Paint;

    .line 168
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmapPaint:Landroid/graphics/Paint;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmapPaint:Landroid/graphics/Paint;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmapPaint:Landroid/graphics/Paint;

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CurrentRadius:F

    move/from16 v18, v0

    sub-float v5, v9, v18

    .line 175
    .local v5, "left":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CurrentRadius:F

    move/from16 v18, v0

    sub-float v6, v9, v18

    .line 176
    .local v6, "top":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CurrentRadius:F

    move/from16 v18, v0

    add-float v7, v9, v18

    .line 177
    .local v7, "right":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CurrentRadius:F

    move/from16 v18, v0

    add-float v8, v9, v18

    .line 178
    .local v8, "bottom":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmap:Landroid/graphics/Bitmap;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 179
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 180
    .local v4, "bufferCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    .line 183
    .local v14, "centerX":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    .line 184
    .local v15, "centerY":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 185
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    .line 186
    .local v16, "height":I
    div-int/lit8 v9, v17, 0x2

    int-to-float v9, v9

    sub-float v9, v14, v9

    float-to-int v12, v9

    .line 187
    .local v12, "cdLeft":I
    div-int/lit8 v9, v16, 0x2

    int-to-float v9, v9

    sub-float v9, v15, v9

    float-to-int v13, v9

    .line 188
    .local v13, "cdTop":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CenterDrawable:Landroid/graphics/drawable/Drawable;

    add-int v18, v12, v17

    add-int v19, v13, v16

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v12, v13, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_CenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    .end local v12    # "cdLeft":I
    .end local v13    # "cdTop":I
    .end local v14    # "centerX":F
    .end local v15    # "centerY":F
    .end local v16    # "height":I
    .end local v17    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 195
    .local v10, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v14, v9

    .line 196
    .restart local v14    # "centerX":F
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v15, v9

    .line 197
    .restart local v15    # "centerY":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Alpha:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    move/from16 v18, v0

    sub-float v18, v14, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_BufferBitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_OriginalRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Alpha:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_Alpha:I

    .line 231
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 237
    return-void
.end method

.method public startVideoCaptrueAnimation()V
    .locals 2

    .prologue
    .line 245
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->startVideoCaptrueAnimation(J)V

    .line 246
    return-void
.end method

.method public startVideoCaptrueAnimation(J)V
    .locals 5
    .param p1, "animationDuration"    # J

    .prologue
    const/4 v4, 0x1

    .line 255
    iget v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    if-eq v0, v4, :cond_1

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationStartTime:J

    .line 258
    iput-wide p1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationDuration:J

    .line 259
    iget v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationStartTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 261
    :cond_0
    iput v4, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    .line 263
    :cond_1
    return-void
.end method

.method public stopVideoCaptrueAnimation()V
    .locals 2

    .prologue
    .line 271
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->stopVideoCaptrueAnimation(J)V

    .line 272
    return-void
.end method

.method public stopVideoCaptrueAnimation(J)V
    .locals 5
    .param p1, "animationDuration"    # J

    .prologue
    const/4 v4, 0x3

    .line 281
    iget v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    if-eq v0, v4, :cond_1

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationStartTime:J

    .line 284
    iput-wide p1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationDuration:J

    .line 285
    iget v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_AnimationStartTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 287
    :cond_0
    iput v4, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->m_State:I

    .line 289
    :cond_1
    return-void
.end method
