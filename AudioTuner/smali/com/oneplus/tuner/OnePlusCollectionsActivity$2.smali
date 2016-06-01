.class Lcom/oneplus/tuner/OnePlusCollectionsActivity$2;
.super Ljava/lang/Object;
.source "OnePlusCollectionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusCollectionsActivity;->doRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    const-string v0, "shuqi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run2 at = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsConfigEmpty:Z
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$500(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v1

    # setter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mIsConfigEmpty:Z
    invoke-static {v0, v1}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$502(Lcom/oneplus/tuner/OnePlusCollectionsActivity;Z)Z

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$400(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    .line 131
    return-void
.end method
