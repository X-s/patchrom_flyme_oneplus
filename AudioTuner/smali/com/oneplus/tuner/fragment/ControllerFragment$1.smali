.class Lcom/oneplus/tuner/fragment/ControllerFragment$1;
.super Ljava/lang/Object;
.source "ControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/fragment/ControllerFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/fragment/ControllerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/ControllerFragment;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/ControllerFragment$1;->this$0:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment$1;->this$0:Lcom/oneplus/tuner/fragment/ControllerFragment;

    # getter for: Lcom/oneplus/tuner/fragment/ControllerFragment;->mIsConfigEmpty:Z
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->access$000(Lcom/oneplus/tuner/fragment/ControllerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment$1;->this$0:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v1

    # setter for: Lcom/oneplus/tuner/fragment/ControllerFragment;->mIsConfigEmpty:Z
    invoke-static {v0, v1}, Lcom/oneplus/tuner/fragment/ControllerFragment;->access$002(Lcom/oneplus/tuner/fragment/ControllerFragment;Z)Z

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment$1;->this$0:Lcom/oneplus/tuner/fragment/ControllerFragment;

    # getter for: Lcom/oneplus/tuner/fragment/ControllerFragment;->mIsConfigEmpty:Z
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->access$000(Lcom/oneplus/tuner/fragment/ControllerFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment$1;->this$0:Lcom/oneplus/tuner/fragment/ControllerFragment;

    # getter for: Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->access$100(Lcom/oneplus/tuner/fragment/ControllerFragment;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->onResume(Z)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/ControllerFragment$1;->this$0:Lcom/oneplus/tuner/fragment/ControllerFragment;

    # getter for: Lcom/oneplus/tuner/fragment/ControllerFragment;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->access$100(Lcom/oneplus/tuner/fragment/ControllerFragment;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    goto :goto_0
.end method
