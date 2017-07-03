.class public Lcom/oneplus/gl/Texture2D;
.super Lcom/oneplus/gl/Texture;
.source "Texture2D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gl/Texture2D$Format;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$graphics$Bitmap$Config:[I

.field private static synthetic $SWITCH_TABLE$com$oneplus$gl$Texture2D$Format:[I


# instance fields
.field private m_Bitmap:Landroid/graphics/Bitmap;

.field private m_Drawable:Landroid/graphics/drawable/Drawable;

.field private m_DrawableSize:Landroid/util/Size;

.field private m_Format:Lcom/oneplus/gl/Texture2D$Format;

.field private m_Height:I

.field private m_TextureId:I

.field private m_Width:I


# direct methods
.method static synthetic $SWITCH_TABLE$android$graphics$Bitmap$Config()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/oneplus/gl/Texture2D;->$SWITCH_TABLE$android$graphics$Bitmap$Config:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/gl/Texture2D;->$SWITCH_TABLE$android$graphics$Bitmap$Config:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$oneplus$gl$Texture2D$Format()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/oneplus/gl/Texture2D;->$SWITCH_TABLE$com$oneplus$gl$Texture2D$Format:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/gl/Texture2D$Format;->values()[Lcom/oneplus/gl/Texture2D$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->DEPTH:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->UNKNOWN:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/gl/Texture2D;->$SWITCH_TABLE$com$oneplus$gl$Texture2D$Format:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 117
    const/16 v1, 0xde1

    invoke-direct {p0, v1}, Lcom/oneplus/gl/Texture;-><init>(I)V

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No context for texture"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 129
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 130
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v1, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    const/16 v0, 0xde1

    invoke-direct {p0, v0}, Lcom/oneplus/gl/Texture;-><init>(I)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No source bitmap for texture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 69
    invoke-static {}, Lcom/oneplus/gl/Texture2D;->$SWITCH_TABLE$android$graphics$Bitmap$Config()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported bitmap config : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_0
    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 85
    return-void

    .line 75
    :pswitch_1
    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_0

    .line 78
    :pswitch_2
    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 95
    const/16 v0, 0xde1

    invoke-direct {p0, v0}, Lcom/oneplus/gl/Texture;-><init>(I)V

    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No source drawable for texture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 104
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 105
    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gl/Texture2D$Format;II)V
    .locals 3
    .param p1, "format"    # Lcom/oneplus/gl/Texture2D$Format;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 143
    const/16 v0, 0xde1

    invoke-direct {p0, v0}, Lcom/oneplus/gl/Texture;-><init>(I)V

    .line 146
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->UNKNOWN:Lcom/oneplus/gl/Texture2D$Format;

    if-ne p1, v0, :cond_1

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    if-lez p2, :cond_2

    if-gtz p3, :cond_3

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_3
    iput p2, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 153
    iput p3, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 154
    iput-object p1, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    .line 155
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFormat()Lcom/oneplus/gl/Texture2D$Format;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    return v0
.end method

.method public getObjectId()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/gl/Texture2D;->throwIfNotAccessible()V

    .line 206
    invoke-static {}, Lcom/oneplus/gl/Texture2D;->createNativeTexture()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/gl/Texture2D;->refresh()Lcom/oneplus/gl/Texture2D;

    .line 211
    :cond_0
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    return v0
.end method

.method protected onEglContextDestroying()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    .line 230
    invoke-super {p0}, Lcom/oneplus/gl/Texture;->onEglContextDestroying()V

    .line 231
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    invoke-static {v0}, Lcom/oneplus/gl/Texture2D;->destroyNativeTexture(I)V

    .line 242
    iput-object v1, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 243
    iput-object v1, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 246
    invoke-super {p0}, Lcom/oneplus/gl/Texture;->onRelease()V

    .line 247
    return-void
.end method

.method public refresh()Lcom/oneplus/gl/Texture2D;
    .locals 14

    .prologue
    const/16 v5, 0xcf5

    const v13, 0x812f

    const v12, 0x46180400    # 9729.0f

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/gl/Texture2D;->throwIfNotAccessible()V

    .line 258
    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    if-nez v3, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-object p0

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 265
    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 266
    .local v11, "stride":I
    invoke-static {}, Lcom/oneplus/gl/Texture2D;->$SWITCH_TABLE$android$graphics$Bitmap$Config()[I

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 281
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported bitmap config : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :pswitch_0
    shl-int/lit8 v11, v11, 0x1

    .line 270
    sget-object v3, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    .line 283
    :goto_1
    and-int/lit8 v3, v11, 0x3

    if-nez v3, :cond_2

    .line 284
    const/4 v3, 0x4

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 291
    :goto_2
    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 292
    const/16 v3, 0x2802

    invoke-static {v0, v3, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 293
    const/16 v3, 0x2803

    invoke-static {v0, v3, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 294
    const/16 v3, 0x2801

    invoke-static {v0, v3, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 295
    const/16 v3, 0x2800

    invoke-static {v0, v3, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 296
    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v3, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 297
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 300
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 301
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    goto :goto_0

    .line 273
    :pswitch_1
    shl-int/lit8 v11, v11, 0x1

    .line 274
    sget-object v3, Lcom/oneplus/gl/Texture2D$Format;->RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_1

    .line 277
    :pswitch_2
    shl-int/lit8 v11, v11, 0x2

    .line 278
    sget-object v3, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_1

    .line 285
    :cond_2
    and-int/lit8 v3, v11, 0x1

    if-nez v3, :cond_3

    .line 286
    const/4 v3, 0x2

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    goto :goto_2

    .line 288
    :cond_3
    const/4 v3, 0x1

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    goto :goto_2

    .line 303
    .end local v11    # "stride":I
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 306
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    if-eqz v0, :cond_5

    .line 308
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 309
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 316
    :goto_3
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    iget v1, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 322
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    iget v5, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    .local v10, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 327
    const/16 v0, 0xcf5

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 328
    const/16 v0, 0xde1

    iget v1, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 329
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v3, 0x812f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 330
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v3, 0x812f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 331
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 332
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 333
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v9, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 334
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 313
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 314
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    goto :goto_3

    .line 337
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    .line 338
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 339
    throw v0

    .line 341
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    if-lez v3, :cond_0

    .line 344
    invoke-static {}, Lcom/oneplus/gl/Texture2D;->$SWITCH_TABLE$com$oneplus$gl$Texture2D$Format()[I

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v4}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 363
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported pixel format : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :pswitch_3
    const/16 v2, 0x1908

    .line 348
    .local v2, "glFormat":I
    const/16 v7, 0x1401

    .line 365
    .local v7, "glType":I
    :goto_4
    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 366
    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    iget v4, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 367
    const/16 v3, 0x2802

    invoke-static {v0, v3, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 368
    const/16 v3, 0x2803

    invoke-static {v0, v3, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 369
    const/16 v3, 0x2801

    invoke-static {v0, v3, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 370
    const/16 v3, 0x2800

    invoke-static {v0, v3, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 371
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_0

    .line 351
    .end local v2    # "glFormat":I
    .end local v7    # "glType":I
    :pswitch_4
    const v2, 0x8d62

    .line 352
    .restart local v2    # "glFormat":I
    const v7, 0x8363

    .line 353
    .restart local v7    # "glType":I
    goto :goto_4

    .line 355
    .end local v2    # "glFormat":I
    .end local v7    # "glType":I
    :pswitch_5
    const v2, 0x8056

    .line 356
    .restart local v2    # "glFormat":I
    const v7, 0x8033

    .line 357
    .restart local v7    # "glType":I
    goto :goto_4

    .line 359
    .end local v2    # "glFormat":I
    .end local v7    # "glType":I
    :pswitch_6
    const/16 v2, 0x1902

    .line 360
    .restart local v2    # "glFormat":I
    const/16 v7, 0x1403

    .line 361
    .restart local v7    # "glType":I
    goto :goto_4

    .line 266
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 344
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public setDrawableSize(II)Lcom/oneplus/gl/Texture2D;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/oneplus/gl/Texture2D;->throwIfNotAccessible()V

    .line 397
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-object p0

    .line 399
    :cond_1
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 400
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    .line 405
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gl/Texture2D;->refresh()Lcom/oneplus/gl/Texture2D;

    goto :goto_0

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    goto :goto_1
.end method

.method public setDrawableSize(Landroid/util/Size;)Lcom/oneplus/gl/Texture2D;
    .locals 2
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gl/Texture2D;->setDrawableSize(II)Lcom/oneplus/gl/Texture2D;

    move-result-object v0

    return-object v0
.end method
