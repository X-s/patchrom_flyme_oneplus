.class Lcom/oppo/tribune/square/SquareTypeTitleView$1;
.super Landroid/os/Handler;
.source "SquareTypeTitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/SquareTypeTitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/SquareTypeTitleView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$1;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$1;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    # getter for: Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTypeTitleView;->access$000(Lcom/oppo/tribune/square/SquareTypeTitleView;)Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->snapToScreen(I)V

    .line 74
    return-void
.end method
