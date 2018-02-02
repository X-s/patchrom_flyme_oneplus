.class final Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
.super Lcom/oneplus/base/Handle;
.source "GLThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gl/GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveEglSurfaceHandle"
.end annotation


# instance fields
.field public final surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

.field final synthetic this$0:Lcom/oneplus/gl/GLThread;


# direct methods
.method public constructor <init>(Lcom/oneplus/gl/GLThread;Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/gl/GLThread;
    .param p2, "surfaceHandle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->this$0:Lcom/oneplus/gl/GLThread;

    .line 115
    const-string/jumbo v0, "ActiveEglSurface"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 116
    iput-object p2, p0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .line 113
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->this$0:Lcom/oneplus/gl/GLThread;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gl/GLThread;->-wrap1(Lcom/oneplus/gl/GLThread;Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;I)V

    .line 120
    return-void
.end method
