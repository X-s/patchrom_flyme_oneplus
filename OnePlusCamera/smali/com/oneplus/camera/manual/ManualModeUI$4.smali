.class Lcom/oneplus/camera/manual/ManualModeUI$4;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get9(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/Allocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get9(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 268
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set9(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get10(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/Allocation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get10(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 273
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set11(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get17(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/ScriptIntrinsicHistogram;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get17(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/ScriptIntrinsicHistogram;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicHistogram;->destroy()V

    .line 278
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set17(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/renderscript/ScriptIntrinsicHistogram;)Landroid/renderscript/ScriptIntrinsicHistogram;

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get16(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/RenderScript;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get16(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/renderscript/RenderScript;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 283
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$4;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set15(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/renderscript/RenderScript;)Landroid/renderscript/RenderScript;

    .line 263
    :cond_3
    return-void
.end method
