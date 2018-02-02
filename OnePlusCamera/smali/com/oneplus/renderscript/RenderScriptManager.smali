.class public final Lcom/oneplus/renderscript/RenderScriptManager;
.super Ljava/lang/Object;
.source "RenderScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;,
        Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RenderScriptManager"

.field private static final m_RenderScriptState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;)V
    .locals 0
    .param p0, "handle"    # Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;

    .prologue
    invoke-static {p0}, Lcom/oneplus/renderscript/RenderScriptManager;->destroyRenderScript(Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/renderscript/RenderScriptManager;->m_RenderScriptState:Ljava/lang/ThreadLocal;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v2, Lcom/oneplus/renderscript/RenderScriptManager;->m_RenderScriptState:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;

    .line 67
    .local v1, "state":Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;
    if-nez v1, :cond_0

    .line 69
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    .line 70
    .local v0, "rs":Landroid/renderscript/RenderScript;
    new-instance v1, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;

    .end local v1    # "state":Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;
    invoke-direct {v1, v0}, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;-><init>(Landroid/renderscript/RenderScript;)V

    .line 71
    .restart local v1    # "state":Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;
    sget-object v2, Lcom/oneplus/renderscript/RenderScriptManager;->m_RenderScriptState:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 75
    .end local v0    # "rs":Landroid/renderscript/RenderScript;
    :goto_0
    new-instance v2, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;

    invoke-direct {v2}, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;-><init>()V

    return-object v2

    .line 74
    :cond_0
    iget v2, v1, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;->referenceCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;->referenceCounter:I

    goto :goto_0
.end method

.method private static destroyRenderScript(Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;)V
    .locals 4
    .param p0, "handle"    # Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v1, p0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 83
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string/jumbo v2, "Cannot destroy RenderScript context from another thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    sget-object v1, Lcom/oneplus/renderscript/RenderScriptManager;->m_RenderScriptState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;

    .line 85
    .local v0, "state":Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;
    if-eqz v0, :cond_1

    .line 87
    iget v1, v0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;->referenceCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;->referenceCounter:I

    .line 88
    iget v1, v0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;->referenceCounter:I

    if-gtz v1, :cond_1

    .line 90
    sget-object v1, Lcom/oneplus/renderscript/RenderScriptManager;->m_RenderScriptState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    iget-object v1, v0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->finish()V

    .line 92
    iget-object v1, v0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 80
    :cond_1
    return-void
.end method

.method public static getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;
    .locals 5
    .param p0, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    const/4 v4, 0x0

    .line 105
    if-nez p0, :cond_0

    .line 107
    const-string/jumbo v2, "RenderScriptManager"

    const-string/jumbo v3, "getRenderScript() - Null handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-object v4

    .line 110
    :cond_0
    instance-of v2, p0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 115
    check-cast v0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;

    .line 116
    .local v0, "rsHandle":Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;
    iget-object v2, v0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 117
    new-instance v2, Ljava/lang/IllegalAccessError;

    const-string/jumbo v3, "Cannot get RenderScript context from another thread."

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v0    # "rsHandle":Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;
    :cond_1
    const-string/jumbo v2, "RenderScriptManager"

    const-string/jumbo v3, "getRenderScript() - Invalid handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v4

    .line 118
    .restart local v0    # "rsHandle":Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptHandle;
    :cond_2
    sget-object v2, Lcom/oneplus/renderscript/RenderScriptManager;->m_RenderScriptState:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;

    .line 119
    .local v1, "state":Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;
    if-eqz v1, :cond_3

    .line 120
    iget-object v2, v1, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;->renderScript:Landroid/renderscript/RenderScript;

    return-object v2

    .line 121
    :cond_3
    const-string/jumbo v2, "RenderScriptManager"

    const-string/jumbo v3, "getRenderScript() - No RenderScript context"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object v4
.end method
