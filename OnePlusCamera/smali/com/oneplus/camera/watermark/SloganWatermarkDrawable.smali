.class public Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SloganWatermarkDrawable.java"


# static fields
.field private static final DRAWABLE_SPACING:I = 0x14

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_BaseLogoDrawableHeight:I

.field private m_BaseLogoDrawableMarginLeft:I

.field private m_BaseLogoDrawableMarginRight:I

.field private m_BaseLogoDrawableWidth:I

.field private m_BaseSubtitleTextHeight:I

.field private m_BaseSubtitleTextSize:F

.field private m_BaseTitleMarginTop:I

.field private m_BaseTitleTextHeight:I

.field private m_BaseTitleTextSize:F

.field private m_BaseWatermarkHeight:I

.field private m_HasDualLens:Z

.field private m_LogoDrawable:Lcom/oneplus/camera/drawable/ShadowDrawable;

.field private m_Resources:Landroid/content/res/Resources;

.field private m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

.field private m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

.field private m_Subtitle:Ljava/lang/String;

.field private m_Title:Ljava/lang/String;

.field private m_UserSubtitle:Ljava/lang/String;

.field private m_UserSubtitlePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x7f0c0036

    const/16 v6, 0x14

    const/4 v5, 0x0

    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    iput-boolean v5, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_HasDualLens:Z

    .line 55
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    .line 57
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f080118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseWatermarkHeight:I

    .line 58
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f080119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseLogoDrawableWidth:I

    .line 59
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f08011a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseLogoDrawableHeight:I

    .line 60
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f08011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseLogoDrawableMarginLeft:I

    .line 61
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f08011c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseLogoDrawableMarginRight:I

    .line 62
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f08011d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseTitleMarginTop:I

    .line 63
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f08011f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseTitleTextHeight:I

    .line 64
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f080120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseTitleTextSize:F

    .line 65
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f080121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseSubtitleTextHeight:I

    .line 66
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    const v3, 0x7f080122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseSubtitleTextSize:F

    .line 67
    const v2, 0x7f0b009e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Title:Ljava/lang/String;

    .line 68
    const v2, 0x7f0b009f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Subtitle:Ljava/lang/String;

    .line 69
    const v2, 0x7f0b00a0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_UserSubtitlePrefix:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "watermark_font.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 73
    .local v1, "typeface":Landroid/graphics/Typeface;
    new-instance v2, Lcom/oneplus/camera/drawable/ShadowDrawable;

    const v3, 0x7f02012a

    const v4, 0x7f0c0034

    invoke-direct {v2, v0, v3, v4}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_LogoDrawable:Lcom/oneplus/camera/drawable/ShadowDrawable;

    .line 74
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_LogoDrawable:Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {v2, v5, v5, v6, v6}, Lcom/oneplus/camera/drawable/ShadowDrawable;->setPaddings(IIII)V

    .line 75
    new-instance v2, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v2}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    .line 76
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    iget-object v3, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v0, v7}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 78
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    new-instance v2, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v2}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    iput-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    .line 80
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v0, v7}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 81
    iget-object v2, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;F)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "ratio"    # F

    .prologue
    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 213
    .local v5, "bounds":Landroid/graphics/Rect;
    sget-object v30, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "draw() - Scale ratio: "

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    const-string/jumbo v33, ", bounds: "

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->needSubTitle()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f08011d

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseTitleMarginTop:I

    .line 222
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseWatermarkHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, p2

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v29

    .line 223
    .local v29, "watermarkHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseLogoDrawableWidth:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, p2

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 224
    .local v13, "logoDrawableWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseLogoDrawableHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, p2

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 225
    .local v7, "logoDrawableHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseLogoDrawableMarginLeft:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, p2

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 226
    .local v9, "logoDrawableMarginLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseLogoDrawableMarginRight:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, p2

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 227
    .local v10, "logoDrawableMarginRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseTitleMarginTop:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, p2

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v26

    .line 228
    .local v26, "titleTextMarginTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseTitleTextHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, p2

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v25

    .line 229
    .local v25, "titleTextHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseSubtitleTextHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, p2

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 230
    .local v18, "subtitleTextHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseTitleTextSize:F

    move/from16 v30, v0

    mul-float v27, v30, p2

    .line 231
    .local v27, "titleTextSize":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseSubtitleTextSize:F

    move/from16 v30, v0

    mul-float v19, v30, p2

    .line 234
    .local v19, "subtitleTextSize":F
    move v8, v9

    .line 235
    .local v8, "logoDrawableLeft":I
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v31, v29, v7

    div-int/lit8 v31, v31, 0x2

    add-int v12, v30, v31

    .line 236
    .local v12, "logoDrawableTop":I
    add-int v11, v9, v13

    .line 237
    .local v11, "logoDrawableRight":I
    add-int v6, v12, v7

    .line 238
    .local v6, "logoDrawableBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_LogoDrawable:Lcom/oneplus/camera/drawable/ShadowDrawable;

    move-object/from16 v30, v0

    add-int/lit8 v31, v11, 0x14

    add-int/lit8 v32, v6, 0x14

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v9, v12, v1, v2}, Lcom/oneplus/camera/drawable/ShadowDrawable;->setBounds(IIII)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_LogoDrawable:Lcom/oneplus/camera/drawable/ShadowDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/drawable/ShadowDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextSize(F)V

    .line 243
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 244
    .local v21, "textBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->getTextBounds(Landroid/graphics/Rect;)V

    .line 245
    add-int v23, v11, v10

    .line 246
    .local v23, "titleLeft":I
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v28, v30, v26

    .line 247
    .local v28, "titleTop":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v30

    add-int v24, v23, v30

    .line 248
    .local v24, "titleRight":I
    add-int v22, v28, v25

    .line 249
    .local v22, "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/drawable/ShadowTextDrawable;->setBounds(IIII)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->needSubTitle()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_UserSubtitle:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 257
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_UserSubtitlePrefix:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_UserSubtitle:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 260
    .local v17, "subtitleText":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextSize(F)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->getTextBounds(Landroid/graphics/Rect;)V

    .line 263
    move/from16 v15, v23

    .line 264
    .local v15, "subtitleLeft":I
    move/from16 v20, v22

    .line 265
    .local v20, "subtitleTop":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v30

    add-int v16, v23, v30

    .line 266
    .local v16, "subtitleRight":I
    add-int v14, v22, v18

    .line 267
    .local v14, "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/oneplus/drawable/ShadowTextDrawable;->setBounds(IIII)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    .end local v14    # "subtitleBottom":I
    .end local v15    # "subtitleLeft":I
    .end local v16    # "subtitleRight":I
    .end local v17    # "subtitleText":Ljava/lang/String;
    .end local v20    # "subtitleTop":I
    :cond_0
    return-void

    .line 219
    .end local v6    # "logoDrawableBottom":I
    .end local v7    # "logoDrawableHeight":I
    .end local v8    # "logoDrawableLeft":I
    .end local v9    # "logoDrawableMarginLeft":I
    .end local v10    # "logoDrawableMarginRight":I
    .end local v11    # "logoDrawableRight":I
    .end local v12    # "logoDrawableTop":I
    .end local v13    # "logoDrawableWidth":I
    .end local v18    # "subtitleTextHeight":I
    .end local v19    # "subtitleTextSize":F
    .end local v21    # "textBounds":Landroid/graphics/Rect;
    .end local v22    # "titleBottom":I
    .end local v23    # "titleLeft":I
    .end local v24    # "titleRight":I
    .end local v25    # "titleTextHeight":I
    .end local v26    # "titleTextMarginTop":I
    .end local v27    # "titleTextSize":F
    .end local v28    # "titleTop":I
    .end local v29    # "watermarkHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Resources:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f08011e

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseTitleMarginTop:I

    goto/16 :goto_0

    .line 259
    .restart local v6    # "logoDrawableBottom":I
    .restart local v7    # "logoDrawableHeight":I
    .restart local v8    # "logoDrawableLeft":I
    .restart local v9    # "logoDrawableMarginLeft":I
    .restart local v10    # "logoDrawableMarginRight":I
    .restart local v11    # "logoDrawableRight":I
    .restart local v12    # "logoDrawableTop":I
    .restart local v13    # "logoDrawableWidth":I
    .restart local v18    # "subtitleTextHeight":I
    .restart local v19    # "subtitleTextSize":F
    .restart local v21    # "textBounds":Landroid/graphics/Rect;
    .restart local v22    # "titleBottom":I
    .restart local v23    # "titleLeft":I
    .restart local v24    # "titleRight":I
    .restart local v25    # "titleTextHeight":I
    .restart local v26    # "titleTextMarginTop":I
    .restart local v27    # "titleTextSize":F
    .restart local v28    # "titleTop":I
    .restart local v29    # "watermarkHeight":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Subtitle:Ljava/lang/String;

    move-object/from16 v17, v0

    .restart local v17    # "subtitleText":Ljava/lang/String;
    goto :goto_1
.end method

.method private needSubTitle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 297
    iget-boolean v1, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_HasDualLens:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_UserSubtitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 93
    if-nez p1, :cond_0

    .line 94
    return v7

    .line 97
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v2, v5

    .line 99
    .local v2, "shortSide":F
    const/high16 v5, 0x44870000    # 1080.0f

    div-float v1, v2, v5

    .line 100
    .local v1, "ratio":F
    iget v5, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseWatermarkHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 101
    .local v4, "watermarkHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v3, v5, v4

    .line 102
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0, v7, v3, v5, v6}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setBounds(IIII)V

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->draw(Landroid/graphics/Canvas;F)V

    .line 106
    const/4 v5, 0x1

    return v5
.end method

.method public calculateWatermarkBounds(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "containerWidth"    # I
    .param p2, "containerHeight"    # I
    .param p3, "output"    # Landroid/graphics/Rect;

    .prologue
    .line 120
    if-nez p3, :cond_0

    .line 121
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "output":Landroid/graphics/Rect;
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 124
    .restart local p3    # "output":Landroid/graphics/Rect;
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v1, v3

    .line 125
    .local v1, "shortSide":F
    const/high16 v3, 0x44870000    # 1080.0f

    div-float v0, v1, v3

    .line 126
    .local v0, "ratio":F
    iget v3, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseWatermarkHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v2, v3, 0x2

    .line 127
    .local v2, "watermarkHeight":I
    sub-int v3, p2, v2

    const/4 v4, 0x0

    invoke-virtual {p3, v4, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 130
    return-object p3
.end method

.method public createWatermarkBitmap(II)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "containerWidth"    # I
    .param p2, "containerHeight"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 143
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 144
    :cond_0
    return-object v8

    .line 147
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v4, v5

    .line 148
    .local v4, "shortSide":F
    const/high16 v5, 0x44870000    # 1080.0f

    div-float v3, v4, v5

    .line 149
    .local v3, "ratio":F
    iget v5, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseWatermarkHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v1, v5, 0x2

    .line 150
    .local v1, "height":I
    if-gtz v1, :cond_2

    .line 151
    return-object v8

    .line 154
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 155
    .local v2, "image":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, p1, v1}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setBounds(IIII)V

    .line 157
    invoke-direct {p0, v0, v3}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->draw(Landroid/graphics/Canvas;F)V

    .line 160
    return-object v2
.end method

.method public createWatermarkOverlay(II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "overlayWidth"    # I
    .param p2, "overlayHeight"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 173
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 174
    :cond_0
    return-object v7

    .line 177
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v4, v5

    .line 178
    .local v4, "shortSide":F
    const/high16 v5, 0x44870000    # 1080.0f

    div-float v3, v4, v5

    .line 179
    .local v3, "ratio":F
    iget v5, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_BaseWatermarkHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 180
    .local v1, "height":I
    if-gtz v1, :cond_2

    .line 181
    return-object v7

    .line 184
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 185
    .local v2, "image":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 186
    .local v0, "canvas":Landroid/graphics/Canvas;
    sub-int v5, p2, v1

    invoke-virtual {p0, v6, v5, p1, p2}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setBounds(IIII)V

    .line 187
    invoke-direct {p0, v0, v3}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->draw(Landroid/graphics/Canvas;F)V

    .line 190
    return-object v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 200
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44870000    # 1080.0f

    div-float v1, v2, v3

    .line 203
    .local v1, "ratio":F
    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->draw(Landroid/graphics/Canvas;F)V

    .line 196
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public getSubtitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_UserSubtitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_UserSubtitle:Ljava/lang/String;

    return-object v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_Subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_LogoDrawable:Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/drawable/ShadowDrawable;->setAlpha(I)V

    .line 306
    iget-object v0, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setAlpha(I)V

    .line 307
    iget-object v0, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setAlpha(I)V

    .line 308
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->invalidateSelf()V

    .line 303
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_LogoDrawable:Lcom/oneplus/camera/drawable/ShadowDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/camera/drawable/ShadowDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 317
    iget-object v0, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowTitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 318
    iget-object v0, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_ShadowSubtitleDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 319
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->invalidateSelf()V

    .line 314
    return-void
.end method

.method public setSubtitleText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 326
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    iput-object v1, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_UserSubtitle:Ljava/lang/String;

    .line 330
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->invalidateSelf()V

    .line 324
    return-void

    .line 329
    :cond_1
    iput-object p1, p0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->m_UserSubtitle:Ljava/lang/String;

    goto :goto_0
.end method
