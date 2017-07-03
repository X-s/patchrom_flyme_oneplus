.class public Lcom/oneplus/gallery2/editor/ColorMatrixFilter;
.super Lcom/oneplus/gallery2/editor/PhotoEditorFilter;
.source "ColorMatrixFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery2/editor/PhotoEditorFilter",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

.field private final m_IsProviderModifiedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Paint:Landroid/graphics/Paint;

.field private m_PreviewBitmapBuffer:Landroid/graphics/Bitmap;

.field private m_PreviewBitmapBufferCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorFilter;-><init>(Ljava/lang/Class;Z)V

    .line 23
    new-instance v0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/editor/ColorMatrixFilter$1;-><init>(Lcom/oneplus/gallery2/editor/ColorMatrixFilter;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_IsProviderModifiedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_Paint:Landroid/graphics/Paint;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/editor/ColorMatrixFilter;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/editor/ColorMatrixFilter;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private applyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;I)V
    .locals 6
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "targetCanvas"    # Landroid/graphics/Canvas;
    .param p5, "flags"    # I

    .prologue
    .line 60
    iget-object v3, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_Paint:Landroid/graphics/Paint;

    monitor-enter v3

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    .line 64
    .local v1, "provider":Lcom/oneplus/gallery2/editor/ColorMatrixProvider;
    if-nez v1, :cond_0

    .line 65
    monitor-exit v3

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->createColorMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v0

    .line 67
    .local v0, "colorMatrix":Landroid/graphics/ColorMatrix;
    if-nez v0, :cond_1

    .line 68
    monitor-exit v3

    goto :goto_0

    .line 73
    .end local v0    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .end local v1    # "provider":Lcom/oneplus/gallery2/editor/ColorMatrixProvider;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 69
    .restart local v0    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .restart local v1    # "provider":Lcom/oneplus/gallery2/editor/ColorMatrixProvider;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_Paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 72
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public applyFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    const/4 v6, 0x0

    .line 56
    :goto_0
    return-object v6

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 55
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->applyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;I)V

    goto :goto_0
.end method

.method onApplyFilter(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 82
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    if-nez v0, :cond_1

    .line 119
    .end local p1    # "image":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 88
    .restart local p1    # "image":Landroid/graphics/Bitmap;
    :cond_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    .line 89
    .local v8, "isPreview":Z
    :goto_1
    if-eqz v8, :cond_6

    .line 91
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_PreviewBitmapBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_PreviewBitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_PreviewBitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_5

    .line 93
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_PreviewBitmapBuffer:Landroid/graphics/Bitmap;

    .line 94
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_PreviewBitmapBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_PreviewBitmapBufferCanvas:Landroid/graphics/Canvas;

    .line 98
    :goto_2
    iget-object v6, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_PreviewBitmapBuffer:Landroid/graphics/Bitmap;

    .line 99
    .local v6, "buffer":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_PreviewBitmapBufferCanvas:Landroid/graphics/Canvas;

    .local v4, "bufferCanvas":Landroid/graphics/Canvas;
    :goto_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->applyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;I)V

    .line 111
    if-eqz v8, :cond_3

    .line 113
    invoke-virtual {p1, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 114
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v0, 0x0

    invoke-virtual {v7, v6, v10, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 119
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    if-nez v8, :cond_0

    move-object p1, v6

    goto :goto_0

    .end local v4    # "bufferCanvas":Landroid/graphics/Canvas;
    .end local v6    # "buffer":Landroid/graphics/Bitmap;
    .end local v8    # "isPreview":Z
    :cond_4
    move v8, v9

    .line 88
    goto :goto_1

    .line 97
    .restart local v8    # "isPreview":Z
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_PreviewBitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_2

    .line 103
    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 104
    .restart local v6    # "buffer":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v4    # "bufferCanvas":Landroid/graphics/Canvas;
    goto :goto_3
.end method

.method bridge synthetic onApplyFilter(Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 19
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->onApplyFilter(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepare(Lcom/oneplus/gallery2/media/PhotoMedia;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/PhotoMedia;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->completePreparation(Z)V

    .line 128
    return v0
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    sget-object v1, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_IsProviderModifiedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 141
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery2/editor/PhotoEditorFilter;->onRelease()V

    .line 142
    return-void
.end method

.method public setColorMatrixProvider(Lcom/oneplus/gallery2/editor/ColorMatrixProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->verifyAccess()V

    .line 152
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    if-eq v0, p1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    sget-object v1, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_IsProviderModifiedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    .line 157
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    sget-object v1, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_IsProviderModifiedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 160
    sget-object v0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->m_ColorMatrixProvider:Lcom/oneplus/gallery2/editor/ColorMatrixProvider;

    sget-object v2, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/editor/ColorMatrixProvider;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method
