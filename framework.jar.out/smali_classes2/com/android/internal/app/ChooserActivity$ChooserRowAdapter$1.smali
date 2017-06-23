.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->val$this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1040
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1041
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v3

    .line 1042
    .local v3, "rcount":I
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v6

    array-length v6, v6

    if-eq v6, v3, :cond_5

    .line 1044
    :cond_0
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v1

    .line 1045
    .local v1, "old":[Lcom/android/internal/app/ChooserActivity$RowScale;
    if-eqz v1, :cond_2

    array-length v2, v1

    .line 1046
    .local v2, "oldRCount":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    new-array v7, v3, [Lcom/android/internal/app/ChooserActivity$RowScale;

    # setter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v6, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$402(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;[Lcom/android/internal/app/ChooserActivity$RowScale;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 1047
    if-eqz v1, :cond_1

    if-lez v3, :cond_1

    .line 1048
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v6

    array-length v7, v1

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1052
    :cond_1
    move v0, v3

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 1053
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$RowScale;->cancelAnimation()V

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "oldRCount":I
    :cond_2
    move v2, v5

    .line 1045
    goto :goto_0

    .line 1056
    .restart local v0    # "i":I
    .restart local v2    # "oldRCount":I
    :cond_3
    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_4

    .line 1057
    new-instance v5, Lcom/android/internal/app/ChooserActivity$RowScale;

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/app/ChooserActivity$RowScale;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;FF)V

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$500(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ChooserActivity$RowScale;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v4

    .line 1059
    .local v4, "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v5

    aput-object v4, v5, v0

    .line 1056
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1067
    .end local v4    # "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    :cond_4
    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_5

    .line 1068
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$RowScale;->startAnimation()V

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1072
    .end local v0    # "i":I
    .end local v1    # "old":[Lcom/android/internal/app/ChooserActivity$RowScale;
    .end local v2    # "oldRCount":I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetChanged()V

    .line 1073
    return-void
.end method

.method public onInvalidated()V
    .locals 5

    .prologue
    .line 1077
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1078
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetInvalidated()V

    .line 1079
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1080
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/app/ChooserActivity$RowScale;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1081
    .local v3, "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$RowScale;->cancelAnimation()V

    .line 1080
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1084
    .end local v0    # "arr$":[Lcom/android/internal/app/ChooserActivity$RowScale;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    :cond_0
    return-void
.end method
