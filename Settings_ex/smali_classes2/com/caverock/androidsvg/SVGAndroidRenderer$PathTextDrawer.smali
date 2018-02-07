.class Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathTextDrawer"
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V
    .locals 0

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1579
    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 1580
    iput-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->path:Landroid/graphics/Path;

    .line 1581
    return-void
.end method


# virtual methods
.method public processText(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1595
    :cond_0
    :goto_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->x:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->x:F

    .line 1596
    return-void

    .line 1588
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    .line 1590
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$3(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->x:F

    iget v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->y:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v5, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1589
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$3(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->x:F

    iget v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->y:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v5, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method
