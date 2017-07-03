.class public final Lcom/oneplus/gl/DrawingContext;
.super Lcom/oneplus/gl/EglObject;
.source "DrawingContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gl/DrawingContext$CoordinateSystem;
    }
.end annotation


# instance fields
.field private m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

.field private m_CoordinateSystem:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

.field private final m_MvpMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/gl/EglObject;-><init>()V

    .line 14
    sget-object v0, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->X_RIGHT_Y_UP:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    iput-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_CoordinateSystem:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_MvpMatrix:[F

    .line 39
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->resetMvpMatrix()V

    .line 40
    return-void
.end method

.method private abandonInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    .line 61
    .local v1, "obj":Lcom/oneplus/gl/DrawableObject;
    :goto_0
    if-nez v1, :cond_0

    .line 70
    iput-object v2, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    .line 71
    return-void

    .line 63
    :cond_0
    iget-object v0, v1, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 64
    .local v0, "nextObj":Lcom/oneplus/gl/DrawableObject;
    iput-object v2, v1, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    .line 65
    iput-object v2, v1, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 66
    if-eqz v0, :cond_1

    .line 67
    iput-object v2, v0, Lcom/oneplus/gl/DrawableObject;->prevDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 68
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public abandon()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->verifyAccess()V

    .line 50
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->verifyReleaseState()V

    .line 53
    invoke-direct {p0}, Lcom/oneplus/gl/DrawingContext;->abandonInternal()V

    .line 54
    return-void
.end method

.method public changeMvpMatrix([F)V
    .locals 3
    .param p1, "mvpMatrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->commit()V

    .line 81
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_MvpMatrix:[F

    const/16 v1, 0x10

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
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

    .line 92
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->verifyAccess()V

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawingContext;->verifyReleaseState()V

    .line 96
    iget-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    if-nez v1, :cond_1

    .line 114
    :cond_0
    return-void

    .line 98
    :cond_1
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 99
    const/16 v1, 0x1906

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    .line 105
    .local v0, "obj":Lcom/oneplus/gl/DrawableObject;
    iget-object v1, v0, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    iput-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    .line 106
    iget-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    iput-object v3, v1, Lcom/oneplus/gl/DrawableObject;->prevDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 108
    :cond_3
    iput-object v3, v0, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    .line 109
    iput-object v3, v0, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 110
    invoke-virtual {v0, p0}, Lcom/oneplus/gl/DrawableObject;->onDraw(Lcom/oneplus/gl/DrawingContext;)V

    .line 111
    iget-object v1, v0, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    if-ne v1, p0, :cond_2

    iget-object v1, v0, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    if-eqz v1, :cond_2

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recursive object drawing on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .line 125
    iget-object v0, p1, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p1, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    invoke-virtual {v0}, Lcom/oneplus/gl/DrawingContext;->commit()V

    .line 128
    iget-object v0, p1, Lcom/oneplus/gl/DrawableObject;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recursive object drawing on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/gl/DrawableObject;->hasAlphaBlending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {p1, p0}, Lcom/oneplus/gl/DrawableObject;->onDraw(Lcom/oneplus/gl/DrawingContext;)V

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    iput-object v0, p1, Lcom/oneplus/gl/DrawableObject;->nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 141
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    iput-object p1, v0, Lcom/oneplus/gl/DrawableObject;->prevDrawableObj:Lcom/oneplus/gl/DrawableObject;

    .line 143
    :cond_2
    iput-object p1, p0, Lcom/oneplus/gl/DrawingContext;->m_AlphaBlendingObjects:Lcom/oneplus/gl/DrawableObject;

    goto :goto_0
.end method

.method public getCoordinateSystem()Lcom/oneplus/gl/DrawingContext$CoordinateSystem;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_CoordinateSystem:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    return-object v0
.end method

.method public getMvpMatrix()[F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_MvpMatrix:[F

    return-object v0
.end method

.method protected onEglContextDestroying()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/oneplus/gl/DrawingContext;->abandonInternal()V

    .line 172
    invoke-super {p0}, Lcom/oneplus/gl/EglObject;->onEglContextDestroying()V

    .line 173
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/oneplus/gl/DrawingContext;->abandonInternal()V

    .line 181
    invoke-super {p0}, Lcom/oneplus/gl/EglObject;->onRelease()V

    .line 182
    return-void
.end method

.method public resetMvpMatrix()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/oneplus/gl/DrawingContext;->m_MvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 191
    return-void
.end method
