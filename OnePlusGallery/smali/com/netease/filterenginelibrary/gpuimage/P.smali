.class public Lcom/netease/filterenginelibrary/gpuimage/P;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/filterenginelibrary/gpuimage/p;


# static fields
.field public static final a:I = -0x1

.field static final b:[F

.field private static final x:Ljava/lang/String; = "FilterEngineSDK"


# instance fields
.field public final c:Ljava/lang/Object;

.field private d:Lcom/netease/filterenginelibrary/gpuimage/y;

.field private e:I

.field private f:Landroid/graphics/SurfaceTexture;

.field private final g:Ljava/nio/FloatBuffer;

.field private final h:Ljava/nio/FloatBuffer;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private final m:Ljava/util/Queue;

.field private final n:Ljava/util/Queue;

.field private o:Lcom/netease/filterenginelibrary/gpuimage/aj;

.field private p:Landroid/graphics/RectF;

.field private q:Z

.field private r:Z

.field private s:Lcom/netease/filterenginelibrary/gpuimage/u;

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private y:Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/P;->b:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/y;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->c:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->f:Landroid/graphics/SurfaceTexture;

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->a:Lcom/netease/filterenginelibrary/gpuimage/aj;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->o:Lcom/netease/filterenginelibrary/gpuimage/aj;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->p:Landroid/graphics/RectF;

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/u;->a:Lcom/netease/filterenginelibrary/gpuimage/u;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->s:Lcom/netease/filterenginelibrary/gpuimage/u;

    iput v2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->t:F

    iput v2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->u:F

    iput v2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->v:F

    iput v3, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->w:F

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->m:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->n:Ljava/util/Queue;

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

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->g:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->g:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/P;->b:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

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

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->h:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->a:Lcom/netease/filterenginelibrary/gpuimage/aj;

    invoke-virtual {p0, v0, v4, v4}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/aj;ZZ)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->p:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic a(Lcom/netease/filterenginelibrary/gpuimage/P;)Lcom/netease/filterenginelibrary/gpuimage/y;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/filterenginelibrary/gpuimage/P;I)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->e:I

    return-void
.end method

.method static synthetic a(Lcom/netease/filterenginelibrary/gpuimage/P;Lcom/netease/filterenginelibrary/gpuimage/y;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    return-void
.end method

.method private a(Ljava/util/Queue;)V
    .locals 1

    monitor-enter p1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/netease/filterenginelibrary/gpuimage/P;)I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->i:I

    return v0
.end method

.method static synthetic b(Lcom/netease/filterenginelibrary/gpuimage/P;I)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->k:I

    return-void
.end method

.method static synthetic c(Lcom/netease/filterenginelibrary/gpuimage/P;)I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->j:I

    return v0
.end method

.method static synthetic c(Lcom/netease/filterenginelibrary/gpuimage/P;I)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->l:I

    return-void
.end method

.method static synthetic d(Lcom/netease/filterenginelibrary/gpuimage/P;)I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->e:I

    return v0
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/P;->b:[F

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->o:Lcom/netease/filterenginelibrary/gpuimage/aj;

    iget-boolean v2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->q:Z

    iget-boolean v3, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->r:Z

    iget-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->p:Landroid/graphics/RectF;

    invoke-static {v1, v2, v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(Lcom/netease/filterenginelibrary/gpuimage/aj;ZZLandroid/graphics/RectF;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method static synthetic e(Lcom/netease/filterenginelibrary/gpuimage/P;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/P;->e()V

    return-void
.end method

.method static synthetic f(Lcom/netease/filterenginelibrary/gpuimage/P;)Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->y:Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/R;

    invoke-direct {v0, p0}, Lcom/netease/filterenginelibrary/gpuimage/R;-><init>(Lcom/netease/filterenginelibrary/gpuimage/P;)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(FFFF)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->t:F

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->u:F

    iput p3, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->v:F

    iput p4, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->w:F

    return-void
.end method

.method public a(IZZ)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->a:Lcom/netease/filterenginelibrary/gpuimage/aj;

    :goto_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/aj;ZZ)V

    return-void

    :sswitch_0
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->b:Lcom/netease/filterenginelibrary/gpuimage/aj;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->c:Lcom/netease/filterenginelibrary/gpuimage/aj;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->d:Lcom/netease/filterenginelibrary/gpuimage/aj;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/S;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/S;-><init>(Lcom/netease/filterenginelibrary/gpuimage/P;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/filterenginelibrary/gpuimage/aj;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->o:Lcom/netease/filterenginelibrary/gpuimage/aj;

    iput-boolean p2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->q:Z

    iput-boolean p3, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->r:Z

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/P;->e()V

    return-void
.end method

.method public a(Lcom/netease/filterenginelibrary/gpuimage/u;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->s:Lcom/netease/filterenginelibrary/gpuimage/u;

    return-void
.end method

.method public a(Lcom/netease/filterenginelibrary/gpuimage/y;)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/Q;

    invoke-direct {v0, p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/Q;-><init>(Lcom/netease/filterenginelibrary/gpuimage/P;Lcom/netease/filterenginelibrary/gpuimage/y;)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->y:Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;

    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->m:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->t:F

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->u:F

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->v:F

    iget v3, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->w:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->m:Ljava/util/Queue;

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljava/util/Queue;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->e:I

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->g:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->n:Ljava/util/Queue;

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljava/util/Queue;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->f:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    const/4 v0, 0x0

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->i:I

    iput p3, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->j:I

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0, p2, p3}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(II)V

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/P;->e()V

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->c()V

    return-void
.end method

.method protected b()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->i:I

    return v0
.end method

.method protected b(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->n:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->n:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected c()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->j:I

    return v0
.end method

.method public d()Lcom/netease/filterenginelibrary/gpuimage/aj;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/P;->o:Lcom/netease/filterenginelibrary/gpuimage/aj;

    return-object v0
.end method
