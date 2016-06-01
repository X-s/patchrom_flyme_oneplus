.class Lcom/oppo/tribune/square/TribunePostItemController$1;
.super Ljava/lang/Object;
.source "TribunePostItemController.java"

# interfaces
.implements Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/TribunePostItemController;->getListItemElementsClkLsn(Landroid/content/Context;)Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/square/TribunePostItemController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/TribunePostItemController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemController$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemController;

    iput-object p2, p0, Lcom/oppo/tribune/square/TribunePostItemController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMoreInfoClkLsn(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)Landroid/view/View$OnClickListener;
    .locals 2
    .param p1, "simpleThreadInfo"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p2, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemController$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemController;

    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemController$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/oppo/tribune/square/TribunePostItemController;->getItemClkLsn(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)Landroid/view/View$OnClickListener;
    invoke-static {v0, v1, p1, p2}, Lcom/oppo/tribune/square/TribunePostItemController;->access$000(Lcom/oppo/tribune/square/TribunePostItemController;Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getWholeItemClkLsn(Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;
    .locals 2
    .param p1, "mHandler"    # Landroid/os/Handler;
    .param p2, "simpleThreadInfo"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemController$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemController;

    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemController$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oppo/tribune/square/TribunePostItemController;->getUseBtnClkLsn2(Landroid/content/Context;Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method
