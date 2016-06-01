.class Lcom/oppo/tribune/square/SquareTopLineControl$4;
.super Ljava/lang/Object;
.source "SquareTopLineControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/SquareTopLineControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/square/SquareTopLineControl;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/SquareTopLineControl;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineControl$4;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl$4;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->access$000(Lcom/oppo/tribune/square/SquareTopLineControl;)Lcom/oppo/tribune/square/SquareTopLineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->showLoadingProgress()V

    .line 288
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl$4;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->access$100(Lcom/oppo/tribune/square/SquareTopLineControl;)Lcom/oppo/tribune/square/SquareTopLineModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->downDataToInit()V

    .line 289
    return-void
.end method
