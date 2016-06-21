.class Lcom/android/systemui_ex/SearchPanelCircleView$4;
.super Landroid/view/ViewOutlineProvider;
.source "SearchPanelCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/SearchPanelCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/SearchPanelCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/SearchPanelCircleView;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/systemui_ex/SearchPanelCircleView$4;->this$0:Lcom/android/systemui_ex/SearchPanelCircleView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui_ex/SearchPanelCircleView$4;->this$0:Lcom/android/systemui_ex/SearchPanelCircleView;

    # getter for: Lcom/android/systemui_ex/SearchPanelCircleView;->mCircleSize:F
    invoke-static {v0}, Lcom/android/systemui_ex/SearchPanelCircleView;->access$300(Lcom/android/systemui_ex/SearchPanelCircleView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui_ex/SearchPanelCircleView$4;->this$0:Lcom/android/systemui_ex/SearchPanelCircleView;

    # getter for: Lcom/android/systemui_ex/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/systemui_ex/SearchPanelCircleView;->access$400(Lcom/android/systemui_ex/SearchPanelCircleView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/android/systemui_ex/SearchPanelCircleView$4;->this$0:Lcom/android/systemui_ex/SearchPanelCircleView;

    # getter for: Lcom/android/systemui_ex/SearchPanelCircleView;->mOutlineAlpha:F
    invoke-static {v0}, Lcom/android/systemui_ex/SearchPanelCircleView;->access$500(Lcom/android/systemui_ex/SearchPanelCircleView;)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 117
    return-void

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    goto :goto_0
.end method
