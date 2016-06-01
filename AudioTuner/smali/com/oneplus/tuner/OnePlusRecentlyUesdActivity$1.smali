.class Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity$1;
.super Ljava/lang/Object;
.source "OnePlusRecentlyUesdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mIsConfigEmpty:Z
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->access$000(Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v1

    # setter for: Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mIsConfigEmpty:Z
    invoke-static {v0, v1}, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->access$002(Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;Z)Z

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;->access$100(Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->onResume(Z)V

    .line 50
    return-void
.end method
