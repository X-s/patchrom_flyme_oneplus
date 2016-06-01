.class Lcom/oneplus/tuner/MixerActivity$4$1;
.super Ljava/lang/Object;
.source "MixerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MixerActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/MixerActivity$4;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MixerActivity$4;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 428
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$000(Lcom/oneplus/tuner/MixerActivity;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    .line 429
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$1000(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v5

    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v2

    iget v6, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$000(Lcom/oneplus/tuner/MixerActivity;)I

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->modifyCollectionStatus(Landroid/content/Context;II)V

    .line 435
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$1100(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v5

    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v2

    iget v6, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$000(Lcom/oneplus/tuner/MixerActivity;)I

    move-result v2

    if-ne v2, v4, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->postUserCollectionToServer(Landroid/content/Context;II)I

    move-result v1

    .line 441
    .local v1, "ret":I
    if-nez v1, :cond_0

    .line 442
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$1200(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v5

    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v2

    iget v6, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$000(Lcom/oneplus/tuner/MixerActivity;)I

    move-result v2

    if-ne v2, v4, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v5, v6, v2}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->modifyCollectionStatus(Landroid/content/Context;II)V

    .line 448
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$1300(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v5, v5, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v5}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v5

    iget v5, v5, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-static {v2, v5, v3}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->modifyCollectionIsDirty(Landroid/content/Context;II)V

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$000(Lcom/oneplus/tuner/MixerActivity;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 455
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # setter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v2, v3}, Lcom/oneplus/tuner/MixerActivity;->access$002(Lcom/oneplus/tuner/MixerActivity;I)I

    .line 486
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$1800(Lcom/oneplus/tuner/MixerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 488
    return-void

    .end local v1    # "ret":I
    :cond_2
    move v2, v4

    .line 429
    goto :goto_0

    :cond_3
    move v2, v4

    .line 435
    goto :goto_1

    .restart local v1    # "ret":I
    :cond_4
    move v2, v4

    .line 442
    goto :goto_2

    .line 456
    :cond_5
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$000(Lcom/oneplus/tuner/MixerActivity;)I

    move-result v2

    if-nez v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # setter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v2, v4}, Lcom/oneplus/tuner/MixerActivity;->access$002(Lcom/oneplus/tuner/MixerActivity;I)I

    goto :goto_3

    .line 460
    .end local v1    # "ret":I
    :cond_6
    new-instance v0, Lcom/oneplus/tuner/database/bean/UserCollection;

    invoke-direct {v0}, Lcom/oneplus/tuner/database/bean/UserCollection;-><init>()V

    .line 461
    .local v0, "bean":Lcom/oneplus/tuner/database/bean/UserCollection;
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v2

    iget v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-virtual {v0, v2}, Lcom/oneplus/tuner/database/bean/UserCollection;->setConfigId(I)V

    .line 462
    invoke-virtual {v0, v4}, Lcom/oneplus/tuner/database/bean/UserCollection;->setStatus(I)V

    .line 463
    invoke-virtual {v0, v4}, Lcom/oneplus/tuner/database/bean/UserCollection;->setIsDirty(I)V

    .line 464
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$1400(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->addUserCollection(Landroid/content/Context;Lcom/oneplus/tuner/database/bean/UserCollection;)V

    .line 466
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$1500(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v5, v5, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v5}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v5

    iget v5, v5, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-static {v2, v5, v4}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->postUserCollectionToServer(Landroid/content/Context;II)I

    move-result v1

    .line 471
    .restart local v1    # "ret":I
    if-nez v1, :cond_7

    .line 472
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$1600(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v5, v5, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v5}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v5

    iget v5, v5, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-static {v2, v5, v4}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->modifyCollectionStatus(Landroid/content/Context;II)V

    .line 477
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$1700(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v5, v5, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v5}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v5

    iget v5, v5, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-static {v2, v5, v3}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->modifyCollectionIsDirty(Landroid/content/Context;II)V

    .line 483
    :cond_7
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$4$1;->this$1:Lcom/oneplus/tuner/MixerActivity$4;

    iget-object v2, v2, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # setter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v2, v4}, Lcom/oneplus/tuner/MixerActivity;->access$002(Lcom/oneplus/tuner/MixerActivity;I)I

    goto/16 :goto_3
.end method
