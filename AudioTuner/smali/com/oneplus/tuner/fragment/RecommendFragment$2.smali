.class Lcom/oneplus/tuner/fragment/RecommendFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/fragment/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/fragment/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/RecommendFragment;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/RecommendFragment$2;->this$0:Lcom/oneplus/tuner/fragment/RecommendFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.oneplus.tunerACTION_LOGIN_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/RecommendFragment$2;->this$0:Lcom/oneplus/tuner/fragment/RecommendFragment;

    # getter for: Lcom/oneplus/tuner/fragment/RecommendFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v1}, Lcom/oneplus/tuner/fragment/RecommendFragment;->access$100(Lcom/oneplus/tuner/fragment/RecommendFragment;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->onLoadRefresh()V

    .line 199
    :cond_0
    return-void
.end method
