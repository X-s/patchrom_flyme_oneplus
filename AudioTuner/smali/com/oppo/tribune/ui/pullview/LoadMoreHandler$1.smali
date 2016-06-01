.class Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$1;
.super Ljava/lang/Object;
.source "LoadMoreHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$1;->this$0:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$1;->this$0:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    # invokes: Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->onLoadMore()V
    invoke-static {v0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->access$000(Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;)V

    .line 41
    return-void
.end method
