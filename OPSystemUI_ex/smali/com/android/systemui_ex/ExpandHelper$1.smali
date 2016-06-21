.class Lcom/android/systemui_ex/ExpandHelper$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/ExpandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/ExpandHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/ExpandHelper;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/systemui_ex/ExpandHelper$1;->this$0:Lcom/android/systemui_ex/ExpandHelper;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui_ex/ExpandHelper$1;->this$0:Lcom/android/systemui_ex/ExpandHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/ExpandHelper$1;->this$0:Lcom/android/systemui_ex/ExpandHelper;

    # getter for: Lcom/android/systemui_ex/ExpandHelper;->mResizedView:Lcom/android/systemui_ex/statusbar/ExpandableView;
    invoke-static {v1}, Lcom/android/systemui_ex/ExpandHelper;->access$000(Lcom/android/systemui_ex/ExpandHelper;)Lcom/android/systemui_ex/statusbar/ExpandableView;

    move-result-object v1

    const/4 v2, 0x4

    # invokes: Lcom/android/systemui_ex/ExpandHelper;->startExpanding(Lcom/android/systemui_ex/statusbar/ExpandableView;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/systemui_ex/ExpandHelper;->access$100(Lcom/android/systemui_ex/ExpandHelper;Lcom/android/systemui_ex/statusbar/ExpandableView;I)Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui_ex/ExpandHelper$1;->this$0:Lcom/android/systemui_ex/ExpandHelper;

    # getter for: Lcom/android/systemui_ex/ExpandHelper;->mExpanding:Z
    invoke-static {v0}, Lcom/android/systemui_ex/ExpandHelper;->access$200(Lcom/android/systemui_ex/ExpandHelper;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 138
    return-void
.end method
