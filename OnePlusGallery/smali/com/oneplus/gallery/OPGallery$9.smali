.class Lcom/oneplus/gallery/OPGallery$9;
.super Lcom/oneplus/gallery/GalleryDialogFragment;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;

.field final synthetic val$finalMediaType:Lcom/oneplus/gallery/media/MediaType;

.field final synthetic val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

.field final synthetic val$mediaList:Ljava/util/List;

.field final synthetic val$progressBarRef:Lcom/oneplus/base/Ref;

.field final synthetic val$progressRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/GalleryActivity;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$9;->this$0:Lcom/oneplus/gallery/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery/OPGallery$9;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    iput-object p3, p0, Lcom/oneplus/gallery/OPGallery$9;->val$mediaList:Ljava/util/List;

    iput-object p4, p0, Lcom/oneplus/gallery/OPGallery$9;->val$finalMediaType:Lcom/oneplus/gallery/media/MediaType;

    iput-object p5, p0, Lcom/oneplus/gallery/OPGallery$9;->val$progressBarRef:Lcom/oneplus/base/Ref;

    iput-object p6, p0, Lcom/oneplus/gallery/OPGallery$9;->val$progressRef:Lcom/oneplus/base/Ref;

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 760
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGallery$9;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 761
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/oneplus/gallery/OPGallery$9;->val$galleryActivity:Lcom/oneplus/gallery/GalleryActivity;

    sget-object v5, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 762
    .local v2, "isDarkMode":Z
    new-instance v1, Landroid/app/Dialog;

    if-eqz v2, :cond_0

    const v4, 0x7f0a000c

    :goto_0
    invoke-direct {v1, v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 764
    .local v1, "dialog":Landroid/app/Dialog;
    iget-object v4, p0, Lcom/oneplus/gallery/OPGallery$9;->val$mediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 766
    sget-object v4, Lcom/oneplus/gallery/OPGallery$16;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$9;->val$finalMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v5}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 775
    iget-object v4, p0, Lcom/oneplus/gallery/OPGallery$9;->this$0:Lcom/oneplus/gallery/OPGallery;

    iget-object v4, v4, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "deleteMedia() - Unknown media type"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/4 v1, 0x0

    .line 811
    .end local v1    # "dialog":Landroid/app/Dialog;
    :goto_1
    return-object v1

    .line 762
    :cond_0
    const v4, 0x7f0a000a

    goto :goto_0

    .line 769
    .restart local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    const v4, 0x7f090026

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 794
    .local v3, "title":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 797
    const v4, 0x7f03000a

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 798
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$9;->val$progressBarRef:Lcom/oneplus/base/Ref;

    const v4, 0x102000d

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    invoke-interface {v5, v4}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 799
    iget-object v4, p0, Lcom/oneplus/gallery/OPGallery$9;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$9;->val$progressRef:Lcom/oneplus/base/Ref;

    invoke-interface {v5}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$9;->val$progressBarRef:Lcom/oneplus/base/Ref;

    invoke-interface {v5}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 802
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 803
    new-instance v4, Lcom/oneplus/gallery/OPGallery$9$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/OPGallery$9$1;-><init>(Lcom/oneplus/gallery/OPGallery$9;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_1

    .line 772
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f090028

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 773
    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_2

    .line 781
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/oneplus/gallery/OPGallery$16;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$9;->val$finalMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v5}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 790
    const v4, 0x7f090023

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery$9;->val$mediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_2

    .line 784
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_2
    const v4, 0x7f090027

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery$9;->val$mediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 785
    .restart local v3    # "title":Ljava/lang/String;
    goto/16 :goto_2

    .line 787
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_3
    const v4, 0x7f090029

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery$9;->val$mediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 788
    .restart local v3    # "title":Ljava/lang/String;
    goto/16 :goto_2

    .line 766
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 781
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
