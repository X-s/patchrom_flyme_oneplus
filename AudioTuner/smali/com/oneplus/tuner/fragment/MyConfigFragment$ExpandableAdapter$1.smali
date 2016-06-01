.class Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter$1;
.super Ljava/lang/Object;
.source "MyConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter$1;->this$1:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 297
    :sswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 298
    .local v1, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iget v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 299
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 300
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 305
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mExpanded:Z

    .line 306
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->setLocalUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 308
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter$1;->this$1:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    iget-object v2, v2, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v2}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->onEffectDataChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 316
    .end local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :sswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter$1;->this$1:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    iget-object v2, v2, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    # getter for: Lcom/oneplus/tuner/fragment/MyConfigFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;
    invoke-static {v2}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->access$200(Lcom/oneplus/tuner/fragment/MyConfigFragment;)Lcom/oneplus/tuner/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter$1;->this$1:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    iget-object v2, v2, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    # getter for: Lcom/oneplus/tuner/fragment/MyConfigFragment;->mActivity:Lcom/oneplus/tuner/MainActivity;
    invoke-static {v2}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->access$200(Lcom/oneplus/tuner/fragment/MyConfigFragment;)Lcom/oneplus/tuner/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/tuner/MainActivity;->showCustomSettings()V

    .line 319
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 320
    .restart local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->setLocalModify(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 322
    .end local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :catch_1
    move-exception v0

    .line 323
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_2
    new-instance v3, Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    sget-object v4, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->RENAME:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v3, v4, v2}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;-><init>(Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter$1;->this$1:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    iget-object v2, v2, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v2}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v4, "rename as"

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :sswitch_3
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 337
    .restart local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->delete(Ljava/lang/Object;)I

    .line 338
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter$1;->this$1:Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;

    iget-object v2, v2, Lcom/oneplus/tuner/fragment/MyConfigFragment$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    const/4 v3, 0x0

    # setter for: Lcom/oneplus/tuner/fragment/MyConfigFragment;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v2, v3}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->access$002(Lcom/oneplus/tuner/fragment/MyConfigFragment;Lcom/oneplus/tuner/providers/SoundEffectItem;)Lcom/oneplus/tuner/providers/SoundEffectItem;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 339
    .end local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :catch_2
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 294
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00a9 -> :sswitch_0
        0x7f0b00ad -> :sswitch_1
        0x7f0b00b1 -> :sswitch_2
        0x7f0b00b5 -> :sswitch_3
    .end sparse-switch
.end method
