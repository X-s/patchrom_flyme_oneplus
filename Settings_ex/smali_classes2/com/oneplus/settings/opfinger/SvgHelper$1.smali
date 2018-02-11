.class Lcom/oneplus/settings/opfinger/SvgHelper$1;
.super Landroid/graphics/Canvas;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/SvgHelper;->getPathsForViewport(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/SvgHelper;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/settings/opfinger/SvgHelper;
    .param p2, "val$width"    # I
    .param p3, "val$height"    # I

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

    iput p2, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$width:I

    iput p3, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$height:I

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->mMatrix:Landroid/graphics/Matrix;

    .line 65
    return-void
.end method


# virtual methods
.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 80
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 83
    .local v0, "dst":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/opfinger/SvgHelper$1;->getMatrix(Landroid/graphics/Matrix;)V

    .line 84
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 86
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/SvgHelper;->-get0(Lcom/oneplus/settings/opfinger/SvgHelper;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

    invoke-static {v4}, Lcom/oneplus/settings/opfinger/SvgHelper;->-get1(Lcom/oneplus/settings/opfinger/SvgHelper;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v2, v0, v3}, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$width:I

    return v0
.end method
