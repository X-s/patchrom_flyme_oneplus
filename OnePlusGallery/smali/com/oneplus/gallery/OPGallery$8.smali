.class Lcom/oneplus/gallery/OPGallery$8;
.super Lcom/oneplus/gallery/GalleryDialogFragment;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;

.field final synthetic val$callback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

.field final synthetic val$deleteOriginal:Z

.field final synthetic val$finalMediaType:Lcom/oneplus/gallery/media/MediaType;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

.field final synthetic val$mediaList:Ljava/util/List;

.field final synthetic val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;ZLcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$8;->this$0:Lcom/oneplus/gallery/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery/OPGallery$8;->val$mediaList:Ljava/util/List;

    iput-object p3, p0, Lcom/oneplus/gallery/OPGallery$8;->val$finalMediaType:Lcom/oneplus/gallery/media/MediaType;

    iput-boolean p4, p0, Lcom/oneplus/gallery/OPGallery$8;->val$deleteOriginal:Z

    iput-object p5, p0, Lcom/oneplus/gallery/OPGallery$8;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    iput-object p6, p0, Lcom/oneplus/gallery/OPGallery$8;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    iput-object p7, p0, Lcom/oneplus/gallery/OPGallery$8;->val$callback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f090021

    const v4, 0x7f090020

    const v5, 0x7f09001f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 663
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery$8;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 664
    .local v0, "activity":Landroid/app/Activity;
    iget-object v7, p0, Lcom/oneplus/gallery/OPGallery$8;->val$mediaList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 666
    sget-object v7, Lcom/oneplus/gallery/OPGallery$16;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery$8;->val$finalMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v8}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 677
    iget-object v4, p0, Lcom/oneplus/gallery/OPGallery$8;->this$0:Lcom/oneplus/gallery/OPGallery;

    iget-object v4, v4, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "deleteMedia() - Unknown media type"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/4 v4, 0x0

    .line 702
    :goto_0
    return-object v4

    .line 669
    :pswitch_0
    const v6, 0x7f09002d

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, "title":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/oneplus/gallery/OPGallery$8;->val$deleteOriginal:Z

    if-eqz v6, :cond_0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "message":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/oneplus/gallery/OPGallery$8;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v5, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 702
    .local v1, "isDarkMode":Z
    new-instance v5, Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_6

    const v4, 0x7f0a000d

    :goto_3
    invoke-direct {v5, v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090033

    new-instance v6, Lcom/oneplus/gallery/OPGallery$8$2;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/OPGallery$8$2;-><init>(Lcom/oneplus/gallery/OPGallery$8;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/oneplus/gallery/OPGallery$8$1;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/OPGallery$8$1;-><init>(Lcom/oneplus/gallery/OPGallery$8;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .end local v1    # "isDarkMode":Z
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 670
    goto :goto_1

    .line 673
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f09002f

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 674
    .restart local v3    # "title":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/oneplus/gallery/OPGallery$8;->val$deleteOriginal:Z

    if-eqz v4, :cond_1

    const v4, 0x7f090022

    :goto_4
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 675
    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_2

    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 674
    goto :goto_4

    .line 683
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/oneplus/gallery/OPGallery$16;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery$8;->val$finalMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v8}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 694
    const v4, 0x7f09002a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery$8;->val$mediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 695
    .restart local v3    # "title":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/oneplus/gallery/OPGallery$8;->val$deleteOriginal:Z

    if-eqz v4, :cond_5

    const v4, 0x7f09001c

    :goto_5
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto/16 :goto_2

    .line 686
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_2
    const v6, 0x7f09002e

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/oneplus/gallery/OPGallery$8;->val$mediaList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 687
    .restart local v3    # "title":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/oneplus/gallery/OPGallery$8;->val$deleteOriginal:Z

    if-eqz v6, :cond_3

    :goto_6
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 688
    .restart local v2    # "message":Ljava/lang/String;
    goto/16 :goto_2

    .end local v2    # "message":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 687
    goto :goto_6

    .line 690
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_3
    const v4, 0x7f090030

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/gallery/OPGallery$8;->val$mediaList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 691
    .restart local v3    # "title":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/oneplus/gallery/OPGallery$8;->val$deleteOriginal:Z

    if-eqz v4, :cond_4

    const v6, 0x7f090022

    :cond_4
    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 692
    .restart local v2    # "message":Ljava/lang/String;
    goto/16 :goto_2

    .line 695
    .end local v2    # "message":Ljava/lang/String;
    :cond_5
    const v4, 0x7f09001b

    goto :goto_5

    .line 702
    .restart local v1    # "isDarkMode":Z
    .restart local v2    # "message":Ljava/lang/String;
    :cond_6
    const v4, 0x7f0a000b

    goto/16 :goto_3

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 683
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
