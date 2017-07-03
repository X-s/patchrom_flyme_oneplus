.class public Lcom/netease/filterenginelibrary/gpuimage/I;
.super Lcom/netease/filterenginelibrary/gpuimage/y;


# instance fields
.field protected a:Ljava/util/List;

.field protected k:Ljava/util/List;

.field protected l:[I

.field protected m:[I

.field protected final n:Ljava/nio/FloatBuffer;

.field protected final o:Ljava/nio/FloatBuffer;

.field protected final p:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>()V

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    :goto_0
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/P;->b:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->n:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->n:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/P;->b:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/al;->a:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->o:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->o:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/al;->a:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->a:Lcom/netease/filterenginelibrary/gpuimage/aj;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(Lcom/netease/filterenginelibrary/gpuimage/aj;ZZ)[F

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->p:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/I;->q()V

    goto :goto_0
.end method

.method private r()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->l:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->l:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->l:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->l:[I

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->c()V

    goto :goto_0
.end method

.method public a(F)V
    .locals 3

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/netease/filterenginelibrary/gpuimage/K;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/K;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/K;->a(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/I;->q()V

    return-void
.end method

.method public a(II)V
    .locals 11

    invoke-super {p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(II)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->l:[I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/I;->r()V

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->l:[I

    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    add-int/lit8 v0, v10, -0x1

    if-lt v9, v0, :cond_3

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->l:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v0, 0x8d40

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->l:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    aget v3, v3, v9

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_1
.end method

.method public a(ILcom/netease/filterenginelibrary/gpuimage/y;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/I;->q()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/PointF;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/netease/filterenginelibrary/gpuimage/K;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/K;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/K;->a(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/filterenginelibrary/gpuimage/y;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/I;->q()V

    goto :goto_0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/I;->g()V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/I;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->l:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v4, v0

    move v2, p2

    :goto_0
    if-ge v4, v5, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    add-int/lit8 v1, v5, -0x1

    if-ge v4, v1, :cond_4

    const/4 v1, 0x1

    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    const v1, 0x8d40

    iget-object v6, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->l:[I

    aget v6, v6, v4

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    :cond_2
    instance-of v1, v0, Lcom/netease/filterenginelibrary/gpuimage/v;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-ge v4, v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/netease/filterenginelibrary/gpuimage/v;

    invoke-virtual {v1, p2}, Lcom/netease/filterenginelibrary/gpuimage/v;->a(I)V

    :cond_3
    :goto_2
    if-nez v4, :cond_7

    const/4 v1, 0x1

    if-ne v5, v1, :cond_6

    invoke-virtual {v0, p1, v2, p3, p4}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :goto_3
    if-eqz v3, :cond_a

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    aget v0, v0, v4

    :goto_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    :cond_5
    move-object v1, v0

    check-cast v1, Lcom/netease/filterenginelibrary/gpuimage/v;

    iget-object v6, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->m:[I

    add-int/lit8 v7, v4, -0x2

    aget v6, v6, v7

    invoke-virtual {v1, v6}, Lcom/netease/filterenginelibrary/gpuimage/v;->a(I)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->n:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, v2, v1, p4}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v5, -0x1

    if-ne v4, v1, :cond_9

    rem-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->p:Ljava/nio/FloatBuffer;

    :goto_5
    invoke-virtual {v0, p1, v2, p3, v1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->o:Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->n:Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, v2, v1, v6}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/I;->r()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->b()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->e()V

    goto :goto_0
.end method

.method public o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    return-object v0
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    instance-of v1, v0, Lcom/netease/filterenginelibrary/gpuimage/I;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/netease/filterenginelibrary/gpuimage/I;

    invoke-virtual {v1}, Lcom/netease/filterenginelibrary/gpuimage/I;->q()V

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/I;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/I;->p()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/I;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
