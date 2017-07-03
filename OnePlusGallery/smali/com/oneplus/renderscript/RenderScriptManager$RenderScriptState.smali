.class final Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;
.super Ljava/lang/Object;
.source "RenderScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/renderscript/RenderScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderScriptState"
.end annotation


# instance fields
.field public referenceCounter:I

.field public final renderScript:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;->referenceCounter:I

    .line 30
    iput-object p1, p0, Lcom/oneplus/renderscript/RenderScriptManager$RenderScriptState;->renderScript:Landroid/renderscript/RenderScript;

    .line 31
    return-void
.end method
