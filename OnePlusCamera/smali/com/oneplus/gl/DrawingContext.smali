.class public final Lcom/oneplus/gl/DrawingContext;
.super Lcom/oneplus/gl/EglObject;
.source "DrawingContext.java"


# instance fields
.field private m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

.field private final m_MvpMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/oneplus/gl/EglObject;-><init>()V

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_MvpMatrix:[F

    return-void
.end method

.method private abandonInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    iget-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    .line 34
    .local v1, "obj":Lcom/oneplus/gl/DrawableObject;
    :goto_0
    if-eqz v1, :cond_1

    .line 36
    iget-object v0, v1, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 37
    .local v0, "nextObj":Lcom/oneplus/gl/DrawableObject;
    iput-object v2, v1, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    .line 38
    iput-object v2, v1, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 39
    if-eqz v0, :cond_0

    .line 40
    iput-object v2, v0, Lcom/oneplus/gl/DrawableObject;->prevDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 41
    :cond_0
    move-object v1, v0

    .line 42
    goto :goto_0

    .line 43
    .end local v0    # "nextObj":Lcom/oneplus/gl/DrawableObject;
    :cond_1
    iput-object v2, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    .line 44
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->verifyAccess()V

    .line 23
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->verifyReleaseState()V

    .line 26
    invoke-direct {p0}, Lcom/oneplus/gl/DrawingContext;->abandonInternal()V

    .line 27
    return-void
.end method

.method public changeMvpMatrix([F)V
    .locals 3
    .param p1, "mvpMatrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->commit()V

    .line 54
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_MvpMatrix:[F

    const/16 v1, 0x10

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-void
.end method

.method public commit()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->verifyAccess()V

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->verifyReleaseState()V

    .line 69
    iget-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    if-nez v1, :cond_1

    .line 87
    :cond_0
    return-void

    .line 71
    :cond_1
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 72
    const/16 v1, 0x1906

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    .line 78
    .local v0, "obj":Lcom/oneplus/gl/DrawableObject;
    iget-object v1, v0, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    iput-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    .line 79
    iget-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    iput-object v3, v1, Lcom/oneplus/gl/DrawableObject;->prevDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 81
    :cond_3
    iput-object v3, v0, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    .line 82
    iput-object v3, v0, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 83
    invoke-virtual {v0, p0}, Lcom/oneplus/gl/DrawableObject;->onDraw(Lcom/oneplus/gl/DrawingContext;)V

    .line 84
    iget-object v1, v0, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    if-ne v1, p0, :cond_2

    iget-object v1, v0, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    if-eqz v1, :cond_2

    .line 85
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recursive object drawing on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/oneplus/gl/DrawableObject;)V
    .locals 3
    .param p1, "obj"    # Lcom/oneplus/gl/DrawableObject;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p1, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p1, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    invoke-virtual {v0}, Lcom/oneplus/gl/DrawingContext;->commit()V

    .line 101
    iget-object v0, p1, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursive object drawing on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/gl/DrawableObject;->hasAlphaBlending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p1, p0}, Lcom/oneplus/gl/DrawableObject;->onDraw(Lcom/oneplus/gl/DrawingContext;)V

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    iput-object v0, p1, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 114
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    iput-object p1, v0, Lcom/oneplus/gl/DrawableObject;->prevDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 116
    :cond_2
    iput-object p1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    goto :goto_0
.end method

.method protected onEglContextDestroying()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/oneplus/gl/DrawingContext;->abandonInternal()V

    .line 125
    invoke-super {p0}, Lcom/oneplus/gl/EglObject;->onEglContextDestroying()V

    .line 126
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/oneplus/gl/DrawingContext;->abandonInternal()V

    .line 134
    invoke-super {p0}, Lcom/oneplus/gl/EglObject;->onRelease()V

    .line 135
    return-void
.end method
