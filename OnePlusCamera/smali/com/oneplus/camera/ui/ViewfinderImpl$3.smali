.class Lcom/oneplus/camera/ui/ViewfinderImpl$3;
.super Landroid/view/View;
.source "ViewfinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ViewfinderImpl;->initializeUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$3;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl$3;->this$0:Lcom/oneplus/camera/ui/ViewfinderImpl;

    # invokes: Lcom/oneplus/camera/ui/ViewfinderImpl;->onDrawOverlay(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->access$400(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/graphics/Canvas;)V

    .line 339
    return-void
.end method
