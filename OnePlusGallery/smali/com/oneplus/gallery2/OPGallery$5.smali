.class Lcom/oneplus/gallery2/OPGallery$5;
.super Lcom/oneplus/gallery2/GalleryDialogFragment;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;ILcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGallery;

.field final synthetic val$callback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

.field final synthetic val$deleteOriginal:Z

.field final synthetic val$finalMediaType:Lcom/oneplus/gallery2/media/MediaType;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

.field final synthetic val$mediaList:Ljava/util/List;

.field final synthetic val$mediaSet:Lcom/oneplus/gallery2/media/MediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaType;ZLcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$5;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$mediaList:Ljava/util/List;

    iput-object p3, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$finalMediaType:Lcom/oneplus/gallery2/media/MediaType;

    iput-boolean p4, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$deleteOriginal:Z

    iput-object p5, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    iput-object p6, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    iput-object p7, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$callback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;-><init>()V

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

    .line 625
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGallery$5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 626
    .local v0, "activity":Landroid/app/Activity;
    iget-object v7, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$mediaList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 628
    sget-object v7, Lcom/oneplus/gallery2/OPGallery$13;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$finalMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v8}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 639
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$5;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iget-object v4, v4, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "deleteMedia() - Unknown media type"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v4, 0x0

    .line 664
    :goto_0
    return-object v4

    .line 631
    :pswitch_0
    const v6, 0x7f09002d

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "title":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$deleteOriginal:Z

    if-eqz v6, :cond_0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "message":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$galleryActivity:Lcom/oneplus/gallery2/GalleryActivity;

    sget-object v5, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 664
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

    new-instance v6, Lcom/oneplus/gallery2/OPGallery$5$2;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/OPGallery$5$2;-><init>(Lcom/oneplus/gallery2/OPGallery$5;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/oneplus/gallery2/OPGallery$5$1;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/OPGallery$5$1;-><init>(Lcom/oneplus/gallery2/OPGallery$5;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .end local v1    # "isDarkMode":Z
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 632
    goto :goto_1

    .line 635
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f09002f

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 636
    .restart local v3    # "title":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$deleteOriginal:Z

    if-eqz v4, :cond_1

    const v4, 0x7f090022

    :goto_4
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 637
    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_2

    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 636
    goto :goto_4

    .line 645
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/oneplus/gallery2/OPGallery$13;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$finalMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v8}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 656
    const v4, 0x7f09002a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$mediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 657
    .restart local v3    # "title":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$deleteOriginal:Z

    if-eqz v4, :cond_5

    const v4, 0x7f09001c

    :goto_5
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto/16 :goto_2

    .line 648
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_2
    const v6, 0x7f09002e

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$mediaList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 649
    .restart local v3    # "title":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$deleteOriginal:Z

    if-eqz v6, :cond_3

    :goto_6
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 650
    .restart local v2    # "message":Ljava/lang/String;
    goto/16 :goto_2

    .end local v2    # "message":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 649
    goto :goto_6

    .line 652
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_3
    const v4, 0x7f090030

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$mediaList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 653
    .restart local v3    # "title":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/oneplus/gallery2/OPGallery$5;->val$deleteOriginal:Z

    if-eqz v4, :cond_4

    const v6, 0x7f090022

    :cond_4
    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 654
    .restart local v2    # "message":Ljava/lang/String;
    goto/16 :goto_2

    .line 657
    .end local v2    # "message":Ljava/lang/String;
    :cond_5
    const v4, 0x7f09001b

    goto :goto_5

    .line 664
    .restart local v1    # "isDarkMode":Z
    .restart local v2    # "message":Ljava/lang/String;
    :cond_6
    const v4, 0x7f0a000b

    goto/16 :goto_3

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 645
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
