.class Lcom/oppo/tribune/square/TribunePostItemController$3;
.super Ljava/lang/Object;
.source "TribunePostItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/TribunePostItemController;->getItemClkLsn(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/square/TribunePostItemController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$position:I

.field final synthetic val$simpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/TribunePostItemController;Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->this$0:Lcom/oppo/tribune/square/TribunePostItemController;

    iput-object p2, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->val$simpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    iput p4, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->this$0:Lcom/oppo/tribune/square/TribunePostItemController;

    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->val$simpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->val$simpleThreadInfo:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v4

    iget v6, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->val$position:I

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/tribune/square/TribunePostItemController;->onTribuneItemClk(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;JI)V

    .line 72
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->this$0:Lcom/oppo/tribune/square/TribunePostItemController;

    iget-object v0, v0, Lcom/oppo/tribune/square/TribunePostItemController;->mHideListener:Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemController$3;->this$0:Lcom/oppo/tribune/square/TribunePostItemController;

    iget-object v0, v0, Lcom/oppo/tribune/square/TribunePostItemController;->mHideListener:Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;->OnHide()V

    .line 75
    :cond_0
    return-void
.end method
