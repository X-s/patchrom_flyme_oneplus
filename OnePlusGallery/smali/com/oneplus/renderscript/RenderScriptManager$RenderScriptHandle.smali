.class final Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;
.super Lcom/oneplus/base/Handle;
.source "RenderScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/renderscript/RenderScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderScriptHandle"
.end annotation


# instance fields
.field public final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "RenderScript"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;->thread:Ljava/lang/Thread;

    .line 44
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 49
    # invokes: Lcom/oneplus/renderscript/RenderScriptManager;->destroyRenderScript(Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;)V
    invoke-static {p0}, Lcom/oneplus/renderscript/RenderScriptManager;->access$0(Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;)V

    .line 50
    return-void
.end method
