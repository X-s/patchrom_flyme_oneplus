.class Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter$1;
.super Ljava/lang/Object;
.source "MyConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter$1;->this$1:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 336
    :goto_0
    return-void

    .line 290
    :sswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 291
    .local v1, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iget v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 292
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 298
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mExpanded:Z

    .line 299
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->setLocalUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 301
    iget-object v2, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter$1;->this$1:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    iget-object v2, v2, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    invoke-virtual {v2}, Lcom/oneplus/tuner/MyConfigActivity;->onEffectDataChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    .end local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 296
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 309
    .end local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :sswitch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 310
    .restart local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->setLocalModify(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 312
    .end local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :catch_1
    move-exception v0

    .line 313
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_2
    new-instance v3, Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    sget-object v4, Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;->RENAME:Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v3, v4, v2}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;-><init>(Lcom/oneplus/tuner/utillty/TunerConstant$DialogType;Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    iget-object v2, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter$1;->this$1:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    iget-object v2, v2, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    invoke-virtual {v2}, Lcom/oneplus/tuner/MyConfigActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v4, "rename as"

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :sswitch_3
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 327
    .restart local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->delete(Ljava/lang/Object;)I

    .line 328
    iget-object v2, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter$1;->this$1:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    iget-object v2, v2, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    const/4 v3, 0x0

    # setter for: Lcom/oneplus/tuner/MyConfigActivity;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v2, v3}, Lcom/oneplus/tuner/MyConfigActivity;->access$002(Lcom/oneplus/tuner/MyConfigActivity;Lcom/oneplus/tuner/providers/SoundEffectItem;)Lcom/oneplus/tuner/providers/SoundEffectItem;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 329
    .end local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :catch_2
    move-exception v0

    .line 330
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 287
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00a9 -> :sswitch_0
        0x7f0b00ad -> :sswitch_1
        0x7f0b00b1 -> :sswitch_2
        0x7f0b00b5 -> :sswitch_3
    .end sparse-switch
.end method
