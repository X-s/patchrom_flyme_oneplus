.class public Lcom/oneplus/gl/DrawableObjectGroup;
.super Lcom/oneplus/gl/DrawableObject;
.source "DrawableObjectGroup.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation


# instance fields
.field private final m_Objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gl/DrawableObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oneplus/gl/DrawableObject;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    .line 21
    return-void
.end method

.method public varargs constructor <init>([Lcom/oneplus/gl/DrawableObject;)V
    .locals 4
    .param p1, "objects"    # [Lcom/oneplus/gl/DrawableObject;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oneplus/gl/DrawableObject;-><init>()V

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 35
    return-void

    .line 32
    :cond_0
    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addObject(ILcom/oneplus/gl/DrawableObject;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "obj"    # Lcom/oneplus/gl/DrawableObject;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawableObjectGroup;->verifyAccess()V

    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public addObject(Lcom/oneplus/gl/DrawableObject;)V
    .locals 1
    .param p1, "obj"    # Lcom/oneplus/gl/DrawableObject;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gl/DrawableObjectGroup;->addObject(ILcom/oneplus/gl/DrawableObject;)V

    .line 45
    return-void
.end method

.method public getObject(I)Lcom/oneplus/gl/DrawableObject;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/DrawableObject;

    return-object v0
.end method

.method public getObjectCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasAlphaBlending()Z
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 92
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gl/DrawableObject;

    invoke-virtual {v1}, Lcom/oneplus/gl/DrawableObject;->hasAlphaBlending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const/4 v1, 0x1

    goto :goto_1

    .line 87
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected onDraw(Lcom/oneplus/gl/DrawingContext;)V
    .locals 4
    .param p1, "dc"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 102
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gl/DrawableObject;

    iget-object v3, p0, Lcom/oneplus/gl/DrawableObjectGroup;->drawingContext:Lcom/oneplus/gl/DrawingContext;

    invoke-virtual {v2, v3}, Lcom/oneplus/gl/DrawableObject;->onDraw(Lcom/oneplus/gl/DrawingContext;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    invoke-super {p0}, Lcom/oneplus/gl/DrawableObject;->onRelease()V

    .line 111
    return-void
.end method

.method public removeObject(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawableObjectGroup;->verifyAccess()V

    .line 121
    iget-object v0, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public removeObject(Lcom/oneplus/gl/DrawableObject;)Z
    .locals 1
    .param p1, "obj"    # Lcom/oneplus/gl/DrawableObject;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/oneplus/gl/DrawableObjectGroup;->verifyAccess()V

    .line 133
    iget-object v0, p0, Lcom/oneplus/gl/DrawableObjectGroup;->m_Objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
