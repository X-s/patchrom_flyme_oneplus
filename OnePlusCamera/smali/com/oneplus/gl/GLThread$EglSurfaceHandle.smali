.class final Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
.super Lcom/oneplus/base/Handle;
.source "GLThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gl/GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EglSurfaceHandle"
.end annotation


# instance fields
.field public eglSurface:Landroid/opengl/EGLSurface;

.field public height:I

.field public final owner:Lcom/oneplus/gl/GLThread;

.field public final surface:Landroid/view/Surface;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/oneplus/gl/GLThread;Landroid/view/Surface;II)V
    .locals 1
    .param p1, "owner"    # Lcom/oneplus/gl/GLThread;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 72
    const-string v0, "EglSurface"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->owner:Lcom/oneplus/gl/GLThread;

    .line 74
    iput-object p2, p0, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->surface:Landroid/view/Surface;

    .line 75
    iput p3, p0, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->width:I

    .line 76
    iput p4, p0, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->height:I

    .line 77
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->closeDirectly()V

    .line 82
    return-void
.end method

.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->owner:Lcom/oneplus/gl/GLThread;

    # invokes: Lcom/oneplus/gl/GLThread;->destroyEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gl/GLThread;->access$000(Lcom/oneplus/gl/GLThread;Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    .line 94
    .local v0, "eglSurface":Landroid/opengl/EGLSurface;
    if-eqz v0, :cond_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/base/Handle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ EGLSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/Handle;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
