.class Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment$1;
.super Ljava/lang/Object;
.source "OnePlusCategoryNewlySharedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment$1;->this$0:Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment$1;->this$0:Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

    # getter for: Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mIsConfigEmpty:Z
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->access$000(Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment$1;->this$0:Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v1

    # setter for: Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mIsConfigEmpty:Z
    invoke-static {v0, v1}, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->access$002(Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;Z)Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment$1;->this$0:Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;

    # getter for: Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;->access$100(Lcom/oneplus/tuner/fragment/OnePlusCategoryNewlySharedFragment;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    .line 58
    return-void
.end method
