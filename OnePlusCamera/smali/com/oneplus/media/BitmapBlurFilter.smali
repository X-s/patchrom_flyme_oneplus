.class public Lcom/oneplus/media/BitmapBlurFilter;
.super Lcom/oneplus/base/BasicBaseObject;
.source "BitmapBlurFilter.java"


# instance fields
.field private m_BlurAllocation:Landroid/renderscript/Allocation;

.field private m_InputAllocation:Landroid/renderscript/Allocation;

.field private m_OutputAllocation:Landroid/renderscript/Allocation;

.field private m_RenderScriptHandle:Lcom/oneplus/base/Handle;

.field private m_ScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

.field private m_ScriptResize:Landroid/renderscript/ScriptIntrinsicResize;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 29
    return-void
.end method


# virtual methods
.method public applyBlurFilter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dstBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "blurRadius"    # F

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapBlurFilter;->verifyAccess()V

    .line 46
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapBlurFilter;->verifyReleaseState()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    return-object p2

    .line 51
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/media/BitmapBlurFilter;->applyBlurFilter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_1
.end method

.method public applyBlurFilter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dstBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "blurRadius"    # F
    .param p4, "outWidth"    # I
    .param p5, "outHeight"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapBlurFilter;->verifyAccess()V

    .line 68
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapBlurFilter;->verifyReleaseState()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    return-object p2

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Only support bitmap config ARGB_8888, current config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, p4, :cond_b

    .line 74
    :cond_2
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v0

    .line 80
    .local v0, "rs":Landroid/renderscript/RenderScript;
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_InputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_4

    .line 81
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_InputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 84
    :cond_4
    :goto_1
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_InputAllocation:Landroid/renderscript/Allocation;

    .line 85
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_InputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_BlurAllocation:Landroid/renderscript/Allocation;

    .line 87
    :cond_5
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_OutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_6

    .line 88
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_OutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v1, p4, :cond_d

    .line 91
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p4, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p5, :cond_8

    .line 92
    :cond_7
    invoke-static {v0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1, p4, p5}, Landroid/renderscript/Type;->createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_OutputAllocation:Landroid/renderscript/Allocation;

    .line 96
    :cond_8
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    if-nez v1, :cond_9

    .line 97
    invoke-static {v0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 98
    :cond_9
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptResize:Landroid/renderscript/ScriptIntrinsicResize;

    if-nez v1, :cond_a

    .line 99
    invoke-static {v0}, Landroid/renderscript/ScriptIntrinsicResize;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicResize;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptResize:Landroid/renderscript/ScriptIntrinsicResize;

    .line 102
    :cond_a
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 105
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v2, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_InputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 106
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v2, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_BlurAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 109
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_OutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_e

    .line 111
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptResize:Landroid/renderscript/ScriptIntrinsicResize;

    iget-object v2, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_BlurAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicResize;->setInput(Landroid/renderscript/Allocation;)V

    .line 112
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptResize:Landroid/renderscript/ScriptIntrinsicResize;

    iget-object v2, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_OutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/renderscript/Allocation;)V

    .line 113
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_OutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 119
    :goto_3
    return-object p2

    .line 73
    .end local v0    # "rs":Landroid/renderscript/RenderScript;
    :cond_b
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p5, :cond_3

    goto/16 :goto_0

    .line 82
    .restart local v0    # "rs":Landroid/renderscript/RenderScript;
    :cond_c
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_InputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_5

    goto/16 :goto_1

    .line 89
    :cond_d
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_OutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v1, p5, :cond_8

    goto/16 :goto_2

    .line 116
    :cond_e
    iget-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_BlurAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 129
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_InputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_InputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 132
    iput-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_InputAllocation:Landroid/renderscript/Allocation;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_BlurAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_BlurAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 137
    iput-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_BlurAllocation:Landroid/renderscript/Allocation;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_OutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_OutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 142
    iput-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_OutputAllocation:Landroid/renderscript/Allocation;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 147
    iput-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptResize:Landroid/renderscript/ScriptIntrinsicResize;

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptResize:Landroid/renderscript/ScriptIntrinsicResize;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicResize;->destroy()V

    .line 152
    iput-object v1, p0, Lcom/oneplus/media/BitmapBlurFilter;->m_ScriptResize:Landroid/renderscript/ScriptIntrinsicResize;

    .line 125
    :cond_4
    return-void
.end method
