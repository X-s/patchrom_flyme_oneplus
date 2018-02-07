.class public Lcom/android/setupwizardlib/GlifPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GlifPatternDrawable.java"


# static fields
.field private static final ATTRS_PRIMARY_COLOR:[I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final COLOR_ALPHA:F = 0.8f

.field private static final COLOR_ALPHA_INT:I = 0xcc

.field private static final MAX_CACHED_BITMAP_SCALE:F = 1.5f

.field private static final NUM_PATHS:I = 0x7

.field private static final SCALE_FOCUS_X:F = 0.146f

.field private static final SCALE_FOCUS_Y:F = 0.228f

.field private static final VIEWBOX_HEIGHT:F = 768.0f

.field private static final VIEWBOX_WIDTH:F = 1366.0f

.field private static sBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sPatternLightness:[I

.field private static sPatternPaths:[Landroid/graphics/Path;


# instance fields
.field private mColor:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mTempPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010433

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->ATTRS_PRIMARY_COLOR:[I

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/GlifPatternDrawable;->setColor(I)V

    .line 100
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/android/setupwizardlib/GlifPatternDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "colorPrimary":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 82
    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->ATTRS_PRIMARY_COLOR:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v2, Lcom/android/setupwizardlib/GlifPatternDrawable;

    invoke-direct {v2, v1}, Lcom/android/setupwizardlib/GlifPatternDrawable;-><init>(I)V

    return-object v2
.end method

.method public static invalidatePattern()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    .line 90
    return-void
.end method

.method private renderOnCanvas(Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scale"    # F

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 180
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 182
    iget-object v1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 187
    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    if-nez v1, :cond_0

    .line 188
    const/4 v1, 0x7

    new-array v1, v1, [Landroid/graphics/Path;

    sput-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    .line 190
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternLightness:[I

    .line 192
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 193
    .local v0, "p":Landroid/graphics/Path;
    const v1, 0x4480accd    # 1029.4f

    const v2, 0x43b2c000    # 357.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 194
    const v1, 0x44aac000    # 1366.0f

    const v2, 0x443dc666    # 759.1f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 195
    const v1, 0x44aac000    # 1366.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    const v1, 0x448e3666    # 1137.7f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 199
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 200
    .restart local v0    # "p":Landroid/graphics/Path;
    const v1, 0x448e4333    # 1138.1f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 201
    const v1, -0x3cef3333    # -144.8f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 202
    const v1, 0x43ba599a    # 372.7f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 203
    const/4 v1, 0x0

    const/high16 v2, -0x3bfd0000    # -524.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 204
    const v1, 0x44a15666    # 1290.7f

    const v2, 0x42f33333    # 121.6f

    const v3, 0x44986666    # 1219.2f

    const v4, 0x42246666    # 41.1f

    const v5, 0x44935666    # 1178.7f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 207
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 208
    .restart local v0    # "p":Landroid/graphics/Path;
    const v1, 0x446d7333    # 949.8f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 209
    const v1, 0x42b93333    # 92.6f

    const v2, -0x3cd56666    # -170.6f

    const/high16 v3, 0x43550000    # 213.0f

    const v4, -0x3c23d99a    # -440.3f

    const v5, 0x4386b333    # 269.4f

    const/high16 v6, -0x3bc00000    # -768.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 210
    const v1, 0x44124000    # 585.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    const v1, 0x40066666    # 2.1f

    const v2, 0x443f8000    # 766.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 212
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 214
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 215
    .restart local v0    # "p":Landroid/graphics/Path;
    const v1, 0x43eb8ccd    # 471.1f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 216
    const v1, 0x44302000    # 704.5f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 217
    const v1, 0x448c7333    # 1123.6f

    const v2, 0x440cd333    # 563.3f

    const v3, 0x44806ccd    # 1027.4f

    const v4, 0x4389999a    # 275.2f

    const v5, 0x44560ccd    # 856.2f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 218
    const v1, 0x43ee3333    # 476.4f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    const v1, -0x3f566666    # -5.3f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 222
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 223
    .restart local v0    # "p":Landroid/graphics/Path;
    const v1, 0x43a18ccd    # 323.1f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 224
    const v1, 0x44426000    # 777.5f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    const v1, 0x4425799a    # 661.9f

    const v2, 0x43ae6666    # 348.8f

    const v3, 0x43d5999a    # 427.2f

    const v4, 0x41ab3333    # 21.4f

    const v5, 0x43c8999a    # 401.2f

    const v6, 0x41cb3333    # 25.4f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 226
    const v1, 0x43a18ccd    # 323.1f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 229
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 230
    .restart local v0    # "p":Landroid/graphics/Path;
    const v1, 0x4332715f

    const v2, 0x443fb6db

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 231
    const v1, 0x439a599a    # 308.7f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    const v1, 0x43bed99a    # 381.7f

    const v2, 0x44172666    # 604.6f

    const v3, 0x43f0cccd    # 481.6f

    const v4, 0x43ac2666    # 344.3f

    const v5, 0x440c8ccd    # 562.2f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 233
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 236
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 237
    .restart local v0    # "p":Landroid/graphics/Path;
    const/high16 v1, 0x43120000    # 146.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 238
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 239
    const/4 v1, 0x0

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    const v1, 0x43c5199a    # 394.2f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    const v1, 0x43a3d99a    # 327.7f

    const v2, 0x43eda666    # 475.3f

    const v3, 0x43648000    # 228.5f

    const/high16 v4, 0x43490000    # 201.0f

    const/high16 v5, 0x43120000    # 146.0f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 245
    .end local v0    # "p":Landroid/graphics/Path;
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v7, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternLightness:[I

    aget v2, v2, v7

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 245
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 254
    iget-object v1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 178
    return-void

    .line 190
    nop

    :array_0
    .array-data 4
        0xa
        0x28
        0x33
        0x42
        0x5b
        0x70
        0x82
    .end array-data
.end method


# virtual methods
.method public createBitmapCache(II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "drawableWidth"    # I
    .param p2, "drawableHeight"    # I

    .prologue
    const v9, 0x44aac000    # 1366.0f

    const/high16 v8, 0x44400000    # 768.0f

    .line 159
    int-to-float v7, p1

    div-float v3, v7, v9

    .line 160
    .local v3, "scaleX":F
    int-to-float v7, p2

    div-float v4, v7, v8

    .line 161
    .local v4, "scaleY":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 162
    .local v2, "scale":F
    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 165
    mul-float v7, v9, v2

    float-to-int v6, v7

    .line 166
    .local v6, "scaledWidth":I
    mul-float v7, v8, v2

    float-to-int v5, v7

    .line 172
    .local v5, "scaledHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 169
    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 174
    .local v1, "bitmapCanvas":Landroid/graphics/Canvas;
    invoke-direct {p0, v1, v2}, Lcom/android/setupwizardlib/GlifPatternDrawable;->renderOnCanvas(Landroid/graphics/Canvas;F)V

    .line 175
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 107
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 108
    .local v5, "drawableWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 109
    .local v4, "drawableHeight":I
    const/4 v0, 0x0

    .line 110
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    if-eqz v6, :cond_0

    .line 111
    sget-object v6, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 113
    :cond_0
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 115
    .local v2, "bitmapWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 118
    .local v1, "bitmapHeight":I
    if-le v5, v2, :cond_3

    .line 119
    int-to-float v6, v2

    const v7, 0x45001000    # 2049.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 120
    const/4 v0, 0x0

    .line 127
    .end local v1    # "bitmapHeight":I
    .end local v2    # "bitmapWidth":I
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 129
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 131
    invoke-virtual {p0, v5, v4}, Lcom/android/setupwizardlib/GlifPatternDrawable;->createBitmapCache(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    .line 135
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 138
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 141
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/setupwizardlib/GlifPatternDrawable;->scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 142
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_4

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v6

    .line 142
    if-eqz v6, :cond_4

    .line 144
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 145
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 105
    return-void

    .line 121
    .restart local v1    # "bitmapHeight":I
    .restart local v2    # "bitmapWidth":I
    :cond_3
    if-le v4, v1, :cond_1

    .line 122
    int-to-float v6, v1

    const/high16 v7, 0x44900000    # 1152.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 123
    const/4 v0, 0x0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 148
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapHeight":I
    .end local v2    # "bitmapWidth":I
    :cond_4
    const/high16 v6, -0x1000000

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 149
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    iget v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1
.end method

.method public getColor()I
    .locals 4

    .prologue
    .line 315
    iget v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "drawableBounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 259
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 260
    .local v1, "bitmapWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 261
    .local v0, "bitmapHeight":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    div-float v2, v4, v5

    .line 262
    .local v2, "scaleX":F
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    div-float v3, v4, v5

    .line 265
    .local v3, "scaleY":F
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 266
    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    .line 269
    div-float v4, v3, v2

    int-to-float v5, v1

    const v6, 0x3e158106    # 0.146f

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v8, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 273
    div-float v4, v2, v3

    int-to-float v5, v0

    const v6, 0x3e6978d5    # 0.228f

    mul-float/2addr v5, v6

    invoke-virtual {p1, v8, v4, v7, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 278
    return-void
.end method

.method public setColor(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    const v9, 0x3f4ccccd    # 0.8f

    const v8, 0x3e4ccccc    # 0.19999999f

    const/4 v7, 0x0

    .line 297
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 298
    .local v2, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 299
    .local v1, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 300
    .local v0, "b":I
    const/16 v3, 0xcc

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    .line 301
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v4, 0x14

    new-array v4, v4, [F

    .line 302
    const/4 v5, 0x0

    aput v7, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    const/4 v5, 0x2

    aput v7, v4, v5

    const/4 v5, 0x3

    aput v8, v4, v5

    int-to-float v5, v2

    mul-float/2addr v5, v9

    const/4 v6, 0x4

    aput v5, v4, v6

    .line 303
    const/4 v5, 0x5

    aput v7, v4, v5

    const/4 v5, 0x6

    aput v7, v4, v5

    const/4 v5, 0x7

    aput v7, v4, v5

    const/16 v5, 0x8

    aput v8, v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v9

    const/16 v6, 0x9

    aput v5, v4, v6

    .line 304
    const/16 v5, 0xa

    aput v7, v4, v5

    const/16 v5, 0xb

    aput v7, v4, v5

    const/16 v5, 0xc

    aput v7, v4, v5

    const/16 v5, 0xd

    aput v8, v4, v5

    int-to-float v5, v0

    mul-float/2addr v5, v9

    const/16 v6, 0xe

    aput v5, v4, v6

    .line 305
    const/16 v5, 0xf

    aput v7, v4, v5

    const/16 v5, 0x10

    aput v7, v4, v5

    const/16 v5, 0x11

    aput v7, v4, v5

    const/16 v5, 0x12

    aput v7, v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    const/16 v6, 0x13

    aput v5, v4, v6

    .line 301
    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v3, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 307
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->invalidateSelf()V

    .line 296
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 283
    return-void
.end method
