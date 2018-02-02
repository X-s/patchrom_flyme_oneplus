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
.field private static final synthetic -android-graphics-Bitmap$ConfigSwitchesValues:[I

.field private static final synthetic -com-oneplus-gl-Texture2D$FormatSwitchesValues:[I


# instance fields
.field private m_Bitmap:Landroid/graphics/Bitmap;

.field private m_Drawable:Landroid/graphics/drawable/Drawable;

.field private m_DrawableSize:Landroid/util/Size;

.field private m_Format:Lcom/oneplus/gl/Texture2D$Format;

.field private m_Height:I

.field private m_TextureId:I

.field private m_Width:I


# direct methods
.method private static synthetic -getandroid-graphics-Bitmap$ConfigSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gl/Texture2D;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gl/Texture2D;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/gl/Texture2D;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-gl-Texture2D$FormatSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gl/Texture2D;->-com-oneplus-gl-Texture2D$FormatSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gl/Texture2D;->-com-oneplus-gl-Texture2D$FormatSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->UNKNOWN:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/gl/Texture2D;->-com-oneplus-gl-Texture2D$FormatSwitchesValues:[I

    return-object v0

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

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "textureId"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, v3}, Lcom/oneplus/gl/Texture;-><init>(I)V

    .line 65
    if-ge p1, v4, :cond_0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Incorrect texture id for texture"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    iput p1, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    .line 72
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 73
    .local v0, "params":[I
    iget v1, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    invoke-static {v3, v1}, Landroid/opengl/GLES31;->glBindTexture(II)V

    .line 74
    const/16 v1, 0x1000

    invoke-static {v3, v2, v1, v0, v2}, Landroid/opengl/GLES31;->glGetTexLevelParameteriv(III[II)V

    .line 75
    const/16 v1, 0x1001

    invoke-static {v3, v2, v1, v0, v4}, Landroid/opengl/GLES31;->glGetTexLevelParameteriv(III[II)V

    .line 76
    const/16 v1, 0x1003

    invoke-static {v3, v2, v1, v0, v4}, Landroid/opengl/GLES31;->glGetTexLevelParameteriv(III[II)V

    .line 77
    invoke-static {v3, v2}, Landroid/opengl/GLES31;->glBindTexture(II)V

    .line 80
    aget v1, v0, v2

    iput v1, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 81
    aget v1, v0, v4

    iput v1, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 84
    const/4 v1, 0x2

    aget v1, v0, v1

    sparse-switch v1, :sswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 88
    :sswitch_0
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v1, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_0

    .line 92
    :sswitch_1
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v1, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_0

    .line 96
    :sswitch_2
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v1, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x8d70 -> :sswitch_0
        0x8d76 -> :sswitch_2
        0x8d77 -> :sswitch_1
        0x8d82 -> :sswitch_0
        0x8d88 -> :sswitch_2
        0x8d89 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 165
    const/16 v1, 0xde1

    invoke-direct {p0, v1}, Lcom/oneplus/gl/Texture;-><init>(I)V

    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No context for texture"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 177
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 178
    sget-object v1, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v1, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 109
    const/16 v0, 0xde1

    invoke-direct {p0, v0}, Lcom/oneplus/gl/Texture;-><init>(I)V

    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No source bitmap for texture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 117
    invoke-static {}, Lcom/oneplus/gl/Texture2D;->-getandroid-graphics-Bitmap$ConfigSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported bitmap config : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    .line 131
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 106
    return-void

    .line 123
    :pswitch_1
    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_0

    .line 126
    :pswitch_2
    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 143
    const/16 v0, 0xde1

    invoke-direct {p0, v0}, Lcom/oneplus/gl/Texture;-><init>(I)V

    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No source drawable for texture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 152
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 153
    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gl/Texture2D$Format;II)V
    .locals 3
    .param p1, "format"    # Lcom/oneplus/gl/Texture2D$Format;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 191
    const/16 v0, 0xde1

    invoke-direct {p0, v0}, Lcom/oneplus/gl/Texture;-><init>(I)V

    .line 194
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/gl/Texture2D$Format;->UNKNOWN:Lcom/oneplus/gl/Texture2D$Format;

    if-ne p1, v0, :cond_1

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    if-lez p2, :cond_2

    if-gtz p3, :cond_3

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_3
    iput p2, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 201
    iput p3, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 202
    iput-object p1, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    .line 188
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFormat()Lcom/oneplus/gl/Texture2D$Format;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    return v0
.end method

.method public getObjectId()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/gl/Texture2D;->throwIfNotAccessible()V

    .line 254
    invoke-static {}, Lcom/oneplus/gl/Texture2D;->createNativeTexture()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/gl/Texture2D;->refresh()Lcom/oneplus/gl/Texture2D;

    .line 259
    :cond_0
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    return v0
.end method

.method protected onEglContextDestroying()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    .line 278
    invoke-super {p0}, Lcom/oneplus/gl/Texture;->onEglContextDestroying()V

    .line 275
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    invoke-static {v0}, Lcom/oneplus/gl/Texture2D;->destroyNativeTexture(I)V

    .line 290
    iput-object v1, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 291
    iput-object v1, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 294
    invoke-super {p0}, Lcom/oneplus/gl/Texture;->onRelease()V

    .line 284
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

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/gl/Texture2D;->throwIfNotAccessible()V

    .line 306
    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    if-nez v3, :cond_0

    .line 307
    return-object p0

    .line 310
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 313
    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 314
    .local v11, "stride":I
    invoke-static {}, Lcom/oneplus/gl/Texture2D;->-getandroid-graphics-Bitmap$ConfigSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 329
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported bitmap config : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :pswitch_0
    shl-int/lit8 v11, v11, 0x1

    .line 318
    sget-object v3, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    .line 331
    :goto_0
    and-int/lit8 v3, v11, 0x3

    if-nez v3, :cond_2

    .line 332
    const/4 v3, 0x4

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 339
    :goto_1
    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 340
    const/16 v3, 0x2802

    invoke-static {v0, v3, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 341
    const/16 v3, 0x2803

    invoke-static {v0, v3, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 342
    const/16 v3, 0x2801

    invoke-static {v0, v3, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 343
    const/16 v3, 0x2800

    invoke-static {v0, v3, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 344
    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v3, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 345
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 348
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 349
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 421
    .end local v11    # "stride":I
    :cond_1
    :goto_2
    return-object p0

    .line 321
    .restart local v11    # "stride":I
    :pswitch_1
    shl-int/lit8 v11, v11, 0x1

    .line 322
    sget-object v3, Lcom/oneplus/gl/Texture2D$Format;->RGBA_4444:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_0

    .line 325
    :pswitch_2
    shl-int/lit8 v11, v11, 0x2

    .line 326
    sget-object v3, Lcom/oneplus/gl/Texture2D$Format;->RGBA_8888:Lcom/oneplus/gl/Texture2D$Format;

    iput-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    goto :goto_0

    .line 333
    :cond_2
    and-int/lit8 v3, v11, 0x1

    if-nez v3, :cond_3

    .line 334
    const/4 v3, 0x2

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    goto :goto_1

    .line 336
    :cond_3
    const/4 v3, 0x1

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    goto :goto_1

    .line 351
    .end local v11    # "stride":I
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 354
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    if-eqz v0, :cond_5

    .line 356
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 357
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    .line 364
    :goto_3
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    iget v1, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 370
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 372
    .local v10, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    const/16 v0, 0xcf5

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 376
    iget v0, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 377
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v3, 0x812f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 378
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v3, 0x812f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 379
    const v0, 0x46180400    # 9729.0f

    const/16 v1, 0xde1

    const/16 v3, 0x2801

    invoke-static {v1, v3, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 380
    const v0, 0x46180400    # 9729.0f

    const/16 v1, 0xde1

    const/16 v3, 0x2800

    invoke-static {v1, v3, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 381
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v9, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 382
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 361
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    .line 362
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    goto :goto_3

    .line 385
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    .line 386
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    throw v0

    .line 389
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    if-lez v3, :cond_1

    .line 392
    invoke-static {}, Lcom/oneplus/gl/Texture2D;->-getcom-oneplus-gl-Texture2D$FormatSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v4}, Lcom/oneplus/gl/Texture2D$Format;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 411
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported pixel format : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/gl/Texture2D;->m_Format:Lcom/oneplus/gl/Texture2D$Format;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :pswitch_3
    const/16 v2, 0x1908

    .line 396
    .local v2, "glFormat":I
    const/16 v7, 0x1401

    .line 413
    .local v7, "glType":I
    :goto_4
    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_TextureId:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 414
    iget v3, p0, Lcom/oneplus/gl/Texture2D;->m_Width:I

    iget v4, p0, Lcom/oneplus/gl/Texture2D;->m_Height:I

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 415
    const/16 v3, 0x2802

    invoke-static {v0, v3, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 416
    const/16 v3, 0x2803

    invoke-static {v0, v3, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 417
    const/16 v3, 0x2801

    invoke-static {v0, v3, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 418
    const/16 v3, 0x2800

    invoke-static {v0, v3, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 419
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_2

    .line 399
    .end local v2    # "glFormat":I
    .end local v7    # "glType":I
    :pswitch_4
    const v2, 0x8d62

    .line 400
    .restart local v2    # "glFormat":I
    const v7, 0x8363

    .line 401
    .restart local v7    # "glType":I
    goto :goto_4

    .line 403
    .end local v2    # "glFormat":I
    .end local v7    # "glType":I
    :pswitch_5
    const v2, 0x8056

    .line 404
    .restart local v2    # "glFormat":I
    const v7, 0x8033

    .line 405
    .restart local v7    # "glType":I
    goto :goto_4

    .line 407
    .end local v2    # "glFormat":I
    .end local v7    # "glType":I
    :pswitch_6
    const/16 v2, 0x1902

    .line 408
    .restart local v2    # "glFormat":I
    const/16 v7, 0x1403

    .line 409
    .restart local v7    # "glType":I
    goto :goto_4

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 392
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setDrawableSize(II)Lcom/oneplus/gl/Texture2D;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/oneplus/gl/Texture2D;->throwIfNotAccessible()V

    .line 445
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 446
    return-object p0

    .line 447
    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 448
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    .line 453
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gl/Texture2D;->refresh()Lcom/oneplus/gl/Texture2D;

    .line 454
    return-object p0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    if-eqz v0, :cond_2

    .line 450
    iput-object v1, p0, Lcom/oneplus/gl/Texture2D;->m_DrawableSize:Landroid/util/Size;

    goto :goto_0

    .line 452
    :cond_2
    return-object p0
.end method

.method public setDrawableSize(Landroid/util/Size;)Lcom/oneplus/gl/Texture2D;
    .locals 2
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gl/Texture2D;->setDrawableSize(II)Lcom/oneplus/gl/Texture2D;

    move-result-object v0

    return-object v0
.end method
