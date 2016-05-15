.class public final Landroid/content/theme/OpConvertIcon;
.super Ljava/lang/Object;
.source "OpConvertIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/theme/OpConvertIcon$IconBgTpye;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLE:Z = false

.field private static final DEBUG_NORMAL:Z = false

.field private static final IPHONE_STYLE_BG_NAME:Ljava/lang/String; = "iphone_style_bg.png"

.field private static final IPHONE_STYLE_FG_NAME:Ljava/lang/String; = "iphone_style_fg.png"

.field private static final NEW_IPHONE_STYLE_BG_NAME:Ljava/lang/String; = "new_iphone_style_bg.png"

.field private static final NEW_IPHONE_STYLE_MASK:Ljava/lang/String; = "new_iphone_style_mask.png"

.field private static final TAG:Ljava/lang/String; = "OpConvertIcon"

.field private static drawForeground:Z

.field private static final drawabledirs:[Ljava/lang/String;

.field private static mIconBackground:Landroid/graphics/drawable/Drawable;

.field private static mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

.field private static mIconForeground:Landroid/graphics/drawable/Drawable;

.field public static mMaskBitmap:Landroid/graphics/Bitmap;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sCoverBackgroundPic:Ljava/lang/String;

.field private static sIconHeight:I

.field private static sIconSize:I

.field private static sIconWidth:I

.field private static sMaskAppearancePic:Ljava/lang/String;

.field private static sMaskBackgroundPic:Ljava/lang/String;

.field private static sMaskForegroundPic:Ljava/lang/String;

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static sThemeParamScale:I

.field private static sThemeParamXOffset:I

.field private static sThemeParamYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 50
    const/16 v0, 0x80

    sput v0, Landroid/content/theme/OpConvertIcon;->sThemeParamScale:I

    .line 51
    sput v2, Landroid/content/theme/OpConvertIcon;->sThemeParamXOffset:I

    .line 52
    sput v2, Landroid/content/theme/OpConvertIcon;->sThemeParamYOffset:I

    .line 54
    sput v1, Landroid/content/theme/OpConvertIcon;->sIconSize:I

    .line 55
    sput v1, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    .line 56
    sput v1, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    .line 58
    sput-object v3, Landroid/content/theme/OpConvertIcon;->sMaskAppearancePic:Ljava/lang/String;

    .line 59
    sput-object v3, Landroid/content/theme/OpConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    .line 60
    sput-object v3, Landroid/content/theme/OpConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    .line 61
    sput-object v3, Landroid/content/theme/OpConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Landroid/content/theme/OpConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 65
    sput-object v3, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 66
    sput-object v3, Landroid/content/theme/OpConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    .line 67
    sput-boolean v2, Landroid/content/theme/OpConvertIcon;->drawForeground:Z

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "res/drawable-hdpi/"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "res/drawable-xhdpi/"

    aput-object v2, v0, v1

    const-string/jumbo v1, "res/drawable-xxhdpi/"

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/theme/OpConvertIcon;->drawabledirs:[Ljava/lang/String;

    .line 79
    sget-object v0, Landroid/content/theme/OpConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 91
    sput-object v3, Landroid/content/theme/OpConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 97
    sget-object v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;->MASK:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sput-object v0, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "isThirdPart"    # Z

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v5, 0x0

    .line 188
    :goto_0
    return-object v5

    .line 104
    :cond_0
    sget-object v18, Landroid/content/theme/OpConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v18

    .line 105
    :try_start_0
    sget v17, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 106
    invoke-static/range {p1 .. p1}, Landroid/content/theme/OpConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 109
    :cond_1
    sget v16, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    .line 110
    .local v16, "width":I
    sget v8, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    .line 111
    .local v8, "height":I
    const/4 v10, 0x0

    .line 112
    .local v10, "originalBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 114
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v11, v0

    .line 115
    .local v11, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 116
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 141
    .end local v11    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    sget v17, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    if-gtz v17, :cond_6

    .line 142
    const/4 v5, 0x0

    monitor-exit v18

    goto :goto_0

    .line 189
    .end local v8    # "height":I
    .end local v10    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "width":I
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 117
    .restart local v8    # "height":I
    .restart local v10    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "width":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 120
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 121
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 128
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 129
    move-object v10, v5

    goto :goto_1

    .line 132
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v17

    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 137
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 133
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 144
    :cond_6
    sget v17, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sget v19, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 146
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    sget-object v7, Landroid/content/theme/OpConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 147
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    if-eqz p2, :cond_a

    .line 150
    sget-object v17, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sget-object v19, Landroid/content/theme/OpConvertIcon$IconBgTpye;->COVER:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v10, v1, v7}, Landroid/content/theme/OpConvertIcon;->coverBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 152
    sget-boolean v17, Landroid/content/theme/OpConvertIcon;->drawForeground:Z

    if-eqz v17, :cond_7

    .line 153
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/content/theme/OpConvertIcon;->drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 188
    :cond_7
    :goto_3
    monitor-exit v18

    goto/16 :goto_0

    .line 155
    :cond_8
    sget-object v17, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sget-object v19, Landroid/content/theme/OpConvertIcon$IconBgTpye;->MASK:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v10, v1, v7}, Landroid/content/theme/OpConvertIcon;->maskBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 157
    sget-boolean v17, Landroid/content/theme/OpConvertIcon;->drawForeground:Z

    if-eqz v17, :cond_7

    .line 158
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/content/theme/OpConvertIcon;->drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 161
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v10, v1, v7}, Landroid/content/theme/OpConvertIcon;->cutAndScaleBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 165
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 166
    .local v14, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 167
    .local v13, "sourceHeight":I
    if-lez v14, :cond_b

    if-lez v13, :cond_b

    .line 168
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v19, v0

    div-float v12, v17, v19

    .line 169
    .local v12, "ratio":F
    if-le v14, v13, :cond_c

    .line 171
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v8, v0

    .line 178
    .end local v12    # "ratio":F
    :cond_b
    :goto_4
    sget v17, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sub-int v17, v17, v16

    div-int/lit8 v9, v17, 0x2

    .line 179
    .local v9, "left":I
    sget v17, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    sub-int v17, v17, v8

    div-int/lit8 v15, v17, 0x2

    .line 181
    .local v15, "top":I
    sget-object v17, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    add-int v17, v9, v16

    add-int v19, v15, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v9, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    sget-object v17, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 185
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 172
    .end local v9    # "left":I
    .end local v15    # "top":I
    .restart local v12    # "ratio":F
    :cond_c
    if-le v13, v14, :cond_b

    .line 174
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    goto :goto_4
.end method

.method static coverBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 8
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 222
    if-eqz p1, :cond_3

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 227
    :cond_0
    sget-object v4, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 228
    sget-object v4, Landroid/content/theme/OpConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    invoke-static {p2, v4}, Landroid/content/theme/OpThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 231
    :cond_1
    sget-object v4, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 232
    sget-object v4, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    sget-object v5, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 233
    sget-object v4, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget v5, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sget v6, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    sget-object v4, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    sget-object v4, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 237
    :cond_2
    invoke-static {}, Landroid/content/theme/OpMaskBitmapUtilities;->getInstance()Landroid/content/theme/OpMaskBitmapUtilities;

    move-result-object v1

    .line 238
    .local v1, "mbu":Landroid/content/theme/OpMaskBitmapUtilities;
    invoke-virtual {v1, p1}, Landroid/content/theme/OpMaskBitmapUtilities;->cutAndScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 239
    .local v2, "scale":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 240
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 241
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 242
    .local v0, "h":I
    sget v4, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    sget v5, Landroid/content/theme/OpConvertIcon;->sThemeParamXOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    sget v6, Landroid/content/theme/OpConvertIcon;->sThemeParamYOffset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p3, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    .end local v0    # "h":I
    .end local v1    # "mbu":Landroid/content/theme/OpMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    .end local v3    # "w":I
    :cond_3
    :goto_0
    return-void

    .line 245
    .restart local v1    # "mbu":Landroid/content/theme/OpMaskBitmapUtilities;
    .restart local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_4
    const-string v4, "OpConvertIcon"

    const-string v5, "coverBitmap -- scale == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static coverBitmapNoCut(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 12
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 193
    if-eqz p1, :cond_2

    .line 194
    sget-object v9, Landroid/content/theme/OpConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    invoke-static {p2, v9}, Landroid/content/theme/OpThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 196
    .local v4, "mIconBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 197
    sget-object v9, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 198
    sget v9, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sget v10, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    invoke-virtual {v4, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    sget-object v9, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 203
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 204
    .local v0, "f":D
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v10, 0x43c80000    # 400.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    sget-boolean v9, Landroid/content/theme/OpThirdPartUtil;->mIsDefaultTheme:Z

    if-eqz v9, :cond_1

    .line 205
    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    .line 207
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 208
    .local v6, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 210
    .local v5, "sourceHeight":I
    int-to-double v10, v6

    mul-double/2addr v10, v0

    double-to-int v8, v10

    .line 211
    .local v8, "width":I
    int-to-double v10, v5

    mul-double/2addr v10, v0

    double-to-int v2, v10

    .line 213
    .local v2, "height":I
    sget v9, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sub-int/2addr v9, v8

    div-int/lit8 v3, v9, 0x2

    .line 214
    .local v3, "l":I
    sget v9, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    sub-int/2addr v9, v2

    div-int/lit8 v7, v9, 0x2

    .line 215
    .local v7, "t":I
    add-int v9, v3, v8

    add-int v10, v7, v2

    invoke-virtual {p0, v3, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 216
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 218
    .end local v0    # "f":D
    .end local v2    # "height":I
    .end local v3    # "l":I
    .end local v4    # "mIconBackground":Landroid/graphics/drawable/Drawable;
    .end local v5    # "sourceHeight":I
    .end local v6    # "sourceWidth":I
    .end local v7    # "t":I
    .end local v8    # "width":I
    :cond_2
    return-void
.end method

.method static cutAndScaleBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 7
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 252
    if-eqz p1, :cond_1

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    if-nez v4, :cond_0

    .line 255
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 257
    :cond_0
    invoke-static {}, Landroid/content/theme/OpMaskBitmapUtilities;->getInstance()Landroid/content/theme/OpMaskBitmapUtilities;

    move-result-object v1

    .line 258
    .local v1, "mbu":Landroid/content/theme/OpMaskBitmapUtilities;
    invoke-virtual {v1, p1}, Landroid/content/theme/OpMaskBitmapUtilities;->cutAndScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 259
    .local v2, "scale":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 260
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 261
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 262
    .local v0, "h":I
    sget v4, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p3, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    .end local v0    # "h":I
    .end local v1    # "mbu":Landroid/content/theme/OpMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    .end local v3    # "w":I
    :cond_1
    :goto_0
    return-void

    .line 264
    .restart local v1    # "mbu":Landroid/content/theme/OpMaskBitmapUtilities;
    .restart local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_2
    const-string v4, "OpConvertIcon"

    const-string v5, "cutAndScaleBitmap -- scale == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 329
    sget-object v0, Landroid/content/theme/OpConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 330
    sget-object v0, Landroid/content/theme/OpConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/content/theme/OpThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Landroid/content/theme/OpConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    .line 332
    :cond_0
    sget-object v0, Landroid/content/theme/OpConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 333
    sget-object v0, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/content/theme/OpConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 334
    sget-object v0, Landroid/content/theme/OpConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    sget v1, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sget v2, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 335
    sget-object v0, Landroid/content/theme/OpConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    sget-object v0, Landroid/content/theme/OpConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 338
    :cond_1
    return-void
.end method

.method public static getIconBgTpye()Landroid/content/theme/OpConvertIcon$IconBgTpye;
    .locals 5

    .prologue
    .line 406
    const-string v1, "/data/theme/"

    .line 409
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.oneplus.launcher"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 410
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    const-string v3, "iphone_style_bg.png"

    invoke-static {v2, v3}, Landroid/content/theme/OpConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    const-string v3, "iphone_style_fg.png"

    invoke-static {v2, v3}, Landroid/content/theme/OpConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    const/4 v3, 0x1

    sput-boolean v3, Landroid/content/theme/OpConvertIcon;->drawForeground:Z

    .line 414
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 415
    sget-object v3, Landroid/content/theme/OpConvertIcon$IconBgTpye;->COVER:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sput-object v3, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    .line 432
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_0
    return-object v3

    .line 417
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    const-string/jumbo v3, "new_iphone_style_bg.png"

    invoke-static {v2, v3}, Landroid/content/theme/OpConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "new_iphone_style_mask.png"

    invoke-static {v2, v3}, Landroid/content/theme/OpConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 419
    const-string v3, "iphone_style_fg.png"

    invoke-static {v2, v3}, Landroid/content/theme/OpConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    const/4 v3, 0x1

    sput-boolean v3, Landroid/content/theme/OpConvertIcon;->drawForeground:Z

    .line 422
    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 423
    sget-object v3, Landroid/content/theme/OpConvertIcon$IconBgTpye;->MASK:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sput-object v3, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Landroid/content/theme/OpConvertIcon$IconBgTpye;->SCALE:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sput-object v3, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    goto :goto_0

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    sget-object v3, Landroid/content/theme/OpConvertIcon$IconBgTpye;->SCALE:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sput-object v3, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    goto :goto_0
.end method

.method public static getIconSize()I
    .locals 1

    .prologue
    .line 501
    sget v0, Landroid/content/theme/OpConvertIcon;->sIconSize:I

    return v0
.end method

.method private static getMaskBitmap(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 476
    sget-object v2, Landroid/content/theme/OpConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 477
    sget-object v2, Landroid/content/theme/OpConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 478
    sput-object v6, Landroid/content/theme/OpConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 480
    :cond_0
    invoke-static {p0, p1}, Landroid/content/theme/OpThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 482
    .local v1, "mask":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 494
    :goto_0
    return-void

    .line 485
    :cond_1
    sget v2, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 486
    invoke-static {p0}, Landroid/content/theme/OpConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 488
    :cond_2
    sget v2, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sget v3, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Landroid/content/theme/OpConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 489
    sget v2, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sget v3, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 490
    sget-object v0, Landroid/content/theme/OpConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 491
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Landroid/content/theme/OpConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 492
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 493
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getThemeParamScale()I
    .locals 1

    .prologue
    .line 497
    sget v0, Landroid/content/theme/OpConvertIcon;->sThemeParamScale:I

    return v0
.end method

.method public static hasInit()Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Landroid/content/theme/OpConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/content/theme/OpConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/content/theme/OpConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initConvertIcon(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 505
    invoke-static {}, Landroid/content/theme/OpThirdPartUtil;->setDefaultTheme()V

    .line 506
    invoke-static {}, Landroid/content/theme/OpConvertIcon;->getIconBgTpye()Landroid/content/theme/OpConvertIcon$IconBgTpye;

    move-result-object v0

    sget-object v1, Landroid/content/theme/OpConvertIcon$IconBgTpye;->MASK:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    if-ne v0, v1, :cond_0

    .line 507
    const-string/jumbo v0, "new_iphone_style_mask.png"

    invoke-static {p0, v0}, Landroid/content/theme/OpConvertIcon;->getMaskBitmap(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 508
    sget-object v0, Landroid/content/theme/OpConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 509
    invoke-static {}, Landroid/content/theme/OpMaskBitmapUtilities;->getInstance()Landroid/content/theme/OpMaskBitmapUtilities;

    move-result-object v0

    sget-object v1, Landroid/content/theme/OpConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/content/theme/OpMaskBitmapUtilities;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    .line 515
    :cond_0
    :goto_0
    const-string/jumbo v0, "new_iphone_style_bg.png"

    const-string v1, "iphone_style_fg.png"

    const-string v2, "iphone_style_bg.png"

    invoke-static {p0, v0, v1, v2}, Landroid/content/theme/OpConvertIcon;->initThemeParam(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Landroid/content/theme/OpMaskBitmapUtilities;->getInstance()Landroid/content/theme/OpMaskBitmapUtilities;

    move-result-object v0

    invoke-static {}, Landroid/content/theme/OpConvertIcon;->getIconSize()I

    move-result v1

    invoke-static {}, Landroid/content/theme/OpConvertIcon;->getThemeParamScale()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/theme/OpMaskBitmapUtilities;->setCutAndScalePram(II)V

    .line 518
    return-void

    .line 511
    :cond_1
    sget-object v0, Landroid/content/theme/OpConvertIcon$IconBgTpye;->SCALE:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sput-object v0, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    goto :goto_0
.end method

.method private static initIconSize(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 349
    const/16 v1, 0xd2

    .line 350
    .local v1, "width":I
    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 352
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 353
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v1, v2, 0x24

    .line 356
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    sput v1, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    sput v1, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sput v1, Landroid/content/theme/OpConvertIcon;->sIconSize:I

    .line 357
    return-void
.end method

.method public static initThemeParam(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "maskBg"    # Ljava/lang/String;
    .param p2, "MaskFg"    # Ljava/lang/String;
    .param p3, "coverBg"    # Ljava/lang/String;

    .prologue
    .line 360
    new-instance v0, Landroid/content/theme/OpIconParam;

    const-string/jumbo v2, "themeInfo.xml"

    invoke-direct {v0, v2}, Landroid/content/theme/OpIconParam;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "oppoIconParam":Landroid/content/theme/OpIconParam;
    invoke-virtual {v0}, Landroid/content/theme/OpIconParam;->parseXml()Z

    .line 363
    invoke-virtual {v0}, Landroid/content/theme/OpIconParam;->getScale()F

    move-result v1

    .line 364
    .local v1, "tempRatio":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 365
    sget-object v2, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sget-object v3, Landroid/content/theme/OpConvertIcon$IconBgTpye;->COVER:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    if-ne v2, v3, :cond_2

    .line 366
    const v1, 0x3f1eb852    # 0.62f

    .line 373
    :cond_0
    :goto_0
    sget v2, Landroid/content/theme/OpConvertIcon;->sIconSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 374
    invoke-static {p0}, Landroid/content/theme/OpConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 376
    :cond_1
    sget v2, Landroid/content/theme/OpConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Landroid/content/theme/OpConvertIcon;->sThemeParamScale:I

    .line 382
    invoke-virtual {v0}, Landroid/content/theme/OpIconParam;->getXOffset()F

    move-result v1

    .line 383
    sget v2, Landroid/content/theme/OpConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Landroid/content/theme/OpConvertIcon;->sThemeParamXOffset:I

    .line 388
    invoke-virtual {v0}, Landroid/content/theme/OpIconParam;->getYOffset()F

    move-result v1

    .line 389
    sget v2, Landroid/content/theme/OpConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Landroid/content/theme/OpConvertIcon;->sThemeParamYOffset:I

    .line 395
    invoke-static {p1, p2, p3}, Landroid/content/theme/OpConvertIcon;->setIconBgFgRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void

    .line 367
    :cond_2
    sget-object v2, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sget-object v3, Landroid/content/theme/OpConvertIcon$IconBgTpye;->SCALE:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    if-ne v2, v3, :cond_3

    .line 368
    const v1, 0x3f533333    # 0.825f

    goto :goto_0

    .line 369
    :cond_3
    sget-object v2, Landroid/content/theme/OpConvertIcon;->mIconBgTpye:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    sget-object v3, Landroid/content/theme/OpConvertIcon$IconBgTpye;->MASK:Landroid/content/theme/OpConvertIcon$IconBgTpye;

    if-ne v2, v3, :cond_0

    .line 370
    const v1, 0x3f35c28f    # 0.71f

    goto :goto_0
.end method

.method public static judgePicExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    .line 446
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 447
    .local v1, "file":Ljava/util/zip/ZipFile;
    invoke-static {v1, p1}, Landroid/content/theme/OpConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v2

    .line 448
    .local v2, "flag":Z
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v1    # "file":Ljava/util/zip/ZipFile;
    .end local v2    # "flag":Z
    :goto_0
    return v2

    .line 450
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .locals 4
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    .line 466
    sget-object v2, Landroid/content/theme/OpConvertIcon;->drawabledirs:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/theme/OpConvertIcon;->drawabledirs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 468
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 469
    const/4 v2, 0x1

    .line 472
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :goto_1
    return v2

    .line 466
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 472
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static maskBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 11
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 270
    if-nez p1, :cond_0

    .line 271
    sget v6, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sget v7, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 272
    sget-object v3, Landroid/content/theme/OpConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 273
    .local v3, "tmpcanvas":Landroid/graphics/Canvas;
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    sget-object v6, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 275
    sget v6, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sget v7, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    invoke-virtual {p0, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 276
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    sget-object v6, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 280
    .end local v3    # "tmpcanvas":Landroid/graphics/Canvas;
    :cond_0
    if-eqz p1, :cond_6

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v6

    if-nez v6, :cond_1

    .line 283
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 285
    :cond_1
    invoke-static {}, Landroid/content/theme/OpMaskBitmapUtilities;->getInstance()Landroid/content/theme/OpMaskBitmapUtilities;

    move-result-object v1

    .line 286
    .local v1, "mbu":Landroid/content/theme/OpMaskBitmapUtilities;
    invoke-virtual {v1, p1}, Landroid/content/theme/OpMaskBitmapUtilities;->scaleAndMaskBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 288
    .local v2, "scale":Landroid/graphics/Bitmap;
    sget-object v6, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 289
    sget-object v6, Landroid/content/theme/OpConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/content/theme/OpThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sput-object v6, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 293
    :cond_2
    sget-object v6, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 294
    sget-object v6, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    sget-object v7, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 295
    sget-object v6, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget v7, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sget v8, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 296
    sget-object v6, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 297
    sget-object v6, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget-object v7, Landroid/content/theme/OpConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 301
    :goto_0
    if-eqz v2, :cond_5

    .line 302
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 303
    .local v4, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 305
    .local v0, "h":I
    sget v6, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    sget v7, Landroid/content/theme/OpConvertIcon;->sThemeParamXOffset:I

    add-int v5, v6, v7

    .line 306
    .local v5, "xEndPosDiffer":I
    const/4 v6, -0x1

    if-le v5, v6, :cond_4

    .line 307
    sget v6, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sget v7, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p3, v2, v6, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 319
    .end local v0    # "h":I
    .end local v1    # "mbu":Landroid/content/theme/OpMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    .end local v4    # "w":I
    .end local v5    # "xEndPosDiffer":I
    :goto_1
    return-void

    .line 299
    .restart local v1    # "mbu":Landroid/content/theme/OpMaskBitmapUtilities;
    .restart local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_3
    const-string v6, "OpConvertIcon"

    const-string/jumbo v7, "maskBitmap -- mIconBackground == null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .restart local v0    # "h":I
    .restart local v4    # "w":I
    .restart local v5    # "xEndPosDiffer":I
    :cond_4
    sget v6, Landroid/content/theme/OpConvertIcon;->sIconWidth:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    sget v7, Landroid/content/theme/OpConvertIcon;->sThemeParamXOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Landroid/content/theme/OpConvertIcon;->sIconHeight:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    sget v8, Landroid/content/theme/OpConvertIcon;->sThemeParamYOffset:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p3, v2, v6, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 313
    .end local v0    # "h":I
    .end local v4    # "w":I
    .end local v5    # "xEndPosDiffer":I
    :cond_5
    const-string v6, "OpConvertIcon"

    const-string/jumbo v7, "maskBitmap -- scale == null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    .end local v1    # "mbu":Landroid/content/theme/OpMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_6
    const-string v6, "OpConvertIcon"

    const-string/jumbo v7, "maskBitmap -- originalBitmap == null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setIconBgFgRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "maskBg"    # Ljava/lang/String;
    .param p1, "MaskFg"    # Ljava/lang/String;
    .param p2, "coverBg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 341
    sput-object p0, Landroid/content/theme/OpConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    .line 342
    sput-object p1, Landroid/content/theme/OpConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    .line 343
    sput-object p2, Landroid/content/theme/OpConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    .line 344
    sput-object v0, Landroid/content/theme/OpConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 345
    sput-object v0, Landroid/content/theme/OpConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    .line 346
    return-void
.end method
